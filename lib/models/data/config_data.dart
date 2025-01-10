part of '../models.dart';

class ConfigData {
  // App configuration
  final String appName;
  final bool useSound;
  final bool useVibration;
  final bool useNotification;
  final bool useRTLFormat;
  final int checkpoint;

  // Colors configuration
  final Color backgroundPrimaryColor;
  final Color backgroundSecondaryColor;
  final Color backgroundTeritaryColor;
  final Color textPrimaryColor;
  final Color textSecondaryColor;
  final Color textTeritaryColor;

  ConfigData(
      {required this.appName,
      required this.useNotification,
      required this.useRTLFormat,
      required this.useSound,
      required this.useVibration,
      required this.checkpoint,
      required this.backgroundPrimaryColor,
      required this.backgroundSecondaryColor,
      required this.backgroundTeritaryColor,
      required this.textPrimaryColor,
      required this.textSecondaryColor,
      required this.textTeritaryColor});
}
