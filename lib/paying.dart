import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tmallak/home_page.dart';
import 'package:tmallak/map_screen.dart';
import 'package:tmallak/profile_screen.dart';
import 'package:tmallak/router_helper.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

List category = [
  'الكل',
  'بيت',
  'شقة',
  'مزرعة',
  'غرف',
  'تجاري',
  'شاليه',
  'عمارة',
  'أرض',
  'فيلا'
];

class _FilterScreenState extends State<FilterScreen>
    with TickerProviderStateMixin {
  TabController? controller;

  int? _selectedIndex;

  //  List category = ['الكل','بيت','شقة','مزرعة','غرف','تجاري','شاليه','عمارة','أرض','فيلا'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller?.addListener(() {
      setState(() {
        _selectedIndex = controller?.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
          title: Text(
            'فلتر',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          iconTheme: IconThemeData(
            size: 25, //change size on your need
            color: Colors.black, //change color on your need
          ),
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back_ios),
          //   onPressed: () {
          //     RouterHelper.routerHelper.routingToSpecificWidget(HomePage());
          //   },
          // ),
          actions: [
            IconButton(
                onPressed: () {
                  RouterHelper.routerHelper
                      .routingToSpecificWidget(ProfileScreen());
                },
                icon: Icon(Icons.arrow_forward_ios))
          ],
        ),
        drawer: Drawer(
          width: 300,
          backgroundColor: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Image.asset(
                  'assets/images/profilePic.png',
                  height: 70,
                  width: 70,
                ),
                onTap: () {
                  RouterHelper.routerHelper
                      .routingToSpecificWidget(ProfileScreen());
                },
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "سارة أبو دقة",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 6),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('لبنان، بيروت-البقاع'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.location_city,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                title: GestureDetector(
                  child: Text(
                    'الرئيسية',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    RouterHelper.routerHelper
                        .routingToSpecificWidget(HomePage());
                  },
                ),
                leading: IconButton(
                  color: Colors.blue,
                  onPressed: () {
                    RouterHelper.routerHelper
                        .routingToSpecificWidget(HomePage());
                  },
                  icon: Icon(Icons.home),
                ),
              ),
              ListTile(
                title: GestureDetector(
                  child: Text(
                    'المكاتب',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag,
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
                  child: Text(
                    'المفضلة',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                ),
              ),
              ListTile(
                title: GestureDetector(
                  child: Text(
                    'الخريطة',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    RouterHelper.routerHelper
                        .routingToSpecificWidget(MapScreen());
                  },
                ),
                leading: IconButton(
                  color: Colors.blue,
                  onPressed: () {
                    RouterHelper.routerHelper
                        .routingToSpecificWidget(MapScreen());
                  },
                  icon: Icon(
                    Icons.map,
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
                  child: Text(
                    'من نحن',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(
                    Icons.info,
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
                  child: Text(
                    'تواصل معنا',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: IconButton(
                  icon: Icon(
                    Icons.chat,
                  ),
                  color: Colors.blue,
                  onPressed: () {},
                ),
              ),
              Spacer(),
              // SizedBox(
              //   height: 150,
              // ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade300),
                      child: GestureDetector(
                          child: Image.asset(
                        'assets/images/facebookIcon.png',
                        // width: 35,
                        // height: 35,
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade300),
                      child: GestureDetector(
                          child: Image.asset(
                        'assets/images/twitterLogo.png',
                        // width: 35,
                        // height: 35,
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade300),
                      child: GestureDetector(
                          child: Image.asset(
                        'assets/images/instagramLogo.png',
                        // width: 30,
                        // height: 30,
                      )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "الغرض",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        // border: Border.all( color: ColorsHelper.Colorbac),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 36,
                            child: TabBar(
                              controller: controller,
                              isScrollable: true,
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      10), // Creates border
                                  color: Colors.indigo
                                  //blue.shade100
                                  ),
                              tabs: [
                                SizedBox(
                                  width: 120,
                                  child: Tab(
                                      child: Text(
                                    'للايجار',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: _selectedIndex == 0
                                          ? Colors.grey
                                          : Colors.indigo,
                                    ),
                                  )),
                                ),
                                SizedBox(
                                  width: 120,
                                  child: Tab(
                                      child: Text(
                                    'للبيع',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: _selectedIndex == 1
                                          ? Colors.grey
                                          : Colors.indigo,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "نوع العقار",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo.shade900,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 500,
                            child: TabBarView(
                              controller: controller,
                              children: <Widget>[
                                forRent(),
                                forSale(),

                                // Icon(Icons.flight, size: 350),
                                // Icon(Icons.directions_transit, size: 350),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class forRent extends StatefulWidget {
  const forRent({Key? key}) : super(key: key);

  @override
  State<forRent> createState() => _forRentState();
}

class _forRentState extends State<forRent> {
  String _selectedDuration = 'سنوياً';

  String dropdownvalue = 'سنوياً';

  List<String> Duration = [
    'سنوياً',
    'شهرياً',
    'أسبوعياً',
    'يومياً',
  ];
  @override
  Widget build(BuildContext context) {
    int selectedIndex;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            // SizedBox(
            //   height: 50,
            // ),
            // Text(
            //   'Duration',
            //   style: TextStyle(
            //       fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            // ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20)),
              // height: 40,
              width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.symmetric(horizontal: 50),
              alignment: Alignment.center,
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 4),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Column(
                            children: [
                              Center(
                                  child: Text(
                                category[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              )),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "مدة الإيجار",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo.shade900,
                  ),
                ),
              ),
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     DropdownButton(
            //       value: _selectedDuration,
            //       onChanged: (String? dropdownvalue) {
            //         setState(() {
            //           _selectedDuration = dropdownvalue!;
            //         });
            //       },
            //       items: Duration.map((String duration) {
            //         return new DropdownMenuItem<String>(
            //           child: new Text(duration),
            //         );
            //       }).toList(),
            //     )
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "عدد الغرف",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo.shade900,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            )
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     DropdownButton(
            //       value: _selectedDuration,
            //       onChanged: (String? dropdownvalue) {
            //         setState(() {
            //           _selectedDuration = dropdownvalue!;
            //         });
            //       },
            //       items: Duration.map((String duration) {
            //         return new DropdownMenuItem<String>(
            //           child: new Text(duration),
            //         );
            //       }).toList(),
            //     )
            //   ],
            // ),
          ]),

          // Container(
          //   width: double.infinity,
          //   height: 300,
          //   child: GoogleNewTest(),
          // ),
        ),
      ),
    );
  }
}

class forSale extends StatefulWidget {
  const forSale({Key? key}) : super(key: key);

  @override
  State<forSale> createState() => _forSaleState();
}

class _forSaleState extends State<forSale> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(children: [
          // SizedBox(
          //   height: 50,
          // ),
          // Text(
          //   'Duration',
          //   style: TextStyle(
          //       fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          // ),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
            // height: 40,
            width: MediaQuery.of(context).size.width,
            // margin: EdgeInsets.symmetric(horizontal: 50),
            alignment: Alignment.center,
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5, mainAxisSpacing: 8, crossAxisSpacing: 4),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              category[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ]),

        // Container(
        //   width: double.infinity,
        //   height: 300,
        //   child: GoogleNewTest(),
        // ),
      ),
    );
  }
}

// class Durationing {
//   bool isSelcted = false;
//   String title;

//   Durationing({
//     this.isSelcted = false,
//     required this.title,
//     int? milliseconds,
//   });
// }

// List<Durationing> duration = [
//   Durationing(isSelcted: true, title: "الكل"),
//   Durationing(title: "بيت"),
//   Durationing(title: "شقة"),
//   Durationing(title: "مزرعة"),
//   Durationing(title: "فرفة"),
// ];

// List<Durationing> durationn = [
//   Durationing(isSelcted: true, title: "تجاري"),
//   Durationing(title: "شالية"),
//   Durationing(title: "عمارة"),
//   Durationing(title: "ارض"),
//   Durationing(title: "فيلا"),
// ];
