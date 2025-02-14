import 'package:aplikasi_konsultasi/ui/pages/error/not_found_page.dart';
import 'package:aplikasi_konsultasi/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

class Routes {
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => SplashPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => NotFoundPage(),
        );
    }
  }
}
