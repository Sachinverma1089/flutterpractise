import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: (Container(
          color: Colors.black,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://yt3.googleusercontent.com/5oxLkYPIbAc4zfexN8VEWYJOSfiGd1JbYbp5Nlr4y1sv8M26-3dx4HXR7pC1fXe0c8yXkJnddA=s900-c-k-c0x00ffffff-no-rj'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sachin Verma",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text("abc@gmail.com",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                    color: Colors.black,
                  )),
              ListTile(
                leading: Icon(Icons.trending_up),
                title: Text(
                  "Trending",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text(
                  "Shopping",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.music_note),
                title: Text(
                  "Music",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.movie_creation),
                title: Text(
                  "Films",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.broadcast_on_home),
                title: Text(
                  "Live",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.games),
                title: Text(
                  "Gaming",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.newspaper),
                title: Text(
                  "News",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.sports),
                title: Text(
                  "Sports",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.light),
                title: Text(
                  "Courses",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text(
                  "Fashion & beauty",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.broadcast_on_personal),
                title: Text(
                  "Pocasts",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        )),
      ),
      appBar: AppBar(
        title: Text("Drawer Widget"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(child: Text("Hey! There")),
      ),
    );
  }
}
