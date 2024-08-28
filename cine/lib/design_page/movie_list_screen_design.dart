import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../dummy_data/movie_list_screen_dummy.dart';
import '../model_class/movie_list_screen_model.dart';
import '../provider.dart';

class MovieListScreenDesign extends StatefulWidget {
  const MovieListScreenDesign({super.key});

  @override
  State<MovieListScreenDesign> createState() => _MovieListScreenDesignState();
}

class _MovieListScreenDesignState extends State<MovieListScreenDesign> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final providervar = Provider.of<ProviderClass>(context);
    // Use the index to select the current data from DummyDataTwo
    MovieListScreenModel movielist =
        MovieListScreenModel.fromJson(MovieListScreenDummy.jsonData[index]);

    return Scaffold(
      backgroundColor: providervar.mode? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        leading: IconButton(
          onPressed: () {
            context.go('/dashboard_design');
          },
          icon: Icon(
            movielist.icon,
            size: 40,
            color: Colors.white,
          ),
        ),
        title: Text(
          movielist.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 40,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search movie",
                      contentPadding: EdgeInsets.only(left: 30),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      suffixIcon: Container(
                        decoration: BoxDecoration(
                          color: Colors.red.shade900,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 25,
                          ),
                          onPressed: () {
                            // Handle search action here
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: MovieListScreenDummy.jsonData.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, gridIndex) {
                  // Get data for the current grid item
                  MovieListScreenModel gridItem = MovieListScreenModel.fromJson(
                      MovieListScreenDummy.jsonData[gridIndex]);
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (gridIndex == 0) {
                            context.go('/movie_screen_1');
                          } else if (gridIndex == 1) {
                            context.go('/movie_screen_2');
                          } else if (gridIndex == 2) {
                            context.go('/movie_screen_3');
                          } else if (gridIndex == 3) {
                            context.go('/movie_screen_4');
                          } else if (gridIndex == 4) {
                            context.go('/movie_screen_5');
                          } else if (gridIndex == 5) {
                            context.go('/movie_screen_6');
                          } else if (gridIndex == 6) {
                            context.go('/movie_screen_7');
                          } else if (gridIndex == 7) {
                            context.go('/movie_screen_8');
                          }
                        },
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(gridItem.imagepath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
