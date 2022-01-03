import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primary = Color(0xFF1E2E41);
  static const Color background = Color(0xFFFFFFFF);

  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFF4F5E7B);

  static const Color red = Color(0xFFE8C183);
}

class AppTextStyles {
  static TextStyle buttonText = GoogleFonts.bangers(
    textStyle: const TextStyle(
      color: AppColors.textPrimary,
    ),
  );
}
