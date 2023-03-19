// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'font_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fontStateHash() => r'5dac5ada904ea3a2fe399230560431dff9595d7f';

/// See also [FontState].
@ProviderFor(FontState)
final fontStateProvider =
    AutoDisposeNotifierProvider<FontState, FontStateState>.internal(
  FontState.new,
  name: r'fontStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fontStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FontState = AutoDisposeNotifier<FontStateState>;
String _$currentFontStateHash() => r'efe05ddd63a87e23b502ac50d3b94047713b8952';

/// See also [CurrentFontState].
@ProviderFor(CurrentFontState)
final currentFontStateProvider =
    AutoDisposeNotifierProvider<CurrentFontState, FontList>.internal(
  CurrentFontState.new,
  name: r'currentFontStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentFontStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentFontState = AutoDisposeNotifier<FontList>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
