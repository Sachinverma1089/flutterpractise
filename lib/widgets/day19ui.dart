import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({super.key});
  _Day19State createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                        height: 350,
                        child: Stack(
                          children: [
                            Positioned(
                                child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://publications.chitkara.edu.in/wp-content/uploads/2020/09/nmbr.jpg'))),
                            )),
                            Positioned(
                              top: 20,
                              left: 10,
                              child: Container(
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                  color: Colors.blue,
                                  weight: 50,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              right: 10,
                              child: Container(
                                child: Icon(
                                  Icons.heart_broken,
                                  size: 30,
                                  color: Colors.blue,
                                  weight: 50,
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 24,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://yt3.googleusercontent.com/5oxLkYPIbAc4zfexN8VEWYJOSfiGd1JbYbp5Nlr4y1sv8M26-3dx4HXR7pC1fXe0c8yXkJnddA=s900-c-k-c0x00ffffff-no-rj'),
                                  radius: 50,
                                )),
                          ],
                        ))),
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Madrid City Tour for Designers",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "This is a random description of a topic",
                    style: TextStyle(color: Colors.grey.shade200, fontSize: 10),
                  )
                ],
              ),
            ),
            Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rowIconText('20', Icons.favorite_rounded),
                    rowIconText('34', Icons.upload),
                    rowIconText('82', Icons.message),
                    rowIconText('295', Icons.face),
                  ],
                )),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  "A computer The results can be quite surprising.The software can regurgitate random text that is controlled by the proportion of characters. "),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Row(children: [
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(icon)
        ])
      ],
    );
  }
}
