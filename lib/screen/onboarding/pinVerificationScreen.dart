import 'package:flutter/material.dart';

import '../../style/style.dart';

class pinVerificationScreen extends StatefulWidget {
  const pinVerificationScreen({Key? key}) : super(key: key);

  @override
  State<pinVerificationScreen> createState() => _pinVerificationScreenState();
}

class _pinVerificationScreenState extends State<pinVerificationScreen> {
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
                Text("Pin Verification",style: Head1Text(colorDarkBlue),),
                SizedBox(height: 1,),
                Text("A 6 digit verification pin will send to your email address",style: Head6Text(colorLightGray),),
                SizedBox(height: 20,),
                Container(
                  child: ElevatedButton(
                    style:AppButtonStyle(),
                    child:  SuccessButtonChild('Login'),
                    onPressed: () {},
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
