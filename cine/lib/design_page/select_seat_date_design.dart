import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../dummy_data/select_seat_date_dummy.dart';
import '../model_class/select_seat_date_model.dart';
import '../provider.dart';

class SelectSeatDateDesign extends StatefulWidget {
  const SelectSeatDateDesign({
    super.key,
  });

  @override
  State<SelectSeatDateDesign> createState() => _SelectSeatDateDesignState();
}

class _SelectSeatDateDesignState extends State<SelectSeatDateDesign> {
  int index = 0;

  int? selectedIndex;
  Set<int> selectedIndices = {};

  late Map<String, dynamic> value;
  late SelectSeatDateModel select;
  @override
  void initState() {
    value = SelectSeatDateDummy.jValue;
    select = SelectSeatDateModel.fromJson(value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final providervar = Provider.of<ProviderClass>(context);
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      backgroundColor: providervar.mode? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text(
          "Seats & Date",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
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
            context.go('/theatre_list_design');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Center(
            child: Column(
              children: [
                Text(
                  select.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Container(
                    height: 230,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white,
                        width: 2.5,
                      ),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage(select.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    height: 40,
                    width: screenWidth,
                    color: Colors.black87,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: select.seats.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (selectedIndices.contains(index)) {
                                    selectedIndices
                                        .remove(index); // Deselect the item
                                  } else {
                                    selectedIndices
                                        .add(index); // Select the item
                                  }
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: selectedIndices.contains(index)
                                      ? Colors.green.shade900
                                      : Colors.black87,
                                ),
                                child: Center(
                                  child: Text(
                                    select.seats[index].toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, right: 20),
                  child: Text(
                    select.dateText,
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Container(
                    height: 70,
                    width: screenWidth,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: select.date.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 2,
                              vertical: 2,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex =
                                      selectedIndex == index ? null : index;
                                });
                              },
                              child: Container(
                                height: 65,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: selectedIndex == index
                                      ? Colors.green
                                      : Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      select.day[index],
                                      style: TextStyle(color: Colors.black87),
                                    ),
                                    Text(
                                      select.date[index].toString(),
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                    ),
                                    Text(
                                      select.month[index].toString(),
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/seat_selecting_design');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade900,
                    ),
                    child: Text(
                      select.button,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
