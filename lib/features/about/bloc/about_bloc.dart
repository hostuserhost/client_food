import 'dart:async';

import 'package:bloc/bloc.dart';
part 'about_event.dart';
part 'about_state.dart';

class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc() : super(const AboutInitial()) {
    on<CustomAboutEvent>(_onCustomAboutEvent);
  }

  FutureOr<void> _onCustomAboutEvent(
    CustomAboutEvent event,
    Emitter<AboutState> emit,
  ) {
    // TODO: Add Logic
  }
}
