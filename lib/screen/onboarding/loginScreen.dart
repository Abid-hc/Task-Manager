import 'package:flutter/material.dart';

import '../../style/style.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get Strat With",style: Head1Text(colorDarkBlue),),
                SizedBox(height: 1,),
                Text("Learn With rabil hasan",style: Head6Text(colorLightGray),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
