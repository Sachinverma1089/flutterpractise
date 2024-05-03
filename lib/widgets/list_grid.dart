import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});
  _ListGridState createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Banana'];
  Map<String, dynamic> fruits_person = {
    'fruits': ['Orange', 'Apple', 'Mango', 'Banana'],
    'names': ['sachin', 'prince', 'prachi', 'Tanushka']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List And Grid"),
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body:
            //  Container(
            //   child: ListView.builder(
            //     itemCount: fruits.length,
            //     itemBuilder: (context, index) {
            //       return Card(
            //         child: ListTile(
            //           onTap: () {
            //             print(fruits_person['fruits'][index]);
            //           },
            //           leading: Icon(Icons.person),
            //           title: Text(fruits_person['fruits'][index]),
            //           subtitle: Text(fruits_person['names'][index]),
            //         ),
            //       );
            //     },
            //   ),
            // ),

            Container(
          child: GridView.builder(
            itemCount: fruits.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) {
              return Card(
                child: Center(child: Text(fruits[index])),
              );
            },
          ),
        ));
  }
}
