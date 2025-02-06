import 'package:flutter/material.dart';
import 'package:loginandsignupage/components/button.dart';
import 'package:loginandsignupage/components/profile_thing.dart';
import 'package:loginandsignupage/components/super_text.dart';
import 'package:loginandsignupage/components/text_field.dart';
import 'package:loginandsignupage/constants/imagess.dart';
import 'package:loginandsignupage/screens/signup_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  ImageSystem.background,
                ),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFieldCustom(
                  textgetter: phonenumbercontroller,
                  isPassword: false,
                  color: Colors.blue,
                  text: 'رقم الهاتف'),
              SizedBox(
                height: 15,
              ),
              TextFieldCustom(
                  textgetter: passwordcontroller,
                  isPassword: true,
                  color: Colors.blue,
                  text: 'كلمة المرور'),
              SizedBox(
                height: 30,
              ),
              Button(text: 'تسجيل الدخول', color: Colors.blue, ontap: () {}),
              SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SuperTextCustom(text: 'انشاء حساب', ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                }),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'ليس لدس حساب',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
