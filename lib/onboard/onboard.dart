// import 'package:sarpras/notification.dart';
import 'package:sarpras/auth/sign_in.dart';
import 'package:sarpras/nav/nav.dart';
import 'package:sarpras/onboard/onboard_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sarpras/utils/constant.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'assets/gbr1.png',
      text: "With The Flow",
      desc: "Lorem ipsum dolor sit amet consectetur.",
      bg: Color(0xffEBEBEB),
      button: Color(0xFF6B9A7E),
    ),
    OnboardModel(
      img: 'assets/gbr4.png',
      text: "Stay In Touch",
      desc: "Lorem ipsum dolor sit amet consectetur.",
      bg: Color(0xffEBEBEB),
      button: Color(0xFF6B9A7E),
    ),
    OnboardModel(
      img: 'assets/gbr3.png',
      text: "With Us",
      desc: "Lorem ipsum dolor sit amet consectetur.",
      bg: Colors.white,
      button: Color(0xFF6B9A7E),
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40, bottom: 70),
                    child: Text(
                      'SARPRAS',
                      style: TextStyle(
                          fontFamily: 'Poppins', color: Color(0xff6B9A7E),fontSize: 20,fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 90),
                      child: Image.asset(screens[index].img)),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      screens[index].text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 27.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: kijo,
                        
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: Text(
                      screens[index].desc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Quicksand',
                        color: kabu ,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    height: 10.0,
                    child: ListView.builder(
                      itemCount: screens.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 3.0),
                                width: currentIndex == index ? 25 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: currentIndex == index
                                      ? kbrown
                                      : kbrown300,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ]);
                      },
                    ),
                  ),
                  InkWell(
                      onTap: () async {
                        print(index);
                        if (index == screens.length - 1) {
                          await _storeOnboardInfo();
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => SignIn()));
                        }
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.bounceIn,
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10),
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              TextButton(
                                onPressed: () {
                                  _storeOnboardInfo();
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignIn()));
                                },
                                child: Text(
                                  "Skip",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                      color: kgelap),
                                ),
                              ),
                              // Text(
                              //   "Skip",
                              //   style: TextStyle(
                              //       fontFamily: 'Poppins',
                              //       fontSize: 16.0,
                              //       color: index % 2 == 0 ? kgelap : kgelap),
                              // ),
                              SizedBox(
                                width: 15.0,
                              ),
                            ]),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 10),
                            decoration: BoxDecoration(
                                color: kblue ,
                                borderRadius: BorderRadius.circular(15.0)),
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: kwhite),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color:  kwhite ,
                              )
                            ]),
                          ),
                        ],
                      ))
                ],
              );
            }),
      ),
    );
  }
}
