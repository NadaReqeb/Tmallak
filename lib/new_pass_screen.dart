import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tmallak/router_helper.dart';
import 'package:tmallak/verification_screen.dart';

class NewPasswordScreen extends StatefulWidget {
  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'إعادة تعيين كلمة المرور',
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
                .routingToSpecificWidget(VerificationScreen());
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'قم بإنشاء كلمة مرور جديدة لتسجيل الدخول ',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'كلمة المرور الجديدة',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'ادخل كلمة المرور الجديدة',
                  ),
                  keyboardType: TextInputType.phone,
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'تأكيد كلمة المرور الجديدة',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'ادخل كلمة المرور الجديدة',
                  ),
                  keyboardType: TextInputType.phone,
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 1, 112, 202)),
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  child: Text(
                    'إعادة تعيين كلمة المرور',
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
            ],
          )
        ],
      ),
    ));
  }
}
