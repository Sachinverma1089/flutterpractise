import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practiseapp/functions/databaseFunctions.dart';
import 'package:practiseapp/pages/pets.dart';

class DatabaseOptions extends StatefulWidget {
  const DatabaseOptions({super.key});
  _DatabaseOptionsState createState() => _DatabaseOptionsState();
}

class _DatabaseOptionsState extends State<DatabaseOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Database Options",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.exit_to_app),
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                    create('pets', 'kitty', 'jerry', 'cat', 5);
                  },
                  child: Text('Create')),
              ElevatedButton(
                  onPressed: () {
                    update('pets', 'tom', 'animal', 'tiger');
                  },
                  child: Text('Update')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PetsList()));
                  },
                  child: Text('Retrieve')),
              ElevatedButton(
                  onPressed: () {
                    delete('pets', 'kitty');
                  },
                  child: Text('Delete')),
            ],
          ),
        ),
      ),
    );
  }
}
