import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../dummy_data/movie_screen_3_dummy.dart';
import '../model_class/movie_screen_3_model.dart';
import '../provider.dart';

class MovieScreenThree extends StatefulWidget {
  const MovieScreenThree({Key? key}) : super(key: key);

  @override
  State<MovieScreenThree> createState() => _MovieScreenThreeState();
}

class _MovieScreenThreeState extends State<MovieScreenThree> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final providervar = Provider.of<ProviderClass>(context);
    MovieScreenThreeModel screen3 =
        MovieScreenThreeModel.fromJson(MovieScreenThreeDummy.jsonData[index]);
    return Scaffold(
      backgroundColor: providervar.mode? Colors.white : Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          screen3.title,
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
            screen3.icon,
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
                  image: DecorationImage(
                    image: AssetImage(screen3.imagepath),
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
                    children: [
                      Text(
                        screen3.starring,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        screen3.starringone,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      screen3.starringtwo,
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
              padding: EdgeInsets.only(left: 45),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        screen3.director,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        screen3.directorname,
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
              padding: EdgeInsets.only(left: 45),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        screen3.musicdirector,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        screen3.musicdirectorname,
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
             SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        screen3.rating,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        screen3.ratingvotes,
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
              child: Text(
                screen3.ebtext,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
