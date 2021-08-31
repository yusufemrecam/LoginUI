import 'package:flutter/material.dart';
import 'package:flutterlogin/widget/email.dart';
import 'package:flutterlogin/widget/login_buton.dart';
import 'package:flutterlogin/widget/password.dart';
import 'package:flutterlogin/widget/register_buton.dart';
import 'package:flutterlogin/widget/user_name.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
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
                  vertical: 80,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Kayıt Ol",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30,),
                    UserNameWidget(),
                    SizedBox(height: 10,),
                    EmailWidget(),
                    SizedBox(height: 20,),
                    PasswordWidget(),
                    SizedBox(height: 5,),
                    ForgotPassword(),
                    SizedBox(height: 10,),
                    RegisterButtonWidget(),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
