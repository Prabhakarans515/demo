import 'package:cinehub/bottom_navigation/profile_dummy.dart';
import 'package:cinehub/bottom_navigation/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileDesignPage extends StatefulWidget {
  const ProfileDesignPage({super.key});

  @override
  State<ProfileDesignPage> createState() => _ProfileDesignPageState();
}

class _ProfileDesignPageState extends State<ProfileDesignPage> {
  late Map<String, dynamic> value;
  late ProfileModel profile;
  @override
  void initState() {
    value = ProfileDummy.jData;
    profile = ProfileModel.fromJson(value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leading: IconButton(
          onPressed: () {
            context.go('/dashboard_design');
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
            size: 40,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hi!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0, bottom: 5.0),
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 28,
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: 20,
                width: 150,
                child: Text(
                  'Edit Your Profile  >',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage('assets/man3.jpg'),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 10.0),
              child: Text(
                profile.recent,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Container(
                //  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 15.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 8,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0.2,
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey,
                              image: DecorationImage(
                                image: AssetImage(profile.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0, left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                profile.moviename,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.0),
                                child: Text(
                                  profile.language,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 19.0),
                                child: Row(
                                  children: [
                                    Text(
                                      profile.date,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.5,
                                      ),
                                    ),
                                    Text(
                                      profile.time,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.5,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.0),
                                child: Text(
                                  profile.theatre,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.0),
                                child: Text(
                                  profile.ticket,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.5,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                            height: 30,
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green[800],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Text(
                                profile.button,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.0, bottom: 5.0),
                          child: Text(
                            '|',
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            profile.text,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset(
                          profile.emoji,
                          height: 60,
                          width: 60,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: profile.icon.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      profile.icon[index],
                      color: Colors.white,
                    ),
                    title: Text(
                      profile.title[index],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      profile.subtitle[index],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        profile.icon1,
                        size: 15,
                      ),
                      color: Colors.white,
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
