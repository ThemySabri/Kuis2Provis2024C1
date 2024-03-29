import 'package:flutter/material.dart';
import '../presentation/soal_1_screen/soal_1_screen.dart';

class AppRoutes {
  static const String soal1Screen = '/soal_1_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes =>
      {soal1Screen: Soal1Screen.builder, initialRoute: Soal1Screen.builder};
}
