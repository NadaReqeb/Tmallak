import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmallak/buildDrawer.dart';
import 'package:tmallak/custom_radio_buttom.dart';

class Advertisement extends StatefulWidget {
  const Advertisement({Key? key}) : super(key: key);

  @override
  State<Advertisement> createState() => _AdvertisementState();
}

class _AdvertisementState extends State<Advertisement> {
  String?  value='شقة';
  List<String> estates = [
    'بيت',
    'شقة',
    'أرض',
    'تجاري',
    'مزرعة',
    'شاليه',
    'غرف',
    'عمارة'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'أضف إعلان',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        iconTheme: IconThemeData(
          size: 25, //change size on your need
          color: Colors.black, //change color on your need
        ),
      ),
      drawer: buildDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 25, right: 15, left: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 240),
                child: Text(
                  'عنوان الإعلان',
                  style: TextStyle(

                      // fontFamily: 'Tajawal',

                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // padding: EdgeInsets.all(8.0),

                width: double.infinity,

                child: TextFormField(
                  textAlign: TextAlign.right,
                  style: TextStyle(

                      // fontFamily: 'Tajawal',

                      ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    hintText: 'مثال : شقة للإيجار',

                    // alignLabelWithHint: true
                  ),
                  keyboardType: TextInputType.name,
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 215),
                child: Text(
                  'الموقع الجغرافي',
                  style: TextStyle(

                      // fontFamily: 'Tajawal',

                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // padding: EdgeInsets.all(8.0),

                width: double.infinity,

                child: TextFormField(
                  textAlign: TextAlign.right,
                  style: TextStyle(

                      // fontFamily: 'Tajawal',

                      ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    hintText: 'مثال : شمال لبنان_طرابلس',

                    // alignLabelWithHint: true
                  ),
                  keyboardType: TextInputType.name,
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/map1.png',
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 300),
                child: Text(
                  'الغرض',
                  style: TextStyle(

                      // fontFamily: 'Tajawal',

                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MyStatefulWidget(),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 280),
                child: Text(
                  'نوع العقار',
                  style: TextStyle(

                      // fontFamily: 'Tajawal',

                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              DropdownButton<String>(
                value: value,
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: 28,
                elevation: 20,

                items: estates.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) => setState(()=>this.value=value),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
