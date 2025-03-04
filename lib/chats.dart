import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls.dart';
import 'package:whatsapp_clone/chat_interface.dart';
import 'package:whatsapp_clone/groups.dart';
import 'package:whatsapp_clone/updates.dart';

class StaticPage extends StatefulWidget {
  StaticPage({super.key});

  @override
  State<StaticPage> createState() => _StaticPageState();
}

class _StaticPageState extends State<StaticPage> {
  final List<Widget> pages = [UserChats(),UpdatesPage(),CommunityPage(),CallsPage()];

  int curr_index = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: curr_index,
        children: pages,
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              selectedItemColor: const Color.fromARGB(255, 58, 249, 64),
              unselectedItemColor: Colors.white,
              currentIndex: curr_index,
              onTap: (index) {
                setState(
                  () {
                    curr_index = index;
                  },
                );
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.update),
                  label: "Updates",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.groups_3_outlined), label: "Communities"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.call_outlined), label: "Calls"),
              ]),
      ),
    );
  }
}

class UserChats extends StatefulWidget {
  const UserChats({super.key});

  @override
  State<UserChats> createState() => _UserChatsState();
}

class _UserChatsState extends State<UserChats> {

  Widget chats(String title, String subtitle, String time) {
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatInterface(title)));
      },
      textColor: Colors.white,
      leading: Container(
          width: 50,
          height: 50,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.blueGrey,
          ),
          child: Icon(
            Icons.person,
            color: Colors.white,
          )),
      title: Text(title),
      subtitle: Row(
        children: [
          Icon(Icons.done_all,color: Colors.blue,size: 15,),
          SizedBox(width: 5,),
          Text(
          subtitle,
          style: TextStyle(color: Colors.white70),
        ),
        ]
      ),
      trailing: Text(time),
    );
  }

  final List<List<String>> names = [
    ["Thalapathy","Leo 2 varumaa naa?","3:16 pm"],["Crush", "Naalaiki Movie poolaama?","10.00 pm"],
    ["Samantha","Hi Hari,I am your big fan", "5:25 pm"],["Priyanka Mohan","You looks beautifull", "3:54 pm"],
    ["Trisha","Hi SweetHeart...", "3:28 pm"],["Kari Kada Bhai","10 Kilo kari kudu bhai","4:56 pm"],
    ["Manitha Kadavul","Kadavuleyyyy Ajitheeyyyy...", "2.25 pm"],["Thala","Cup uh mukkiyoom thala", "11:42 am"],
    ["Kayadu Lohar","Dragon movie super kaaa...", "9.07 am"],["Saiman","What Bro,It's very Wrong Bro....", "2.25 pm"]
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.photo_camera_outlined,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ))
          ],
        ),
        body: Stack(children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 10, right: 10, top: 3),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 47, 53, 56),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 10),
                    child: Icon(Icons.search, color: Colors.white70),
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                          hintText: "Ask Meta AI or Search",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none),
                    ),
                  ),
                ]),
              ),
              //Archived Container
              // Container(
              //   width: double.infinity,
              //   margin: EdgeInsets.only(left: 10, right: 10, top: 3),
              //   padding: EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //     color: Colors.black,
              //   ),
              //   child: Row(
              //     children: [
              //       Container(
              //           margin: EdgeInsets.only(right: 30, left: 10),
              //           child: Icon(
              //             Icons.archive_outlined,
              //             color: Colors.white,
              //           )),
              //       Text(
              //         "Archived",
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 15),
              //       )
              //     ],
              //   ),
              // ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListView.builder(
                    itemCount: names.length,
                    itemBuilder: (context,Index){
                      return chats(names[Index][0], names[Index][1], names[Index][2]);
                    },
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 20,
            bottom: 30,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color.fromARGB(255, 58, 249, 64),
              child: Icon(
                Icons.add_comment,
                color: Colors.black,
              ),
            ),
          ),
        ]
        ),
      ),
    );
  }
}