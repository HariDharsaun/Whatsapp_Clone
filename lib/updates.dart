import 'package:flutter/material.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}