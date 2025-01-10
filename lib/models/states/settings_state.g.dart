// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) =>
    SettingsState(
      useSound: json['useSound'] as bool? ?? true,
      useVibration: json['useVibration'] as bool? ?? true,
      leftToRightFormat: json['leftToRightFormat'] as bool? ?? true,
      checkpoint: (json['checkpoint'] as num?)?.toInt() ?? 33,
    );

Map<String, dynamic> _$SettingsStateToJson(SettingsState instance) =>
    <String, dynamic>{
      'useSound': instance.useSound,
      'useVibration': instance.useVibration,
      'leftToRightFormat': instance.leftToRightFormat,
      'checkpoint': instance.checkpoint,
    };
