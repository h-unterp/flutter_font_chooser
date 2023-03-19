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

@freezed
class FontList with _$FontList {
  factory FontList(
      {@Default("Fontlist") String name,
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
}

@riverpod
class CurrentFontState extends _$CurrentFontState {
  @override
  FontList build() {
    FontStateState state = ref.watch(fontStateProvider);
    return state.fontLists[state.currentFontList];
  }

  TextTheme getCurrentFont() {
    return GoogleFonts.getTextTheme(state.fonts[state.currentFont]);
  }

  String getCurrentFontName() {
    return state.fonts[state.currentFont];
  }

  isCurrentFontLiked() {
    return state.likedFonts.contains(state.currentFont);
  }
}
