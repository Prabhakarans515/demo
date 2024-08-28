import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../dummy_data/movie_screen_5_dummy.dart';
import '../model_class/movie_screen_5_model.dart';
import '../provider.dart';

class MovieScreenFive extends StatefulWidget {
  const MovieScreenFive({super.key});

  @override
  State<MovieScreenFive> createState() => _MovieScreenFiveState();
}

class _MovieScreenFiveState extends State<MovieScreenFive> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final providervar = Provider.of<ProviderClass>(context);
    MovieScreenFiveModel user =
        MovieScreenFiveModel.fromJson(MovieScreenFiveDummyData.jsonData[index]);
    return Scaffold(
      backgroundColor: providervar.mode? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leading: IconButton(
          onPressed: () {
            context.go('/movie_list_screen_design');
          },
          icon: Icon(
            user.icon,
            size: 40,
            color: Colors.white,
          ),
        ),
        title: Text(
          user.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            children: [
              Container(
                height: 380,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage(
                      user.imagepath,
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      user.starring,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      user.starringone,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                user.starringtwo,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              Text(
                user.starringthree,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      user.director,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      user.directorname,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    user.musicdirector,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    user.musicdirectorname,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      user.rating,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      user.ratingvotes,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade900,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  context.go('/theatre_list_design');
                },
                child: Text(
                  user.ebtext,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
