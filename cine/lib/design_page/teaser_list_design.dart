import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../dummy_data/teaser_list_dummy.dart';
import '../model_class/teaser_list_model.dart';
import '../provider.dart';

class TeaserListDesign extends StatefulWidget {
  const TeaserListDesign({super.key});

  @override
  State<TeaserListDesign> createState() => _TeaserListDesignState();
}

class _TeaserListDesignState extends State<TeaserListDesign> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final providervar = Provider.of<ProviderClass>(context);
    TeaserListModel listft =
        TeaserListModel.fromJson(TeaserListDummy.jsonData[index]);
    return Scaffold(
      backgroundColor: providervar.mode? Colors.white : Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          listft.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.go('/dashboard_design');
          },
          icon: Icon(
            listft.icon,
            color: Colors.white,
            size: 40,
          ),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search Teaser',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 0.1,
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 38,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int tindex) {
                TeaserListModel listft =
                    TeaserListModel.fromJson(TeaserListDummy.jsonData[tindex]);
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (tindex == 0) {
                          context.go('/teaser_screen_1_design');
                        } else if (tindex == 1) {
                          context.go('/teaser_screen_2_design');
                        } else if (tindex == 2) {
                          context.go('/teaser_screen_3_design');
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 2),
                            image: DecorationImage(
                              image: AssetImage(listft.imagepath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
