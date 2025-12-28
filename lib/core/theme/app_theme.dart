import 'package:flutter/material.dart';

class AppUiColors extends ThemeExtension<AppUiColors> {
  final Color? actionPositive;
  final Color? actionNegative;
  final Color? actionStandard;

  AppUiColors({
    required this.actionPositive,
    required this.actionNegative,
    required this.actionStandard,
  });

  @override
  ThemeExtension<AppUiColors> copyWith({
    Color? actionPositive,
    Color? actionNegative,
    Color? actionStandard,
  }) {
    return AppUiColors(
      actionPositive: actionPositive ?? this.actionPositive,
      actionNegative: actionNegative ?? this.actionNegative,
      actionStandard: actionStandard ?? this.actionStandard,
    );
  }

  @override
  ThemeExtension<AppUiColors> lerp(
    covariant ThemeExtension<AppUiColors>? other,
    double t,
  ) {
    if (other is! AppUiColors) return this;
    return AppUiColors(
      actionPositive: Color.lerp(actionPositive, other.actionPositive, t),
      actionNegative: Color.lerp(actionNegative, other.actionNegative, t),
      actionStandard: Color.lerp(actionStandard, other.actionStandard, t),
    );
  }
}

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    
    scaffoldBackgroundColor: const Color(0xFFF8FAFC),
    
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF0061A4),    // Cor dos botões
      surface: Color(0xFFF8FAFC),    // Cor da AppBar e superfícies
      onSurface: Color(0xFF0F172A),  // Cor de textos e ícones gerais
      onPrimary: Color(0xFFF8FAFC),  // Texto e Ícones dentro de botões primários
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFF8FAFC),
      foregroundColor: Color(0xFF0F172A), // Cor do texto e ícones na AppBar
      elevation: 0,
      centerTitle: true,
    ),

    iconTheme: const IconThemeData(
      color: Color(0xFF0F172A),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFF0F172A)),
      bodyMedium: TextStyle(color: Color(0xFF0F172A)),
      titleLarge: TextStyle(color: Color(0xFF0F172A)),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF0061A4),
        foregroundColor: const Color(0xFFF8FAFC), // Texto e ícone dentro do botão
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),

    extensions: [
      AppUiColors(
        actionPositive: const Color(0xFF10B981),
        actionNegative: const Color(0xFFEF4444),
        actionStandard: const Color(0xFF3B82F6),
      ),
    ],
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    scaffoldBackgroundColor: const Color(0xFF0F172A),

    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFD1E4FF),    // Cor dos botões no dark
      surface: Color(0xFF0F172A),    // Cor da AppBar e superfícies no dark
      onSurface: Color(0xFFF1F5F9),  // Cor de textos e ícones no dark
      onPrimary: Color(0xFF0F172A),  // Texto e ícones dentro de botões no dark
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0F172A),
      foregroundColor: Color(0xFFF1F5F9),
      elevation: 0,
      centerTitle: true,
    ),

    iconTheme: const IconThemeData(
      color: Color(0xFFF1F5F9),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFFF1F5F9)),
      bodyMedium: TextStyle(color: Color(0xFFF1F5F9)),
      titleLarge: TextStyle(color: Color(0xFFF1F5F9)),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFD1E4FF),
        foregroundColor: const Color(0xFF0F172A),
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),

    extensions: [
      AppUiColors(
        actionPositive: const Color(0xFF34D399),
        actionNegative: const Color(0xFFF87171),
        actionStandard: const Color(0xFF60A5FA),
      ),
    ],
  );
}

extension ThemeGetter on BuildContext {
  AppUiColors get uiColors => Theme.of(this).extension<AppUiColors>()!;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}