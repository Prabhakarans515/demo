import 'package:flutter/material.dart';
class CustomProject extends StatefulWidget {
  final String text;
  final IconData icon;
  final IconData icon1;
  final IconData icon2;
  final TextStyle textStyle;
  final TextStyle textStyle1;
  final VoidCallback onpressed;
  final VoidCallback onpressed1;
  final VoidCallback onpressed2;
  final Color color;
  final Color color1;
  final Color color2;
  final String text1;

  const CustomProject(
      {
    super.key,
    required this.text,
    required this.icon,
    required this.textStyle,
    required this.onpressed,
        required this.color,
        required this.icon1,
        required this.onpressed1,
        required this.color1,
        required this.text1,
        required this.textStyle1,
        required this.icon2,
        required this.onpressed2, required this.color2}
      );

  @override
  State<CustomProject> createState() => _CustomProjectState();
}

class _CustomProjectState extends State<CustomProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.text,style: widget.textStyle,
        ),
        actions: [
          IconButton(onPressed: widget.onpressed1, icon: Icon(widget.icon1,color: widget.color1,)),
          IconButton(onPressed: widget.onpressed, icon:Icon( widget.icon,color: widget.color,)),
          IconButton(onPressed: widget.onpressed2, icon: Icon(widget.icon2,color:widget.color2 ,))
        ],


      ),
      body: Center(
        child:Text(widget.text1,style: widget.textStyle1,) ,
      ),
    );
  }
}


