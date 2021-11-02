import 'package:flutter/material.dart';

List<String> stdName=[
  "Masum",
  "Masud",
  "Jakaria",
  "Josim",
  "Imran",
  "Bisnu",
  "Chinmoy",
];

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("List View Page",textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
        color: Colors.white),),
      ),
      body: Column(
        children: [
          Text("The Name of Students of Batch-D:",
            textAlign: TextAlign.center,style: TextStyle(fontSize: 40,
          color: Colors.pink
          ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: stdName.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 80,
                      color: Colors.deepPurpleAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(stdName[index],
                          textAlign: TextAlign.center,style: TextStyle(fontSize: 30,
                        color: Colors.cyan),),
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
