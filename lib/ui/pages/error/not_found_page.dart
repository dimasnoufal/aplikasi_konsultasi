import 'package:aplikasi_konsultasi/shared/theme.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 300,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo/not_found_logo.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: defaultVerticalMargin),
              Text(
                "Not Found Page",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: bold,
                  color: kDarkGreyColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
