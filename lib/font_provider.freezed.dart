// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'font_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FontList {
  String get name => throw _privateConstructorUsedError;
  List<String> get fonts => throw _privateConstructorUsedError;
  List<int> get likedFonts => throw _privateConstructorUsedError;
  int get currentFont => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FontListCopyWith<FontList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FontListCopyWith<$Res> {
  factory $FontListCopyWith(FontList value, $Res Function(FontList) then) =
      _$FontListCopyWithImpl<$Res, FontList>;
  @useResult
  $Res call(
      {String name, List<String> fonts, List<int> likedFonts, int currentFont});
}

/// @nodoc
class _$FontListCopyWithImpl<$Res, $Val extends FontList>
    implements $FontListCopyWith<$Res> {
  _$FontListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fonts = null,
    Object? likedFonts = null,
    Object? currentFont = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fonts: null == fonts
          ? _value.fonts
          : fonts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likedFonts: null == likedFonts
          ? _value.likedFonts
          : likedFonts // ignore: cast_nullable_to_non_nullable
              as List<int>,
      currentFont: null == currentFont
          ? _value.currentFont
          : currentFont // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FontListCopyWith<$Res> implements $FontListCopyWith<$Res> {
  factory _$$_FontListCopyWith(
          _$_FontList value, $Res Function(_$_FontList) then) =
      __$$_FontListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, List<String> fonts, List<int> likedFonts, int currentFont});
}

/// @nodoc
class __$$_FontListCopyWithImpl<$Res>
    extends _$FontListCopyWithImpl<$Res, _$_FontList>
    implements _$$_FontListCopyWith<$Res> {
  __$$_FontListCopyWithImpl(
      _$_FontList _value, $Res Function(_$_FontList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fonts = null,
    Object? likedFonts = null,
    Object? currentFont = null,
  }) {
    return _then(_$_FontList(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fonts: null == fonts
          ? _value._fonts
          : fonts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likedFonts: null == likedFonts
          ? _value._likedFonts
          : likedFonts // ignore: cast_nullable_to_non_nullable
              as List<int>,
      currentFont: null == currentFont
          ? _value.currentFont
          : currentFont // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FontList implements _FontList {
  _$_FontList(
      {this.name = "Fontlist",
      final List<String> fonts = const [],
      final List<int> likedFonts = const [],
      this.currentFont = 0})
      : _fonts = fonts,
        _likedFonts = likedFonts;

  @override
  @JsonKey()
  final String name;
  final List<String> _fonts;
  @override
  @JsonKey()
  List<String> get fonts {
    if (_fonts is EqualUnmodifiableListView) return _fonts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fonts);
  }

  final List<int> _likedFonts;
  @override
  @JsonKey()
  List<int> get likedFonts {
    if (_likedFonts is EqualUnmodifiableListView) return _likedFonts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedFonts);
  }

  @override
  @JsonKey()
  final int currentFont;

  @override
  String toString() {
    return 'FontList(name: $name, fonts: $fonts, likedFonts: $likedFonts, currentFont: $currentFont)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontList &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._fonts, _fonts) &&
            const DeepCollectionEquality()
                .equals(other._likedFonts, _likedFonts) &&
            (identical(other.currentFont, currentFont) ||
                other.currentFont == currentFont));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_fonts),
      const DeepCollectionEquality().hash(_likedFonts),
      currentFont);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FontListCopyWith<_$_FontList> get copyWith =>
      __$$_FontListCopyWithImpl<_$_FontList>(this, _$identity);
}

abstract class _FontList implements FontList {
  factory _FontList(
      {final String name,
      final List<String> fonts,
      final List<int> likedFonts,
      final int currentFont}) = _$_FontList;

  @override
  String get name;
  @override
  List<String> get fonts;
  @override
  List<int> get likedFonts;
  @override
  int get currentFont;
  @override
  @JsonKey(ignore: true)
  _$$_FontListCopyWith<_$_FontList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FontStateState {
  int get currentFontList => throw _privateConstructorUsedError;
  List<FontList> get fontLists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FontStateStateCopyWith<FontStateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FontStateStateCopyWith<$Res> {
  factory $FontStateStateCopyWith(
          FontStateState value, $Res Function(FontStateState) then) =
      _$FontStateStateCopyWithImpl<$Res, FontStateState>;
  @useResult
  $Res call({int currentFontList, List<FontList> fontLists});
}

/// @nodoc
class _$FontStateStateCopyWithImpl<$Res, $Val extends FontStateState>
    implements $FontStateStateCopyWith<$Res> {
  _$FontStateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFontList = null,
    Object? fontLists = null,
  }) {
    return _then(_value.copyWith(
      currentFontList: null == currentFontList
          ? _value.currentFontList
          : currentFontList // ignore: cast_nullable_to_non_nullable
              as int,
      fontLists: null == fontLists
          ? _value.fontLists
          : fontLists // ignore: cast_nullable_to_non_nullable
              as List<FontList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FontStateStateCopyWith<$Res>
    implements $FontStateStateCopyWith<$Res> {
  factory _$$_FontStateStateCopyWith(
          _$_FontStateState value, $Res Function(_$_FontStateState) then) =
      __$$_FontStateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentFontList, List<FontList> fontLists});
}

/// @nodoc
class __$$_FontStateStateCopyWithImpl<$Res>
    extends _$FontStateStateCopyWithImpl<$Res, _$_FontStateState>
    implements _$$_FontStateStateCopyWith<$Res> {
  __$$_FontStateStateCopyWithImpl(
      _$_FontStateState _value, $Res Function(_$_FontStateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFontList = null,
    Object? fontLists = null,
  }) {
    return _then(_$_FontStateState(
      currentFontList: null == currentFontList
          ? _value.currentFontList
          : currentFontList // ignore: cast_nullable_to_non_nullable
              as int,
      fontLists: null == fontLists
          ? _value._fontLists
          : fontLists // ignore: cast_nullable_to_non_nullable
              as List<FontList>,
    ));
  }
}

/// @nodoc

class _$_FontStateState implements _FontStateState {
  _$_FontStateState(
      {this.currentFontList = 0, final List<FontList> fontLists = const []})
      : _fontLists = fontLists;

  @override
  @JsonKey()
  final int currentFontList;
  final List<FontList> _fontLists;
  @override
  @JsonKey()
  List<FontList> get fontLists {
    if (_fontLists is EqualUnmodifiableListView) return _fontLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fontLists);
  }

  @override
  String toString() {
    return 'FontStateState(currentFontList: $currentFontList, fontLists: $fontLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontStateState &&
            (identical(other.currentFontList, currentFontList) ||
                other.currentFontList == currentFontList) &&
            const DeepCollectionEquality()
                .equals(other._fontLists, _fontLists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentFontList,
      const DeepCollectionEquality().hash(_fontLists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FontStateStateCopyWith<_$_FontStateState> get copyWith =>
      __$$_FontStateStateCopyWithImpl<_$_FontStateState>(this, _$identity);
}

abstract class _FontStateState implements FontStateState {
  factory _FontStateState(
      {final int currentFontList,
      final List<FontList> fontLists}) = _$_FontStateState;

  @override
  int get currentFontList;
  @override
  List<FontList> get fontLists;
  @override
  @JsonKey(ignore: true)
  _$$_FontStateStateCopyWith<_$_FontStateState> get copyWith =>
      throw _privateConstructorUsedError;
}
