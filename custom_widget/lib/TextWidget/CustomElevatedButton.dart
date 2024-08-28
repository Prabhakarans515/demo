import 'package:flutter/material.dart';
class CustomElevated extends StatefulWidget {
  const CustomElevated({super.key, required String text});

  @override
  State<CustomElevated> createState() => _CustomElevatedState();
}

class _CustomElevatedState extends State<CustomElevated> {
  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              child: Text(
                  "Add to cart".toUpperCase(),
                  style: TextStyle(fontSize: 34)
              ),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)
                      )
                  )
              ),
              onPressed: () => null
          ),
          SizedBox(width: 10),
          ElevatedButton(
              child: Text(
                  "Buy now".toUpperCase(),
                  style: TextStyle(fontSize: 34)
              ),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.red)
                      )
                  )
              ),
              onPressed: () => null
          )
        ]
    );
  }
}



