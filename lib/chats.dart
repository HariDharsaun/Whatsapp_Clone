import 'package:flutter/material.dart';
import 'package:whatsapp_clone/updates.dart';

class StaticPage extends StatefulWidget {
  StaticPage({super.key});

  @override
  State<StaticPage> createState() => _StaticPageState();
}

class _StaticPageState extends State<StaticPage> {
  final List<Widget> pages = [UserChats(),UpdatesPage(),Center(child: Text("Groups", style: TextStyle(color: Colors.white, fontSize: 20))),
    Center(child: Text("Calls", style: TextStyle(color: Colors.white, fontSize: 20))),];

  int curr_index = 1; 

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
                    icon: Icon(Icons.groups_3_outlined), label: "Groups"),
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
  final List<Widget> pages = [UserChats(), UpdatesPage()];
  Widget chats(String title, String subtitle, String time) {
    return ListTile(
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
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.white70),
      ),
      trailing: Text(time),
    );
  }

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
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 10, right: 10, top: 3),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 30, left: 10),
                        child: Icon(
                          Icons.archive_outlined,
                          color: Colors.white,
                        )),
                    Text(
                      "Archived",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListView(
                    children: [
                      chats("Eshwar college 2y sep24",
                          "GATEFORUM Coimbatore Academy:", "5:25 pm"),
                      chats("Probability & StatisticsClas...",
                          "valliganesh: Intriduction to random..", "3:54 pm"),
                      chats("CSE A (UNOFFICIAL GROUP)",
                          "varna: Hi one! Suggest your opinion", "3:28 pm"),
                      chats("SECE 2027 Group B", "Rajasekar bpsr: Video",
                          "3:16 pm"),
                      chats("Astranova 2k25",
                          "+91 93636 59506 joined using this gr...", "4:56 pm"),
                      chats("CSE - A(SOCIAL)",
                          "Sreemathy: Representative to mee...", "2.25 pm"),
                      chats("Radiant IT Services 6",
                          "Darshan Nibe Patil: Learn Dat...", "2.25 pm"),
                      chats("Guru Vishal CSE Sece",
                          "Sri Eshwar College of Engineering stu.", "11:42 am"),
                      chats("Suseendran CSE B Sece",
                          "Student OD form - Center for In..", "9.07 am"),
                      chats("Nithyasarathy (RM)", "hi how are you ?...",
                          "10.00 am"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 20,
            bottom: 50,
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
