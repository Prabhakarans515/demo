import 'package:cinehub/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../login_to_dashboard_dummy/dashboard_dummy.dart';
import '../login_to_dashboard_model/dashboard_model.dart';

class DashBoardPageMovieApp extends StatefulWidget {
  const DashBoardPageMovieApp({super.key});

  @override
  State<DashBoardPageMovieApp> createState() => _DashBoardPageMovieAppState();
}

class _DashBoardPageMovieAppState extends State<DashBoardPageMovieApp> {
  late Map<String, dynamic> data;
  late HomeModel home;
  bool action = true;

  bool val = true;
  @override
  void initState() {
    data = ApiData.data;
    home = HomeModel.fromJson(data);
    super.initState();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final providervar = Provider.of<ProviderClass>(context);
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: providervar.mode? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text(
          ('Cine Hub !'),
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.go('/login_page_design');
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            size: 40,
          ),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                action = !action;
              });
            },
            icon: action
                ? Icon(Icons.search, color: Colors.white, size: 30)
                : SizedBox(
                    height: 40,
                    width: 250,
                    child: TextField(
                      cursorColor: Colors.black,
                      cursorHeight: 20,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search...',
                        prefixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              action = !action;
                            });
                          },
                          padding: EdgeInsets.only(bottom: 3),
                          icon: Icon(Icons.search, size: 20),
                        ),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
          GestureDetector(
            onTap: () {
              context.go('/profile_design_page');
            },
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage('assets/man3.jpg'),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              CarouselSlider(
                items: home.carousel.map((imagePath) {
                  return Image.asset(
                    imagePath,
                    width: screenWidth,
                    fit: BoxFit.cover,
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 280,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: Duration(seconds: 2),
                  autoPlayInterval: Duration(seconds: 2),
                  viewportFraction: 1.8,
                  // enlargeCenterPage: true,
                  initialPage: currentIndex,
                  onPageChanged: (value, reason) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                ),
              ),
              Positioned(
                bottom: 5.0,
                left: 150.0,
                child: AnimatedSmoothIndicator(
                  activeIndex: currentIndex,
                  count: home.carousel.length,
                  effect: WormEffect(
                    dotHeight: 6,
                    dotWidth: 6,
                    spacing: 10,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.white,
                  ),
                ),
              ),
            ]),
            Container(
              padding: EdgeInsets.only(
                left: 10.0,
              ),
              height: 50,
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          home.title,
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            color: providervar.mode ? Colors.black : Colors.white,
                          ),
                        ),
                        Transform.scale(
                          scaleX: 0.7,
                          scaleY: 0.6,
                          child: Switch(
                              value: providervar.mode,
                              activeTrackColor: Colors.blue,
                              onChanged: (newValue) {
                                providervar.toggle();
                              },),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    home.subtitle,
                    style: TextStyle(
                      color: providervar.mode ? Colors.black87 : Colors.grey[500],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      home.label,
                      style: TextStyle(
                          color: providervar.mode ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5.0, top: 6.0),
                    child: GestureDetector(
                      onTap: () {
                        context.go('/movie_list_screen_design');
                      },
                      child: const Text(
                        'See All>',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: screenWidth,
              height: 155,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: home.movies.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(3.0),
                      // color: Colors.pink,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 7),
                            height: 145,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(home.movies[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      home.label1,
                      style: TextStyle(
                        color: providervar.mode ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5.0, top: 6),
                    child: GestureDetector(
                      onTap: () {
                        context.go('/concert_list_design');
                      },
                      child: const Text(
                        'See All>',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: screenWidth,
              height: 155,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: home.concerts.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(3.0),
                    // color: Colors.pink,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 7),
                          height: 145,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(home.concerts[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      home.label2,
                      style: TextStyle(
                        color: providervar.mode ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5.0, top: 6),
                    child: GestureDetector(
                      onTap: () {
                        context.go('/teaser_list_design');
                      },
                      child: Text(
                        'See All>',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: screenWidth,
              height: 155,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: home.shows.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7),
                          height: 145,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              alignment: Alignment.bottomCenter,
                              image: AssetImage(home.shows[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      home.label3,
                      style: TextStyle(
                        color: providervar.mode ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5.0, top: 6),
                    child: GestureDetector(
                      onTap: () {
                        context.go('/trailer_list_design');
                      },
                      child: Text(
                        'See All>',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: screenWidth,
              height: 155,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: home.comedy.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7),
                          height: 145,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(home.comedy[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
