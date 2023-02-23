import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style/style.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),

        ],

      ),
    );
  }
}
