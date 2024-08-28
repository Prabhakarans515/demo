import 'package:flutter/material.dart';
import 'package:task2/custom/customwidget.dart';

class NewPost extends StatefulWidget {
  NewPost({super.key});

  // final TextEditingController _passwordController = TextEditingController();
  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  final _formkey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text('Car Collection',
            style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.w400,color: Colors.white),
          ),
          actions: [
            IconButton(onPressed: () {},
                icon: Icon(Icons.search,size: 25,color: Colors.white)
            ),
            IconButton(onPressed: () {},
                icon: Icon(Icons.menu,size: 25,color: Colors.white)
            ),
          ],
          leading: IconButton(onPressed: () {},
            icon: Icon(Icons.arrow_back_outlined,size: 25,color: Colors.white),
          )
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('cars.jpeg'),
                fit: BoxFit.cover
            )
        ),
        child: Center(
          child: Form(
            key: _formkey ,
            child: Container(
              // padding: EdgeInsets.all(20.0),
              height: 400,
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Container(
                        width: 350,
                        // decoration: BoxDecoration(
                        //   border: Border.all(color: Colors.white),
                        //   borderRadius: BorderRadius.circular(30.0)
                        // ),
                        child: CustomContainer(hint: 'car name', icon: Icons.car_crash_sharp,)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Container(
                      width: 350,
                      // decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.white)
                      // ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70),
                                borderRadius: BorderRadius.circular(30.0)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70, ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            errorBorder: OutlineInputBorder(  borderSide: BorderSide(color: Colors.red ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            hoverColor: Colors.white,
                            contentPadding: EdgeInsets.only(left: 15.0,top: 10.0),
                            hintText: 'model name',
                            hintStyle: TextStyle(color: Colors.white70),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              // borderSide: BorderSide(width: 5)

                            ),
                            suffixIcon: Icon(Icons.near_me,color: Colors.white70,)
                        ),
                        validator: (val){
                          if(val==null || val.isEmpty){
                            return ('please enter the model name');
                          }
                          if(val.length<3){
                            return('Enter the crt name ');
                          }
                          return null;

                        },
                        // controller: widget._passwordController,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: ElevatedButton(onPressed:(){
                      if(_formkey.currentState!.validate()){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('processing')));

                      }
                    },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black45
                        ),
                        child:Text('Submit',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            color: Colors.white70),

                        )),
                  )

                ],
              ),

            ),
          ),
        ),
      ),


    );
  }
}