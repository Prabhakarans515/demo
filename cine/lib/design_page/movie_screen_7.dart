import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../dummy_data/movie_screen_7_dummy.dart';
import '../model_class/movie_screen_7_model.dart';
import '../provider.dart';

class MovieScreenSeven extends StatefulWidget {
  const MovieScreenSeven({Key? key}) : super(key: key);

  @override
  State<MovieScreenSeven> createState() => _MovieScreenSevenState();
}

class _MovieScreenSevenState extends State<MovieScreenSeven> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final providervar = Provider.of<ProviderClass>(context);
    MovieScreenSevenModel screen7 = MovieScreenSevenModel.fromJson(MovieScreenSevenDummyData.jsonData[index]);
    return Scaffold(
      backgroundColor: providervar.mode? Colors.white : Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          screen7.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.go('/movie_list_screen_design');
          },
          icon: Icon(
            screen7.icon,
            size: 40,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(top: 15.0),
              child: Container(
                height: 380,
                width: 270,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 2),
                  image:  DecorationImage(
                    image: AssetImage(screen7.imagepath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
             SizedBox(height: 20),
            Padding(
              padding:  EdgeInsets.only(left: 45),
              child: Column(
                children: [
                  Row(
                    children:  [
                      Text(
                        screen7.starring,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        screen7.starringone,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      screen7.starringtwo,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      screen7.starringthree,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 5),
            Padding(
              padding:  EdgeInsets.only(left: 45),
              child: Column(
                children: [
                  Row(
                    children:  [
                      Text(
                        screen7.director,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        screen7.directorname,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
             SizedBox(height: 10),
            Padding(
              padding:  EdgeInsets.only(left: 45),
              child: Column(
                children: [
                  Row(
                    children:  [
                      Text(
                        screen7.musicdirector,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        screen7.musicdirectorname,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
             SizedBox(height: 10),
            Padding(
              padding:  EdgeInsets.only(left: 45),
              child: Column(
                children: [
                  Row(
                    children:  [
                      Text(
                        screen7.rating,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        screen7.ratingvotes,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/theatre_list_design');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(screen7.ebtext,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}