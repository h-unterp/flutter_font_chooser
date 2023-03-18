import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'font_provider.g.dart';
part 'font_provider.freezed.dart';

final fontProvider =
    StateProvider<TextTheme>((ref) => GoogleFonts.robotoTextTheme());

class FontList {
  FontList(
    String id,
    String description,
    bool completed,
  );
}

@freezed
class FontState with _$FontState {
  factory FontState({
    required TextTheme currentFont,
  }) = _FontState;
}

@riverpod
class FontStateProvider extends _$FontStateProvider {
  @override
  FontState build() {
    return FontState(
      currentFont: GoogleFonts.robotoTextTheme(),
    );
  }
}
