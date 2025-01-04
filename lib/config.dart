import 'package:emergency_tasbih/models/config_model.dart';
import 'package:flutter/widgets.dart';

final ConfigModel config = ConfigModel(
  appName: 'Emergency Tasbih',
  useNotification: true,
  useRTLFormat: false,
  useSound: true,
  useVibration: true,
  checkpoint: 33,
  backgroundPrimaryColor: Color(0xFF1A1A1A),
  backgroundSecondaryColor: Color(0xFF2D2D2D),
  backgroundTeritaryColor: Color(0xFF3F3F3F),
  textPrimaryColor: Color(0xFFD8D8D8),
  textSecondaryColor: Color(0xFFA8A8A8),
  textTeritaryColor: Color(0xFF787878),
);
