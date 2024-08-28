import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool function = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/');
          },
        ),
        title: const Text(
          'Instagram',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.pinkAccent, Colors.deepOrangeAccent])),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.favorite, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.message, color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('nayan3.jpg'),
              ),
              title: Text(
                'nayantara_official',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('3 hours ago'),
              trailing: Icon(Icons.more_vert),
            ),
            Image.asset(
              'nayan1.jpg',
              fit: BoxFit.cover,
              height: 350,
              width: 500,
              alignment: Alignment.topCenter,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        icon: Icon(
                          function ? Icons.favorite_border : Icons.favorite,
                          color: function ? Colors.black : Colors.pinkAccent,
                        ),
                        onPressed: () {
                          setState(() {
                            function = !function;
                          });
                        },
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Icon(Icons.mode_comment_outlined),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Icon(Icons.share_outlined),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 400.0, top: 8.0),
              child: Text(
                '99,996 likes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_sharp, color: Colors.black),
              label: 'add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.radio, color: Colors.black), label: 'radio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.black),
              label: 'account')
        ],
      ),
    );
  }
}
