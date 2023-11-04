import 'package:flutter/material.dart';
import 'package:medicargo/shared/theme.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "E M P T Y",
              style: header1,
            ),
          )
        ],
      ),
    );
  }
}
