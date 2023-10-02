import 'dart:async';

import 'package:bloc/bloc.dart';
part 'bascket_event.dart';
part 'bascket_state.dart';

class BascketBloc extends Bloc<BascketEvent, BascketState> {
  BascketBloc() : super(const BascketInitial()) {
    on<CustomBascketEvent>(_onCustomBascketEvent);
  }

  FutureOr<void> _onCustomBascketEvent(
    CustomBascketEvent event,
    Emitter<BascketState> emit,
  ) {
    // TODO: Add Logic
  }
}
