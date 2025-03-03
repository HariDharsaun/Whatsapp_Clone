import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});
  static const List<String> lst = ["Crush","Sri Divya","Malavika Manoj","Thalapathy","Manitha Kadavul","Surya","Samantha","Trisha","Kayadu Lohar"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Calls",
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
                    Icons.search,
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
              title: Text("Favourites",style: TextStyle(color: Colors.white70),),
            ),
            ListTile(
              onTap: (){},
              leading: Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 58, 249, 64),
                ),
                child: Icon(Icons.favorite,color: Colors.black,),
              ),
              title: Text("Add favourite",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              title: Text("Recent",style: TextStyle(color: Colors.white70),),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: lst.length,
              itemBuilder: (BuildContext,Index){
                return ListTile(
                  leading: InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      width:50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                      ),
                      child: Icon(Icons.person,size: 35,color: Colors.white70),
                    ),
                  ),
                  title: Text(lst[Index],style: TextStyle(color: Colors.white),),
                  subtitle: Row(
                    children: [
                      Icon(Icons.arrow_outward,color:const Color.fromARGB(255, 58, 249, 64),size: 15,),
                      SizedBox(width: 5),
                      Text("01 March, 12.00 am",style: TextStyle(color: Colors.white70),)
                    ]
                  ),
                  trailing: Icon(Icons.call_outlined,color: Colors.white,),
                );
              })
          ],
        ),
      ),
    );
  }
}