part of 'bascket_bloc.dart';

/// {@template bascket_state}
/// BascketState description
/// {@endtemplate}
class BascketState {
  /// {@macro bascket_state}
  const BascketState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  /// Creates a copy of the current BascketState with property changes
  BascketState copyWith({
    String? customProperty,
  }) {
    return BascketState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template bascket_initial}
/// The initial state of BascketState
/// {@endtemplate}
class BascketInitial extends BascketState {
  /// {@macro bascket_initial}
  const BascketInitial() : super();
}
