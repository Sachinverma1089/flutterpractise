import 'package:flutter/material.dart';
import 'package:practiseapp/widgets/alert.dart';
import 'package:practiseapp/widgets/dismissible.dart';
import 'package:practiseapp/widgets/drawer.dart';
import 'package:practiseapp/widgets/snackbar.dart';

int selectedindex = 0;
List<Widget> widgets = [
  Text("Home"),
  Text("Search"),
  Text("Add"),
  Text("Profile"),
];

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int selectedindex = 0;
  PageController pageController = PageController();
  // List<Widget> widgets = [
  //   Text("Home"),
  //   Text("Search"),
  //   Text("Add"),
  //   Text("Profile"),
  // ];
  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom Navigation Widget"),
      //   backgroundColor: Colors.green,
      // ),
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DrawerWidget(),
          DismissibleWidget(),
          SnackbarWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
