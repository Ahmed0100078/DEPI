import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chats",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/m1.png'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.wrap_text),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.camera_alt),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.grey[300]),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 70,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buidStoryItem(),
                  separatorBuilder: (cotext, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: 50),
            ),
            SizedBox(height: 20,),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => SizedBox(height: 20,),
                itemCount: 50)
          ],
        ),
      ),
    );
  }

  Widget buidStoryItem() => Container(
        width: 50,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.deepOrange,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.green,
                )
              ],
            ),
          ],
        ),
      );

  Widget buildChatItem() => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/images/m1.png')
          ),
          Column(
            children: [
              Text('Khaled MOhamed'),
              Row(
                children: [
                  Text('Ahmed Mohamed is coming soon ya Khaled e7zar',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,),
                  Text('now'),
                  SizedBox(width: 80,),
                  Icon(Icons.check_circle,
                  color: Colors.grey,)
                ],
              )
            ],
          )
        ],
      );
}
