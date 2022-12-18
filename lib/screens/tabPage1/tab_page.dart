import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intern_assignment/constants/colors.dart';
import 'package:intern_assignment/constants/fonts.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: kCategoryTextStyle,
                  ),
                  Text(
                    'See All',
                    style: kCategoryTextStyle.copyWith(
                      color: kTextColor2,
                    ),
                  ),
                ],
              ),
              Container(
                height: 250,
                width: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return CarouselCard(
                      imagePath: "assets/images/background11.png",
                      title: "Sleep Meditation",
                      subtitle: '7 Day Audio',
                    );
                  }),
                ),
              ),
              Text(
                'Recent',
                style: kCategoryTextStyle,
              ),
              Container(
                padding: EdgeInsets.only(
                  right: 16.0,
                ),
                width: double.infinity,
                height: 250,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    // childAspectRatio: 0.9,
                  ),
                  // scrollDirection: Axis.horizontal,
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return CarouselCard2(
                      imagePath: (index % 2 == 0)
                          ? "assets/images/background11.png"
                          : "assets/images/backgroun22.png",
                      title: "Sleep Meditation",
                      subtitle: '7 Day Audio',
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CarouselCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  const CarouselCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 320,
      margin: EdgeInsets.only(
        right: 15,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.only(
        left: 15,
        top: 38,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kCardHeading,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            subtitle,
            style: kCardSubHeading,
          ),
          SizedBox(
            height: 65,
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/headphone.svg',
                height: 30,
                color: Colors.white,
                // color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              SvgPicture.asset(
                'assets/images/tape.svg',
                height: 35,
                // color: Colors.black,
              )
            ],
          )
        ],
      ),
    );
  }
}

class CarouselCard2 extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  const CarouselCard2({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imagePath,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned.fill(
          top: 20,
          left: 25.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kCardHeading.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SvgPicture.asset(
                'assets/images/headphone.svg',
                height: 20,
                color: Colors.white,
                // color: Colors.black,
              ),
            ],
          ),
        )
      ],
    );
  }
}
