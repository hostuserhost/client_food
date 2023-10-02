part of 'about_bloc.dart';

abstract class AboutEvent  {
  const AboutEvent();

}

/// {@template custom_about_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomAboutEvent extends AboutEvent {
  /// {@macro custom_about_event}
  const CustomAboutEvent();
}
