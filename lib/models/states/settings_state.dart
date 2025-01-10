part of '../models.dart';

@JsonSerializable()
class SettingsState extends Equatable {
  final bool useSound;

  final bool useVibration;

  final bool leftToRightFormat;
  final int checkpoint;
  const SettingsState({
    this.useSound = true,
    this.useVibration = true,
    this.leftToRightFormat = true,
    this.checkpoint = 33,
  });
  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);

  @override
  List<Object?> get props =>
      [useSound, useVibration, leftToRightFormat, checkpoint];

  SettingsState copyWith({
    bool? useSound,
    bool? useVibration,
    bool? leftToRightFormat,
    int? checkpoint,
  }) {
    return SettingsState(
      useSound: useSound ?? this.useSound,
      useVibration: useVibration ?? this.useVibration,
      leftToRightFormat: leftToRightFormat ?? this.leftToRightFormat,
      checkpoint: checkpoint ?? this.checkpoint,
    );
  }

  Map<String, dynamic> toJson() => _$SettingsStateToJson(this);
}
