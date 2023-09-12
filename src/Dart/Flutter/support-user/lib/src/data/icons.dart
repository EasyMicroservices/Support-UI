// Place fonts/icomoon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: icomoon
//      fonts:
//       - asset: fonts/icomoon.ttf
import 'package:flutter/widgets.dart';

class AppIcons {
  AppIcons._();

  static const String _fontFamily = 'icomoon';
  static const String _appName = 'support_user';

  static const IconData close = IconData(0xe900, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData dot = IconData(0xe901, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData dropdown = IconData(0xe902, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData dropUp = IconData(0xe903, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData list = IconData(0xe904, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData plus = IconData(0xe905, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData prevLeft = IconData(0xe906, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData prevRight = IconData(0xe907, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData search = IconData(0xe908, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData sortDown = IconData(0xe909, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData sortUp = IconData(0xe90a, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData ticket = IconData(0xe90b, fontFamily: _fontFamily, fontPackage: _appName);
  static const IconData tik = IconData(0xe90c, fontFamily: _fontFamily, fontPackage: _appName);
}