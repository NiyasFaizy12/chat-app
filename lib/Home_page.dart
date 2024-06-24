import 'package:chating/audio_call.dart';
import 'package:chating/pop_up.dart';
import 'package:chating/video_call.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class ZIMKitDemoHomePage extends StatefulWidget {
  final String username;
  const ZIMKitDemoHomePage({Key? key, required this.username}) : super(key: key);

  @override
  State<ZIMKitDemoHomePage> createState() => _ZIMKitDemoHomePageState();
}

class _ZIMKitDemoHomePageState extends State<ZIMKitDemoHomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title:  Text("Hii ${widget.username}"),
          actions: const [Popups()],
        ),
        body: ZIMKitConversationListView(
          onPressed: (context, conversation, defaultAction) {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return ZIMKitMessageListPage(
                  conversationID: conversation.id,
                  conversationType: conversation.type,
                  appBarActions: [
                    IconButton(onPressed: (){
                      String id="111111";
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Audiocall(
                          callid:id,
                          userId:conversation.id)));
                    }, icon: Icon(Icons.call)),
                    IconButton(onPressed: (){
                      String id="111111";
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Videocall(
                          callid:id,
                          userid:conversation.id)));
                    }, icon: Icon(Icons.videocam)),
                  ],
                );
              },
            ));
          },
        ),
      ),
    );
  }
}