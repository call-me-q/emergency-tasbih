import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'settings_state.g.dart';

@JsonSerializable()
class SettingsState extends Equatable {
  const SettingsState({
    this.useSound = true,
    this.useVibration = true,
    this.leftToRight = true,
    this.checkpoint = 33,
  });

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);

  final bool useSound;
  final bool useVibration;
  final bool leftToRight;
  final int checkpoint;

  SettingsState copyWith({
    bool? useSound,
    bool? useVibration,
    bool? leftToRight,
    int? checkpoint,
  }) {
    return SettingsState(
      useSound: useSound ?? this.useSound,
      useVibration: useVibration ?? this.useVibration,
      leftToRight: leftToRight ?? this.leftToRight,
      checkpoint: checkpoint ?? this.checkpoint,
    );
  }

  Map<String, dynamic> toJson() => _$SettingsStateToJson(this);

  @override
  List<Object?> get props => [useSound, useVibration, leftToRight, checkpoint];
}
