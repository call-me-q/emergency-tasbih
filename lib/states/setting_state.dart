import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'setting_state.g.dart';

@JsonSerializable()
class SettingsState extends Equatable {
  const SettingsState({
    this.useSound = true,
    this.useVibration = true,
    this.leftToRight = true,
    this.limit = 33,
  });

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);

  final bool useSound;
  final bool useVibration;
  final bool leftToRight;
  final int limit;

  SettingsState copyWith({
    bool? useSound,
    bool? useVibration,
    bool? leftToRight,
    int? limit,
  }) {
    return SettingsState(
      useSound: useSound ?? this.useSound,
      useVibration: useVibration ?? this.useVibration,
      leftToRight: leftToRight ?? this.leftToRight,
      limit: limit ?? this.limit,
    );
  }

  Map<String, dynamic> toJson() => _$SettingsStateToJson(this);

  @override
  List<Object?> get props => [useSound, useVibration, leftToRight, limit];
}
