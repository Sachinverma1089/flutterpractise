import 'package:flutter/material.dart';

class Day20 extends StatefulWidget {
  const Day20({super.key});
  _Day20State createState() => _Day20State();
}

class _Day20State extends State<Day20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        title: Text(
          'excusemesachinn',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                height: 150,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                'https://yt3.googleusercontent.com/5oxLkYPIbAc4zfexN8VEWYJOSfiGd1JbYbp5Nlr4y1sv8M26-3dx4HXR7pC1fXe0c8yXkJnddA=s900-c-k-c0x00ffffff-no-rj'),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Text(
                            'Sachin Verma',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  profileDetails('99', 'Posts'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  profileDetails('779', 'Followers'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  profileDetails('100', 'Following'),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 40,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.blue)),
                                          onPressed: () {},
                                          child: Text(
                                            "Follow",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.blue,
                                    ),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue, width: 2),
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue.shade500),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'data:image/jpeg;base64,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u+tbaXR0YbqyEMrDfbsR2PcGZ9pXWJoebXoOBiqlotrsqORVVYEsbHFxa1EsDABip9GH3mjqGiakTj+EmcNqqRQWzVb3excktacohgLd6eI8n8tvrGJi09olR5XS2oslzD33m1Gcw2zLAPHGRywtgLNh8BJ28vnOvoOkakurG/Ie/wALmzbhg1TUGkKlZBv2Uh+/arfcE8tjGGJ7i5ldpsFTqxrsNT8TvxsABKn5HZgfzmxKt1Tp3ULcrIJ96FRv1CxPDyWrB5Y+OMX8Dg7eKlmw8h337HvudcHLq07TLK7WTMHh4pRrDvbbfSaXBCn42VmFm/fbgTBixolZ39PagmYqVHKZVala7zknwRiLjcLUsqL7tY1m55cSdyDv2mjj6Nql1dNdtebWBVp2PYfeVDN4d1nvbqyWEjdCDv2J7Rhi0rM2tbUoZwLHRnRfVlTbkR9uQ/WbEgPXXTd99lPuy37U6Xl1VtXcyMMkrV7uC4YM27J69jt3nKbR9X99NxOQ38IMvG3aoj3XiarD44CHxt/iFTHcg8tpcXFp7TCcqsK7l04pvzbkNl4/i5H029d5Veh9Pak7015IzUo9+S1x7yykVe6sHHIXu/E3Be3I7777Dc7Sro7QPAGq0ZGO3C3OttHisLa7abDuuysx9Ox3A33HnImJLpupU5KeJjW1WpyK8qnV15DzG49e825wOjNK93x2Z1sW6+1si4WCsHxD8IHGtiigIqABT5D57zvwEREBERAREQE+UUAbAAD5AbCfUQEREBERAT5ZQdtwOx3G48j9J9RAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERED//Z'),
                                    fit: BoxFit.cover),
                                color: Colors.orange,
                                shape: BoxShape.circle),
                          ),
                          Text('Cool')
                        ],
                      );
                    })),
            Divider(),
            Container(
                height: 50,
                color: Colors.green,
                child: DefaultTabController(
                    length: 4,
                    child: Scaffold(
                        appBar: AppBar(
                            bottom: TabBar(tabs: [
                      Tab(
                        icon: Icon(
                          Icons.grid_3x3,
                          size: 30,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.post_add_sharp,
                          size: 30,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.person_2_rounded,
                          size: 30,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.heart_broken,
                          size: 30,
                        ),
                      ),
                    ]))))),
            Expanded(
              child: Container(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1493612276216-ee3925520721?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tfGVufDB8fDB8fHww'),
                                  fit: BoxFit.cover),
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.all(5),
                          height: 150,
                          width: 150,
                        );
                      })),
            )
          ],
        ),
      ),
    );
  }

  Widget profileDetails(String text1, String text2) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
