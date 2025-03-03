import 'package:flutter/material.dart';

class ChatInterface extends StatefulWidget {
  const ChatInterface({super.key});

  @override
  State<ChatInterface> createState() => _ChatInterfaceState();
}

class _ChatInterfaceState extends State<ChatInterface> {
 TextEditingController _textController = TextEditingController();
 bool showIcons = true;
 Icon sent = Icon(Icons.mic,color: Colors.black,);
 List<String> messages = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "User 1",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.videocam_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.phone_outlined, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, color: Colors.white))
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (BuildContext, Index) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                    ),
                    color: const Color.fromARGB(255, 57, 108, 59),
                  ),
                  child: Row(children: [
                    Text(messages[Index],style: TextStyle(color: Colors.white,fontSize: 18),),
                    SizedBox(width: 5,),
                    Text("10:54 am",style: TextStyle(color:Colors.white70,fontSize: 13),),
                    Icon(Icons.done_all,color: Colors.white70,size: 15,)
                  ]),
                ),
            );
          }),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 47, 52, 53),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.add_reaction, color: Colors.white70)),
                      Expanded(
                        child: TextField(
                          onChanged: (value){
                            setState(() {
                              if(!_textController.text.isEmpty)
                              {
                                showIcons=false;
                                sent=Icon(Icons.send,color: Colors.black,size: 20,);
                              }
                              else{
                                showIcons=true;
                                sent = Icon(Icons.mic,color: Colors.black,);
                              }
                            });
                          },
                          controller: _textController,
                          style: TextStyle(color: Colors.white),
                          cursorColor: const Color.fromARGB(255, 58, 249, 64),
                          decoration: InputDecoration(
                              hintText: "Message",
                              hintStyle: TextStyle(color: Colors.white70),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.attach_file_outlined,color: Colors.white70)),
                      if(showIcons)...[
                        SizedBox(width: 5,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.currency_rupee_sharp,color: Colors.white70,)),
                        SizedBox(width: 5,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera_outlined,color: Colors.white70,)),
                      ]
                      else...[

                      ]
                    ],
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent
                ),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      if(!_textController.text.isEmpty)
                      {
                        messages.add(_textController.text);
                        _textController.clear();
                        showIcons = true;
                        sent = Icon(Icons.mic,color: Colors.black,);
                      }
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 58, 249, 64),
                    ),
                    child: sent
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    ));
  }
}
