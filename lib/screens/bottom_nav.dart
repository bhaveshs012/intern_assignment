import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intern_assignment/constants/colors.dart';
import 'package:intern_assignment/screens/homepage/homepage.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key, required this.initailIndex}) : super(key: key);
  final initailIndex;
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  //controller to manage different tabs of the navbar
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 3, vsync: this, initialIndex: widget.initailIndex);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //custom made tabview used as bottom navbar
        bottomNavigationBar: CustomNavBarWidget(tabController: _tabController),
        body: TabBarView(
          controller: _tabController,
          //tab pages in correspondence to the navbar
          children: [
            HomePage(),
            HomePage(),
            HomePage(),
          ],
        ));
  }
}

class CustomNavBarWidget extends StatelessWidget {
  const CustomNavBarWidget({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    //outer container to hold the navbar
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(0.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 15,
          ),
          color: kTabBarColor,
          child: TabBar(
            unselectedLabelColor: Colors.white,
            //indicator package for the dot indication
            indicator: DotIndicator(
              color: kPrimaryColor,
              distanceFromCenter: 20,
              radius: 3,
              paintingStyle: PaintingStyle.fill,
            ),
            // BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
            //inner padding for the icons of the navbar
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/chart.svg',
                  color: _tabController.index == 0 ? kPrimaryColor : kTextColor,
                  // color: Colors.black,
                  height: 30,
                  width: 30,
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/discover.svg',
                  color: _tabController.index == 1 ? kPrimaryColor : kTextColor,
                  height: 30,
                  width: 30,
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/profile.svg',
                  color: _tabController.index == 2 ? kPrimaryColor : kTextColor,
                  height: 30,
                  width: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
