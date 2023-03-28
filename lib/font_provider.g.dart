// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'font_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentFontStateHash() => r'68f70d6e22616c03a40ae80f8fda8261231b90d4';

/// See also [currentFontState].
@ProviderFor(currentFontState)
final currentFontStateProvider = AutoDisposeProvider<CurrentFontState>.internal(
  currentFontState,
  name: r'currentFontStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentFontStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentFontStateRef = AutoDisposeProviderRef<CurrentFontState>;
String _$fontStateHash() => r'8776addf163ba533617162afdc5498d161512105';

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
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
