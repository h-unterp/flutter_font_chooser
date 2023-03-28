import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'font_provider.freezed.dart';
part 'font_provider.g.dart';

final currentFontProvider = Provider.autoDispose<TextTheme>((ref) {
  FontStateState state = ref.watch(fontStateProvider);
  FontList currentList = state.fontLists[state.currentFontList];
  return GoogleFonts.getTextTheme(currentList.fonts[currentList.currentFont]);
});

final currentFontListProvider = Provider.autoDispose<FontList>((ref) {
  FontStateState state = ref.watch(fontStateProvider);
  return state.fontLists[state.currentFontList];
});

@freezed
class FontList with _$FontList {
  factory FontList(
      {@Default("All fonts (initial list)") String name,
      @Default([]) List<String> fonts,
      @Default([]) List<int> likedFonts,
      @Default(0) int currentFont}) = _FontList;
}

@freezed
class FontStateState with _$FontStateState {
  factory FontStateState({
    @Default(0) int currentFontList,
    @Default([]) List<FontList> fontLists,
  }) = _FontStateState;
}

@riverpod
class FontState extends _$FontState {
  @override
  FontStateState build() {
    return FontStateState(
        fontLists: [FontList(fonts: GoogleFonts.asMap().keys.toList())]);
  }

  saveCurrentList(String newListName) {
    FontList currentList = state.fontLists[state.currentFontList];
    var newFontLists = List<FontList>.from(state.fontLists);
    List<String> likedFontList = [];
    for (int i = 0; i < currentList.fonts.length; i++) {
      if (currentList.likedFonts.contains(i)) {
        likedFontList.add(currentList.fonts[i]);
      }
    }
    FontList newFontList = FontList(
        name: newListName,
        fonts: likedFontList,
        likedFonts: [],
        currentFont: 0);

    newFontLists.add(newFontList);
    state = state.copyWith(
      fontLists: newFontLists,
    );
  }

  int fontListNameToIndex(String name) {
    for (int i = 0; i < state.fontLists.length; i++) {
      if (state.fontLists[i].name == name) {
        return i;
      }
    }
    return 0;
  }

  switchList(String listName) {
    state = state.copyWith(
      currentFontList: fontListNameToIndex(listName),
    );
  }

  updateCurrentFont(int index) {
    FontList currentList = state.fontLists[state.currentFontList];
    var newList = List<FontList>.from(state.fontLists);
    newList[state.currentFontList] = currentList.copyWith(currentFont: index);
    state = state.copyWith(
      fontLists: newList,
    );
  }

  likeCurrentFont(int index) {
    FontList currentList = state.fontLists[state.currentFontList];
    var newList = List<FontList>.from(state.fontLists);
    newList[state.currentFontList] =
        currentList.copyWith(likedFonts: [...currentList.likedFonts, index]);
    state = state.copyWith(
      fontLists: newList,
    );
  }

  unLikeCurrentFont(int index) {
    FontList currentList = state.fontLists[state.currentFontList];
    var newList = List<FontList>.from(state.fontLists);
    var newLikes = List<int>.from(currentList.likedFonts);

    //we need to remove where value == index, not removeAt(index)
    newList[state.currentFontList] = currentList.copyWith(
        likedFonts: [...newLikes..removeWhere((value) => value == index)]);
    state = state.copyWith(
      fontLists: newList,
    );
  }
}

@riverpod
CurrentFontState currentFontState(CurrentFontStateRef ref) =>
    CurrentFontState(ref.watch(currentFontListProvider));

class CurrentFontState {
  CurrentFontState(this.state);
  FontList state;

  TextTheme getCurrentFont() {
    return GoogleFonts.getTextTheme(state.fonts[state.currentFont]);
  }

  String getCurrentListName() {
    return state.name;
  }

  String getCurrentFontName() {
    return state.fonts[state.currentFont];
  }

  bool hasNext() {
    return state.currentFont < state.fonts.length - 1;
  }

  isCurrentFontLiked() {
    return state.likedFonts.contains(state.currentFont);
  }
}
