import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Communities",
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
                    Icons.more_vert,
                    color: Colors.white,
                  ))
            ],
          ),
        body: ListView(
          children: [
            ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        right: -5,
                        bottom: -5,
                        child: Icon(Icons.add_circle,color: const Color.fromARGB(255, 58, 249, 64),)
                      ),
                      Icon(Icons.groups_2_outlined,color: Colors.white70,size: 35),
                    ],
                  ),
                ),
                title: Text("New community",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
          ],
        ),
      ),
    );
  }
}