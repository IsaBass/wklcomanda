import 'package:flutter/material.dart';

class AppColorsCONCIL {
  ///
  static final lightPrimary = Color(0xFF10AEBA);
  static final lightSecondary = Color(0xFF79C6AD);
  static final lightBackground = Color(0xFFF0F2F5);
  static final lightSurface = Color(0xFFFFFFFF);

  // fontes
  static final lightOnPrimary = Color(0xFFFFFFFF);
  static final lightOnPrimarySurface = Color(0xFFFFFFFF);
  static final lightOnSurface = Color(0xFF4A4A4A);
  static final lightOnSecondary = Color(0xFF4A4A4A);
  static final lightError = Color(0xFFF5222D);

  //
  static final success = Color(0xFF4CAA55);
  static final warning = Color(0xFFFAAD14);
  static final grey = Color(0xFF8E8E8E);

  static final gradientBackGround = LinearGradient(
    colors: [Color(0xFF10AEBA), Color(0xFF007FA1), Color(0xFF007FA1)],
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
  );
}
