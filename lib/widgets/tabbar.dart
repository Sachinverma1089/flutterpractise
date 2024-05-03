import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("WhatsAp"),
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                icon: Icon(
                  Icons.chat,
                ),
                text: 'CHATS',
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                ),
                text: 'STATUS',
              ),
              Tab(
                icon: Icon(
                  Icons.call,
                ),
                text: 'CALLS',
              ),
            ])),
        body: TabBarView(children: [
          Container(
            child: Center(
                child: Text(
              "CHATS",
              style: TextStyle(fontSize: 30),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              "STATUS",
              style: TextStyle(fontSize: 30),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              "CALLS",
              style: TextStyle(fontSize: 30),
            )),
          ),
        ]),
      ),
    );
  }
}
