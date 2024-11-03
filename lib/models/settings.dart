class Settings {
  bool useSound;
  bool useVibrate;
  int limit;

  Settings({
    this.useSound = true,
    this.useVibrate = false,
    this.limit = 33,
  }) {
    _enforceAtLeastOneEnabled();
  }

  // Enforce that at least one of `useSound` or `useVibrate` is always true
  void _enforceAtLeastOneEnabled() {
    if (!useSound && !useVibrate) {
      useSound = true; // Default to sound if both are off
    }
  }

  // Toggle sound and check rule
  void toggleSound() {
    useSound = !useSound;
    _enforceAtLeastOneEnabled();
  }

  // Toggle vibrate and check rule
  void toggleVibrate() {
    useVibrate = !useVibrate;
    _enforceAtLeastOneEnabled();
  }
}
