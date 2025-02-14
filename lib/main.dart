import 'package:aplikasi_konsultasi/general_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_konsultasi/main_app.dart';

void main() {
  Bloc.observer = GeneralObserver();
  runApp(const MainApp());
}
