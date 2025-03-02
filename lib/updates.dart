import 'package:flutter/material.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  Widget status(String name,String time)
  {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromARGB(255, 46, 66, 75),
          border: Border.all(
            color: Colors.blueGrey,
            width: 2
          )
        ),
      ),
      title: Text(name,style: TextStyle(color: Colors.white70)),
      subtitle: Text(time,style: TextStyle(color: Colors.white70)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Updates",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.qr_code_scanner,color: Colors.white,)
            ),

            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.search,color: Colors.white,)
            ),

            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.more_vert,color: Colors.white,)
            )
          ],
        ),
        body: Theme(
          data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ), 
          child: ListView(
            children: [
              ListTile(
                leading: Text("Status",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              ListTile(
                leading: Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueGrey,
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [Positioned(
                              right: -10,
                              bottom: -10,
                              child: Icon(
                                Icons.add_circle,
                                color: const Color.fromARGB(255, 58, 249, 64),
                              ),
                            ),]
                          )),
                title: Text("My Status",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                subtitle: Text("Tap to add status update",style: TextStyle(color: Colors.white70),),
              ),
              ExpansionTile(
                shape: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                title: Text("Recent updates",style: TextStyle(color: Colors.white70,fontSize: 15)) ,
                children: [
                  status("Surya", "6:00 am"),
                  status("Vishnu frnd", "5:13 am"),
                  status("Appa", "Yesterday"),
                  status("Amma", "Yesterday"),
                ],
              ),
              ExpansionTile(
                shape: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                title: Text("Viewed updates",style: TextStyle(color: Colors.white70,fontSize: 15)) ,
                children: [
                  status("Surya", "6:00 am"),
                  status("Vishnu frnd", "5:13 am"),
                  status("Appa", "Yesterday"),
                  status("Amma", "Yesterday"),
                ],
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("Channels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(height: 10,),
                    Text("Stay updated on topics that matter to you.Find channels to follow below.",style: TextStyle(color: Colors.white70,fontSize: 15),)
                  ]
                ),
              ),
              ListTile(
                leading: Text("Find channels to follow",style: TextStyle(color: Colors.white70,fontSize: 15)),
              ),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    shape: BoxShape.circle,
                  ),
                ),
                title: Text("TV9 Telugu",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                subtitle: Text("6.6M followers",style: TextStyle(color: Colors.white70),),
                trailing: InkWell(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 69, 132, 71),
                    ),
                    child: Text("Follow",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}