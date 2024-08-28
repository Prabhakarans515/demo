import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../dummy_data/theatre_list_dummy.dart';
import '../model_class/theatre_list_model.dart';
import '../provider.dart';

class TheatreListScreen extends StatefulWidget {
  final bool isSelected;
  const TheatreListScreen({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<TheatreListScreen> createState() => _TheatreListScreenState();
}

class _TheatreListScreenState extends State<TheatreListScreen> {
  int? selectedIndex;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final providervar = Provider.of<ProviderClass>(context);
    TheatersListScreenModel theatersList = TheatersListScreenModel.fromjson(
        TheatreListScreenDummyData.jsonData[index]);
    return Scaffold(
      backgroundColor: providervar.mode? Colors.white : Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          theatersList.title,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () {
            context.go('/dashboard_design');
          },
        ),
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search Theatres',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 0.1,
                  ),
                  filled: true,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 17),
                  prefixIcon: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    margin: EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black54,
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.69,
                crossAxisSpacing: 4,
              ),
              itemCount: TheatreListScreenDummyData.jsonData.length,
              itemBuilder: (BuildContext context, int index) {
                TheatersListScreenModel theatersList =
                    TheatersListScreenModel.fromjson(
                        TheatreListScreenDummyData.jsonData[index]);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = (selectedIndex == index) ? null : index;
                      if (index == 0) {
                        context.go('/theatre_list_design1');
                      }
                      if (index == 1) {
                        context.go('/theatre_list_design2');
                      }
                      if (index == 2) {
                        context.go('/theatre_list_design3');
                      }
                      if (index == 3) {
                        context.go('/theatre_list_design4');
                      }
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selectedIndex == index
                          ? Colors.blue[100]
                          : Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13,
                            top: 10,
                          ),
                          child: Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white, width: 3),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(theatersList.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5, left: 8),
                                child: Text(
                                  theatersList.text,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  theatersList.text2,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 4),
                                child: Row(
                                  children: [
                                    Icon(theatersList.icon1,
                                        size: 16, color: Colors.black),
                                     SizedBox(width: 4),
                                    Text(
                                      theatersList.timeopen,
                                      style:  TextStyle(
                                        fontSize: 13,
                                        color: Colors.green,
                                      ),
                                    ),
                                    Text(
                                      theatersList.timeclose,
                                      style:  TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 2),
                                child: Row(
                                  children: [
                                    Icon(theatersList.icon2,
                                        size: 16, color: Colors.yellow),
                                     SizedBox(width: 4),
                                    Text(
                                      theatersList.rating,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    Text(
                                      theatersList.ratingvotes,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 2),
                                child: Row(
                                  children: [
                                    Icon(theatersList.icon3,
                                        size: 16, color: Colors.green),
                                     SizedBox(width: 4),
                                    Text(
                                      theatersList.number,
                                      style:  TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
