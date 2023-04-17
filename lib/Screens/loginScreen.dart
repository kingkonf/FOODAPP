// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project2/Screens/HomeScreen.dart';
import 'package:flutter_project2/Screens/myprofile.dart';
import '../screens/signupScreen.dart';
import '../const/colors.dart';
import '../screens/forgotpwscreen.dart';
import '../utils/helper.dart';
import 'package:flutter_project2/Screens/IntroScreen.dart';
import 'package:flutter_project2/Screens/ini.dart';
import 'package:flutter_project2/utils/p.dart';
import 'package:flutter_project2/Screens/IntroScreen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),

            child: Column(
              children: [
                Image.asset(
                  Helper.getAssetName("vector1.png", "virtual")
                ),

                Spacer(),

                const TextField(
                  decoration: InputDecoration(
                  hintText: "enter your mail",
                ),
                ),
                Spacer(),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "enter your password",
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(IntroScreen.routeName);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.orange,
                      ),
                    ),
                    child: Text("Login"),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ForgetPwScreen.routeName);
                  },
                  child: Text("Forget your password?"),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(p.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Don't have an Account?"),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppColor.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}