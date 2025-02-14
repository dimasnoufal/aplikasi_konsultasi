import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Not Found Page"),
            ],
          ),
        ),
      ),
    );
  }
}
