import 'package:aplikasi_konsultasi/bloc/export.dart';
import 'package:aplikasi_konsultasi/ui/pages/error/not_found_page.dart';
import 'package:aplikasi_konsultasi/ui/pages/login_page.dart';
import 'package:aplikasi_konsultasi/ui/pages/on_boarding_page.dart';
import 'package:aplikasi_konsultasi/ui/pages/splash_page.dart';
import 'package:aplikasi_konsultasi/ui/pages/user/home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
        );
      case '/on-boarding':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SliderBloc(),
            child: const OnBoardingPage(),
          ),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => HideBloc(),
              ),
            ],
            child: const LoginPage(),
          ),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}
