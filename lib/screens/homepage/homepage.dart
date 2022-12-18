import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intern_assignment/constants/colors.dart';
import 'package:intern_assignment/constants/fonts.dart';
import 'package:intern_assignment/screens/tabPage1/tab_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: DefaultTabController(
            length: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopRow(),
                SizedBox(
                  height: 25,
                ),
                TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Color(0xff4A80F0),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff4A80F0).withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 1),
                        // blurStyle: BlurStyle.inner,
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff4A80F0),
                        Color(0xff4A80F0),
                      ],
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        'Insomnia',
                        style: kTabTextStyle,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Depression',
                        style: kTabTextStyle,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Baby Sleep',
                        style: kTabTextStyle,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Anxiety',
                        style: kTabTextStyle,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      TabPage(),
                      Container(
                        color: Colors.green,
                      ),
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discover',
                  style: kHeadingTextStyle,
                ),
                SvgPicture.asset(
                  'assets/icons/search.svg',
                  height: 30,
                  width: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 3,
            width: 40,
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}



// ButtonsTabBar(
//                   unselectedBackgroundColor: kScaffoldBgColor,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: Color(0xff4A80F0),
//                     borderRadius: BorderRadius.circular(
//                       50,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.white,
//                         offset: Offset(0, 3),
//                         spreadRadius: 5,
//                         blurRadius: 10,
//                         blurStyle: BlurStyle.outer,
//                       ),
//                     ],
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                     horizontal: 25,
//                     vertical: 5.0,
//                   ),
//                   unselectedLabelStyle: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                   labelStyle: TextStyle(color: Colors.white),
//                   tabs: [
//                     Tab(
//                       text: 'Insomnia',
//                     ),
//                     Tab(
//                       text: 'Depression',
//                     ),
//                     Tab(
//                       text: 'Baby Sleep',
//                     ),
//                     Tab(
//                       text: 'Anxiety',
//                     ),
//                   ],
//                 ),