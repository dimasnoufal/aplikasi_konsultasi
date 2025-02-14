import 'package:flutter/material.dart';
import 'package:aplikasi_konsultasi/routes.dart';
import 'package:aplikasi_konsultasi/bloc/export.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(),
        ),
      ],
      child: MainAppView(),
    );
  }
}

class MainAppView extends StatelessWidget {
  MainAppView({super.key});

  final Routes router = Routes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: router.onRoute,
    );
  }
}
