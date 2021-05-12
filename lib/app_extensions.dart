import 'package:flutter_web_dashboard/main.dart';

extension RoutesExtensions on Routes {
  String get path {
    return "/${this.path}";
  }
}
