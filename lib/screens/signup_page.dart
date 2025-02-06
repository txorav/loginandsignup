import 'package:flutter/material.dart';
import 'package:loginandsignupage/components/button.dart';
import 'package:loginandsignupage/components/profile_thing.dart';
import 'package:loginandsignupage/components/super_text.dart';
import 'package:loginandsignupage/components/text_field.dart';
import 'package:loginandsignupage/constants/colors.dart';
import 'package:loginandsignupage/constants/imagess.dart';
import 'package:loginandsignupage/screens/signin_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String profileimage = 'assets/pfp.jpeg';

  @override
  Widget build(BuildContext context) {
    TextEditingController idnumbercontroller = TextEditingController();
    TextEditingController firstnamecontroller = TextEditingController();
    TextEditingController familynamecontroller = TextEditingController();
    TextEditingController phonenumbercontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController passwordconfirmationcontroller =
        TextEditingController();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageSystem.background), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: ProfileThing(image: profileimage),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFieldCustom(
                      textgetter: idnumbercontroller,
                      isPassword: false,
                      color: colorSystem.PrimaryColor,
                      text: 'رقم بطاقة التعريف'),
                  SizedBox(
                    height: 15,
                  ),
                  TextFieldCustom(
                      textgetter: firstnamecontroller,
                      isPassword: false,
                      color: colorSystem.PrimaryColor,
                      text: 'الاسم الاول'),
                  SizedBox(
                    height: 15,
                  ),
                  TextFieldCustom(
                      textgetter: familynamecontroller,
                      isPassword: false,
                      color: colorSystem.PrimaryColor,
                      text: 'الاسم العائلي'),
                  SizedBox(
                    height: 15,
                  ),
                  TextFieldCustom(
                      textgetter: phonenumbercontroller,
                      isPassword: false,
                      color: colorSystem.PrimaryColor,
                      text: 'رقم الهاتف'),
                  SizedBox(
                    height: 15,
                  ),
                  TextFieldCustom(
                      textgetter: passwordcontroller,
                      isPassword: true,
                      color: colorSystem.PrimaryColor,
                      text: 'كلمة المرور'),
                  SizedBox(
                    height: 15,
                  ),
                  TextFieldCustom(
                      textgetter: passwordconfirmationcontroller,
                      isPassword: true,
                      color: colorSystem.PrimaryColor,
                      text: 'تأكيد كلمة المرور'),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                      text: 'انشاء حساب',
                      color: colorSystem.PrimaryColor,
                      ontap: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SuperTextCustom(text: 'لدي حساب', ontap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SigninPage()));
                      }),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'تسجيل الدخول',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
