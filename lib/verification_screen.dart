import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tmallak/login_screen.dart';
import 'package:tmallak/new_pass_screen.dart';
import 'package:tmallak/password_recovery.dart';
import 'package:tmallak/router_helper.dart';

class VerificationScreen extends StatefulWidget {
  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'التحقق من الرمز',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            RouterHelper.routerHelper
                .routingToSpecificWidget(PasswordRecovery());
          },
        ),
      ),
      body: ListView(padding: EdgeInsets.all(20), children: [
        Text(
          'لقد أرسلنا لك رمزًا نصيًا للتحقق من عنوان بريدك الإلكتروني , أدخل الرمز ',
          textAlign: TextAlign.right,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
              width: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
              width: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
              width: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 70,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 1, 112, 202)),
          width: MediaQuery.of(context).size.width,
          child: FlatButton(
            child: Text(
              'التحقق من الرمز',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              RouterHelper.routerHelper
                  .routingToSpecificWidget(NewPasswordScreen());
            },
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.center,
            child: RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: 'إعادة إرسال الرمز',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      RouterHelper.routerHelper
                          .routingToSpecificWidget(PasswordRecovery());
                    }),
            ])),
          ),
        ),
      ]),
    ));
  }
}
