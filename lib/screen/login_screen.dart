import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterlogin/widget/email.dart';
import 'package:flutterlogin/widget/login_buton.dart';
import 'package:flutterlogin/widget/password.dart';
import 'package:flutterlogin/widget/sing_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0x66a27bb1),
                      Color(0x99a27bb1),
                      Color(0xcca27bb1),
                      Color(0xffa27bb1),
                    ])),
                child:  SingleChildScrollView(
                  //physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                       Text(
                        "Giriş Yap",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50,),
                      EmailWidget(),
                      SizedBox(height: 20,),
                      PasswordWidget(),
                      SizedBox(height: 5,),
                      ForgotPassword(),
                      SizedBox(height: 10,),
                      LoginButton(),
                      SizedBox(height: 10,),
                      SingUp(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
