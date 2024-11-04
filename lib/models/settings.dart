import 'package:equatable/equatable.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => [];
}

class UpdateSettingsEvent extends SettingsEvent {
  final bool useSound;
  final bool useVibrate;
  final bool leftToRight;
  final int limit;

  const UpdateSettingsEvent({
    required this.useSound,
    required this.useVibrate,
    required this.leftToRight,
    required this.limit,
  });

  @override
  List<Object> get props => [useSound, useVibrate, leftToRight, limit];
}

class LoadSettingsEvent extends SettingsEvent {}

abstract class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object> get props => [];
}

class SettingsInitial extends SettingsState {}

class SettingsLoaded extends SettingsState {
  final bool useSound;
  final bool useVibrate;
  final bool leftToRight;
  final int limit;

  const SettingsLoaded({
    required this.useSound,
    required this.useVibrate,
    required this.leftToRight,
    required this.limit,
  });

  @override
  List<Object> get props => [useSound, useVibrate, leftToRight, limit];
}

class SettingsUpdated extends SettingsState {
  final bool useSound;
  final bool useVibrate;
  final bool leftToRight;
  final int limit;

  const SettingsUpdated({
    required this.useSound,
    required this.useVibrate,
    required this.leftToRight,
    required this.limit,
  });

  @override
  List<Object> get props => [useSound, useVibrate, limit];
}
