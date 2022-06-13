import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tmallak/contact.dart';
import 'package:tmallak/description.dart';
import 'package:tmallak/gridview.dart';
import 'package:tmallak/map_screen.dart';
import 'package:tmallak/profile_screen.dart';
import 'package:tmallak/router_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List estates = [
    'بيت',
    'شقة',
    'أرض',
    'تجاري',
    'مزرعة',
    'شاليه',
    'غرف',
    'عمارة'
  ];
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var _selectedIndex;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'الرئيسية',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        iconTheme: IconThemeData(
          size: 25, //change size on your need
          color: Colors.black, //change color on your need
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message_outlined),
          )
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
                  RouterHelper.routerHelper.routingToSpecificWidget(HomePage());
                },
              ),
              leading: IconButton(
                color: Colors.blue,
                onPressed: () {
                  RouterHelper.routerHelper.routingToSpecificWidget(HomePage());
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
                onTap: () {
                  RouterHelper.routerHelper
                      .routingToSpecificWidget(DescriptionScreen());
                },
              ),
              leading: IconButton(
                color: Colors.blue,
                onPressed: () {
                  RouterHelper.routerHelper
                      .routingToSpecificWidget(DescriptionScreen());
                },
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
                onTap: () {
                  RouterHelper.routerHelper
                      .routingToSpecificWidget(ContactScreen());
                },
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.chat,
                ),
                color: Colors.blue,
                onPressed: () {
                  RouterHelper.routerHelper
                      .routingToSpecificWidget(ContactScreen());
                },
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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'دليل عقارات لبنان للبيع والايجار ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '،أهلاً بك',
                    // textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/main.png')),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 38,
                    width: 49,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    // padding: EdgeInsets.only(left: 30),
                    height: 38,
                    width: 288,
                    // width: MediaQuery.of(context).size.width / 1.4,
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 12),
                        hintText: 'اكتب المنطقة للبحث',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'نوع العقار',
                    // textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 4),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 9),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/Facebook_Logo.png',
                                  height: 40,
                                  width: 40,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                    child: Text(
                                  estates[index],
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'احدث الاعلانات',
                    // textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              ElevatedButton(
                style: E,
                  onPressed: (){},
                  child: Text('مشاهدة المزيد'))
              // GridWidget(),
              // Padding(
              //   padding: EdgeInsets.all(10),
              //   child: GridView.count(
              //     shrinkWrap: false,
              //     crossAxisCount: 3,
              //     mainAxisSpacing: 4.0,
              //     crossAxisSpacing: 8.0,
              //     children: List.generate(6, (index) {
              //       return Container(
              //         height: 50,
              //         width: 50,
              //         decoration: BoxDecoration(
              //             color: Colors.black, border: Border.all()),
              //         child: Text('Nada'),
              //       );
              //     }),
              //   ),
              // ),
              // GridView.builder(
              //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              //         maxCrossAxisExtent: 200,
              //         childAspectRatio: 3 / 2,
              //         crossAxisSpacing: 20,
              //         mainAxisSpacing: 20),
              //     itemCount: estates.length,
              //     itemBuilder: (BuildContext ctx, index) {
              //       return Container(
              //         alignment: Alignment.center,
              //         child: Text(estates[index]),
              //         decoration: BoxDecoration(
              //             color: Colors.amber,
              //             borderRadius: BorderRadius.circular(15)),
              //       );
              //     }),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: BottomNav6(),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('الملف الشخصي'), icon: Icon(Icons.person)),
          BottomNavyBarItem(title: Text('الخريطة'), icon: Icon(Icons.map)),
          BottomNavyBarItem(title: Text('إضافة'), icon: Icon(Icons.add)),
          BottomNavyBarItem(title: Text('المكاتب'), icon: Icon(Icons.work)),
          BottomNavyBarItem(title: Text('الرئيسية'), icon: Icon(Icons.home)),
        ],
      ),

      // bottomNavigationBar: BottomNavyBar(
      //   selectedIndex: _selectedIndex,
      //   showElevation: true,
      //   onItemSelected: (index) => setState(
      //     () {
      //       _selectedIndex = index;
      //       _pageController.animateToPage(index,
      //           duration: Duration(milliseconds: 300), curve: Curves.ease);
      //     },
      //   ),
      //   items: [
      //     BottomNavyBarItem(
      //         icon: Icon(Icons.apps),
      //         title: Text('home'),
      //         activeColor: Colors.red),
      //     BottomNavyBarItem(
      //         icon: Icon(Icons.people),
      //         title: Text('users'),
      //         activeColor: Colors.red),
      //     BottomNavyBarItem(
      //         icon: Icon(Icons.message),
      //         title: Text('messages'),
      //         activeColor: Colors.red),
      //     BottomNavyBarItem(
      //         icon: Icon(Icons.settings),
      //         title: Text('settings'),
      //         activeColor: Colors.red)
      //   ],
      // ),
    ));
  }
}

// class BottomNav6 extends StatefulWidget {
//   const BottomNav6({Key? key}) : super(key: key);

//   @override
//   _BottomNav6State createState() => _BottomNav6State();
// }

// class _BottomNav6State extends State<BottomNav6> with TickerProviderStateMixin {
//   int currentValue = 0;

//   late AnimationController _controller;
//   late Animation<double> _animation;

//   late AnimationController _controller2;
//   late Animation<double> _animation2;

//   late AnimationController _controller3;
//   late Animation<double> _animation3;

//   late AnimationController _controller4;
//   late Animation<double> _animation4;

//   late AnimationController _controller5;
//   late Animation<double> _animation5;
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 300));
//     _animation = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
//         parent: _controller,
//         curve: Curves.fastLinearToSlowEaseIn,
//         reverseCurve: Curves.easeIn))
//       ..addListener(() {
//         setState(() {});
//       });

//     _controller2 = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 300));
//     _animation2 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
//         parent: _controller2,
//         curve: Curves.fastLinearToSlowEaseIn,
//         reverseCurve: Curves.easeIn))
//       ..addListener(() {
//         setState(() {});
//       });

//     _controller3 = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 300));
//     _animation3 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
//         parent: _controller3,
//         curve: Curves.fastLinearToSlowEaseIn,
//         reverseCurve: Curves.easeIn))
//       ..addListener(() {
//         setState(() {});
//       });
//     _controller4 = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 300));
//     _animation4 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
//         parent: _controller4,
//         curve: Curves.fastLinearToSlowEaseIn,
//         reverseCurve: Curves.easeIn))
//       ..addListener(() {
//         setState(() {});
//       });

//     _controller5 = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 300));
//     _animation5 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
//         parent: _controller5,
//         curve: Curves.fastLinearToSlowEaseIn,
//         reverseCurve: Curves.ease))
//       ..addListener(() {
//         setState(() {});
//       });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _controller2.dispose();
//     _controller3.dispose();
//     _controller4.dispose();
//     _controller5.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return
//         // Scaffold(
//         // backgroundColor: Colors.deepOrangeAccent,
//         // body:
//         Stack(
//       children: [
//         SizedBox(
//           height: size.height,
//           width: size.width,
//           child: null,
//         ),
//         Positioned(
//           bottom: 0,
//           right: 0,
//           left: 0,
//           child: Container(
//             height: size.width * .14,
//             width: size.width,
//             margin: EdgeInsets.all(size.width * .04),
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(
//                 Radius.circular(30),
//               ),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 IconButton(
//                   icon: Icon(
//                     Icons.home,
//                     color: currentValue == 0 ? Colors.orange : Colors.black38,
//                     size: _animation.value,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       currentValue = 0;
//                       _controller.forward();
//                       _controller2.reverse();
//                       _controller3.reverse();
//                       _controller4.reverse();
//                       _controller5.reverse();
//                       HapticFeedback.lightImpact();
//                     });
//                   },
//                   splashColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     Icons.add_box_rounded,
//                     color: currentValue == 2 ? Colors.orange : Colors.black38,
//                     size: _animation3.value,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       currentValue = 2;
//                       _controller3.forward();
//                       _controller.reverse();
//                       _controller2.reverse();
//                       _controller4.reverse();
//                       _controller5.reverse();
//                       HapticFeedback.lightImpact();
//                     });
//                   },
//                   splashColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     Icons.favorite_rounded,
//                     color: currentValue == 3 ? Colors.orange : Colors.black38,
//                     size: _animation4.value,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       currentValue = 3;
//                       _controller4.forward();
//                       _controller.reverse();
//                       _controller2.reverse();
//                       _controller3.reverse();
//                       _controller5.reverse();
//                       HapticFeedback.lightImpact();
//                     });
//                   },
//                   splashColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     Icons.settings_rounded,
//                     color: currentValue == 4 ? Colors.orange : Colors.black38,
//                     size: _animation5.value,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       currentValue = 4;
//                       _controller5.forward();
//                       _controller.reverse();
//                       _controller2.reverse();
//                       _controller3.reverse();
//                       _controller4.reverse();
//                       HapticFeedback.lightImpact();
//                     });
//                   },
//                   splashColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//     // );
//   }
// }
