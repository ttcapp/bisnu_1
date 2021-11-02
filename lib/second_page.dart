import 'package:flutter/material.dart';

double conHeight=50;
double conWidth=50;

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          InkWell(
            onDoubleTap: (){
              setState(() {
                conHeight=50;
                conWidth=50;
              });
            },
            onTap: (){
            setState(() {
              conHeight=250;
              conWidth=250;
            });
          },
            child: AnimatedContainer(
              height: conHeight,
              width: conWidth,
              color: Colors.red,
                duration: Duration(milliseconds: 3000),

            ),
          ),
        ],
      ),
    );
  }
}
