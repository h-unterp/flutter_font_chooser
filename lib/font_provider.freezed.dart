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
mixin _$FontState {
  TextTheme get currentFont => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FontStateCopyWith<FontState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FontStateCopyWith<$Res> {
  factory $FontStateCopyWith(FontState value, $Res Function(FontState) then) =
      _$FontStateCopyWithImpl<$Res, FontState>;
  @useResult
  $Res call({TextTheme currentFont});
}

/// @nodoc
class _$FontStateCopyWithImpl<$Res, $Val extends FontState>
    implements $FontStateCopyWith<$Res> {
  _$FontStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFont = null,
  }) {
    return _then(_value.copyWith(
      currentFont: null == currentFont
          ? _value.currentFont
          : currentFont // ignore: cast_nullable_to_non_nullable
              as TextTheme,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FontStateCopyWith<$Res> implements $FontStateCopyWith<$Res> {
  factory _$$_FontStateCopyWith(
          _$_FontState value, $Res Function(_$_FontState) then) =
      __$$_FontStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextTheme currentFont});
}

/// @nodoc
class __$$_FontStateCopyWithImpl<$Res>
    extends _$FontStateCopyWithImpl<$Res, _$_FontState>
    implements _$$_FontStateCopyWith<$Res> {
  __$$_FontStateCopyWithImpl(
      _$_FontState _value, $Res Function(_$_FontState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFont = null,
  }) {
    return _then(_$_FontState(
      currentFont: null == currentFont
          ? _value.currentFont
          : currentFont // ignore: cast_nullable_to_non_nullable
              as TextTheme,
    ));
  }
}

/// @nodoc

class _$_FontState implements _FontState {
  _$_FontState({required this.currentFont});

  @override
  final TextTheme currentFont;

  @override
  String toString() {
    return 'FontState(currentFont: $currentFont)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontState &&
            (identical(other.currentFont, currentFont) ||
                other.currentFont == currentFont));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentFont);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FontStateCopyWith<_$_FontState> get copyWith =>
      __$$_FontStateCopyWithImpl<_$_FontState>(this, _$identity);
}

abstract class _FontState implements FontState {
  factory _FontState({required final TextTheme currentFont}) = _$_FontState;

  @override
  TextTheme get currentFont;
  @override
  @JsonKey(ignore: true)
  _$$_FontStateCopyWith<_$_FontState> get copyWith =>
      throw _privateConstructorUsedError;
}
