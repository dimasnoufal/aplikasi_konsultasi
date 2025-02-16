import 'package:aplikasi_konsultasi/shared/theme.dart';
import 'package:aplikasi_konsultasi/ui/widgets/custom_button.dart';
import 'package:aplikasi_konsultasi/ui/widgets/custom_input_hide.dart';
import 'package:aplikasi_konsultasi/ui/widgets/custom_input_no_hide.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Widget welcomingLogin() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultHorizontalMargin),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ilustration/ilustration_login.png'),
              ),
            ),
          ),
          SizedBox(height: defaultVerticalMargin),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Haloo!',
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Silahkan masukan email dan\nKata sandi yang sudah ada',
              style: darkGreyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget formLogin(context) {
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        CustomInputNoHide(
          hintText: 'Email',
          margin: EdgeInsets.symmetric(
            horizontal: defaultHorizontalMargin,
          ),
          onTextChanged: (value) {},
        ),
        SizedBox(
          height: defaultVerticalMargin,
        ),
        CustomInputHide(
          hintText: 'Password',
          margin: EdgeInsets.symmetric(
            horizontal: defaultHorizontalMargin,
          ),
          onTextChanged: (value) {},
        ),
        SizedBox(
          height: defaultVerticalMargin,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
              margin: EdgeInsets.only(right: defaultHorizontalMargin),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Lupa Kata Sandi?',
                  style: darkGreyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
              )),
        ),
        const SizedBox(
          height: 50,
        ),
        CustomButton(
          text: "Login",
          width: double.infinity,
          height: 40,
          horizontalMargin: defaultHorizontalMargin,
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/home');
          },
        )
      ],
    );
  }

  Widget footerLogin(context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Belum punya akun? ',
            style: lightGreyTextStyle.copyWith(
              fontSize: 14,
              fontWeight: light,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Silahkan Keruang BK',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                welcomingLogin(),
                formLogin(context),
                footerLogin(context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
