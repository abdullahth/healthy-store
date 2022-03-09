import 'package:flutter/material.dart';

class Themes {
	static final Color _primary  = Color(0xFF558C03);
	static ThemeData get lightTheme => ThemeData(
		colorScheme: ColorScheme(
			primary: _primary,
			primaryVariant: Color(0xFF),
			secondary: Color(0xFF),
			secondaryVariant: Color(0xFF),
			surface: Color(0xFF),
			error: Color(0xFF),
			background: Color(0xFF),
			onPrimary: Color(0xFF),
			onSecondary: Color(0xFF),
			onSurface: Color(0xFF),
			onBackground: Color(0xFF),
			onError: Color(0xFF),
			brightness: Brightness.light,
		),
	);



	static ThemeData get darkTheme => ThemeData(
		colorScheme: ColorScheme(
			primaryVariant: _primary,
			primary: Color(0xFF558C03),
			secondary: Color(0xFF),
			secondaryVariant: Color(0xFF),
			surface: Color(0xFF),
			error: Color(0xFF),
			background: Color(0xFF),
			onPrimary: Color(0xFF),
			onSecondary: Color(0xFF),
			onSurface: Color(0xFF),
			onBackground: Color(0xFF),
			onError: Color(0xFF),
			brightness: Brightness.light,
		),

	);


}
