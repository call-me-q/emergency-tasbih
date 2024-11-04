part of '../index.dart';

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
