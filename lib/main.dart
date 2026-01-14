// lib/main.dart
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'ui/splash_screen.dart';
import 'ui/home_screen.dart';
import 'ui/qr_generator_screen.dart';
import 'ui/qr_scanner_screen.dart';
import 'ui/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,

      debugShowCheckedModeBanner: false,
      title: 'QRGenius',
      
      theme: ThemeData(
        fontFamily: 'Manrope',
        colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          onPrimary: AppColors.textInverse,
          primaryContainer: AppColors.primaryLight.withOpacity(0.1),
          secondary: AppColors.success,
          background: AppColors.background,
          surface: AppColors.surface,
          onSurface: AppColors.textPrimary,
          surfaceVariant: AppColors.surfaceVariant,
          outline: AppColors.outline,
          outlineVariant: AppColors.outlineVariant,
        ),
        useMaterial3: true,
        
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.surface,
          foregroundColor: AppColors.textPrimary,
          elevation: 0,
          centerTitle: true,
          scrolledUnderElevation: 1,
          surfaceTintColor: Colors.transparent,
          iconTheme: const IconThemeData(color: AppColors.textPrimary),
          titleTextStyle: AppTextStyles.titleLarge(context).copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        
        scaffoldBackgroundColor: AppColors.background,
        
        cardTheme: CardThemeData(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: AppBorderRadius.large,
            side: BorderSide(color: AppColors.outlineVariant),
          ),
          surfaceTintColor: Colors.transparent,
        ),
        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.textInverse,
            elevation: 0,
            textStyle: AppTextStyles.labelLarge(context),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: AppBorderRadius.medium,
            ),
          ),
        ),
        
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.textPrimary,
            side: BorderSide(color: AppColors.outline),
            textStyle: AppTextStyles.labelLarge(context),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: AppBorderRadius.medium,
            ),
          ),
        ),
        
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.surfaceVariant,
          border: OutlineInputBorder(
            borderRadius: AppBorderRadius.medium,
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: AppBorderRadius.medium,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: AppBorderRadius.medium,
            borderSide: BorderSide(color: AppColors.primary, width: 1.5),
          ),
          contentPadding: const EdgeInsets.all(16),
          hintStyle: const TextStyle(color: AppColors.textTertiary),
        ),
        
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textInverse,
          shape: RoundedRectangleBorder(
            borderRadius: AppBorderRadius.large,
          ),
        ),
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/create': (context) => const QrGeneratorScreen(),
        '/scan': (context) => const QrScannerScreen(),
      },
    );
  }
}