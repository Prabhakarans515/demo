import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  bool text = false;
  List<String> pic = [
    'csk.jpg',
    'mahiwi.jpg',
    'dhoni.jpg',
    'dhonic.jpg',
    'ind.jpg',
    'sac.webp',
    't20.jpeg',
    'yuv.jpg'
  ];
  List<String> name = [
    'csk',
    'aggression',
    'world cup',
    'memories',
    'max',
    'moments',
    'style',
    'momentum'
  ];
  List<String> pic1 = [
    'virat.jpg',
    'virat1.jpg',
    'virat3.jpg',
    'virat4.jpg',
    'virat5.jpg',
    'virat6.jpg',
    'virat7.jpg',
    'virat8.jpg',
    'virat9.jpg',
    'virat10.jpg',
    'virat11.jpg',
    'virat12.jpg'
  ];

  Color cl = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold\
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_rounded),
        title: Text(
          'King_virat',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 130,
                    width: 220,
                    // color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('virat12.jpg'),
                            radius: 40,
                          ),
                          Text(
                            'Captain',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'King of india / Rcb King',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 280,
                    // color: Colors.yellowAccent,
                    child: Column(
                      children: [
                        Container(
                          // color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              details('500', 'Posts'),
                              details('30M', 'Followers'),
                              details('1', 'Following')
                            ],
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        text = !text;
                                      });
                                    },
                                    child: Text(
                                      text ? 'unfollow' : 'follow',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        minimumSize: Size(200, 50))),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    height: 40,
                                    width: 50,
                                    child: Icon(
                                      Icons.arrow_downward_rounded,
                                      color: Colors.blue,
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.blue, width: 2.0)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 105,
                width: 500,
                // color: Colors.blue,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: pic.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(12.0),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      pic1[index],
                                    ),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                                color: Colors.lightGreen,
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                          ),
                          Text(
                            name[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      );
                    }),
              ),
              Container(
                height: 40,
                width: 500,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.apps),
                    Icon(Icons.ad_units_outlined),
                    Icon(Icons.account_circle_outlined),
                    Icon(Icons.favorite_outline)
                  ],
                ),
              ),
              Container(
                height: 290,
                width: 500,
                // color: Colors.red,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemCount: pic1.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5.0),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.lightGreen,
                            image: DecorationImage(
                                image: AssetImage(pic1[index]),
                                fit: BoxFit.cover)),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget details(text1, text2) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
