part of 'bascket_bloc.dart';

abstract class BascketEvent  {
  const BascketEvent();

}

/// {@template custom_bascket_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomBascketEvent extends BascketEvent {
  /// {@macro custom_bascket_event}
  const CustomBascketEvent();
}
