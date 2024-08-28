import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const CustomButton({super.key,
    required this.iconData,
    required this.onPressed});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget> [
        Icon(widget.iconData,size: 50,color: Colors.purple,)
      ],
    );
  }
}
/*import 'package:flutter/material.dart';

class IconButton extends StatefulWidget {
  final IconData iconData;
  const IconButton({Key? key, required this.iconData}) : super(key: key);

  @override
  State<IconButton> createState() => _IconButtonState();
}

class _IconButtonState extends State<IconButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(widget.iconData, size: 50, color: Colors.purple,)
      ],
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Row(
          children: [
            IconButton(iconData: Icons.ac_unit),
          ],
        ),
      ),
    );
  }
}
*/