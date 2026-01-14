// lib/ui/theme/app_theme.dart
import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const Color primary = Color(0xFF553FB8); // Ungu modern
  static const Color primaryLight = Color(0xFF7A67C7);
  static const Color primaryDark = Color(0xFF3A2EC3);
  
  // Neutral Colors
  static const Color background = Color(0xFFFAFAFA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF5F5F5);
  static const Color outline = Color(0xFFE0E0E0);
  static const Color outlineVariant = Color(0xFFEEEEEE);
  
  // Text Colors
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF666666);
  static const Color textTertiary = Color(0xFF999999);
  static const Color textInverse = Color(0xFFFFFFFF);
  
  // Status Colors
  static const Color success = Color(0xFF10B981);
  static const Color error = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF59E0B);
  static const Color info = Color(0xFF3B82F6);
  
  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF553FB8), Color(0xFF7A67C7)],
  );
}

class AppTextStyles {
  // Display
  static TextStyle displayLarge(BuildContext context) {
    return Theme.of(context).textTheme.displayLarge!.copyWith(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
      letterSpacing: -0.5,
    );
  }
  
  // Headlines
  static TextStyle headlineLarge(BuildContext context) {
    return Theme.of(context).textTheme.headlineLarge!.copyWith(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
      letterSpacing: -0.25,
    );
  }
  
  static TextStyle headlineMedium(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }
  
  // Titles
  static TextStyle titleLarge(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }
  
  static TextStyle titleMedium(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }
  
  // Body
  static TextStyle bodyLarge(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }
  
  static TextStyle bodyMedium(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }
  
  // Labels
  static TextStyle labelLarge(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!.copyWith(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }
  
  static TextStyle labelMedium(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }
}

class AppShadows {
  static const BoxShadow small = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.05),
    blurRadius: 4,
    offset: Offset(0, 2),
  );
  
  static const BoxShadow medium = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.08),
    blurRadius: 12,
    offset: Offset(0, 4),
  );
  
  static const BoxShadow large = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.12),
    blurRadius: 24,
    offset: Offset(0, 8),
  );
}

class AppBorderRadius {
  static const BorderRadius none = BorderRadius.zero;
  static const BorderRadius small = BorderRadius.all(Radius.circular(8));
  static const BorderRadius medium = BorderRadius.all(Radius.circular(12));
  static const BorderRadius large = BorderRadius.all(Radius.circular(16));
  static const BorderRadius xlarge = BorderRadius.all(Radius.circular(24));
  static const BorderRadius full = BorderRadius.all(Radius.circular(999));
}

class AppSpacing {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double xxxl = 32;
  static const double xxxxl = 40;
}