import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class Popups extends StatefulWidget {
  const Popups({super.key});

  @override
  State<Popups> createState() => _PopupsState();
}

class _PopupsState extends State<Popups> {
  final usrId=TextEditingController();
  final groupName=TextEditingController();
  final groupUsers=TextEditingController();
  final groupId=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
        position: PopupMenuPosition.under,
        icon: Icon(CupertinoIcons.add_circled),
        itemBuilder: (context){
      return [
        PopupMenuItem(
        value: "New Chat",
            child: ListTile(leading: Icon(CupertinoIcons.chat_bubble_2_fill),
            title: Text("New Chat",maxLines: 1,),
        onTap: () =>ZIMKit().showDefaultNewPeerChatDialog(context),)),
        PopupMenuItem(
            value: "New Group",
            child: ListTile(leading: Icon(CupertinoIcons.person_2),
              title: Text("New Group",maxLines: 1,),
              onTap: () =>ZIMKit().showDefaultNewGroupChatDialog(context),)),
        PopupMenuItem(
            value: "Join Group",
            child: ListTile(leading: Icon(CupertinoIcons.group),
              title: Text("Join Group",maxLines: 1,),
              onTap: () =>ZIMKit().showDefaultJoinGroupDialog(context),))
      ];
    });
  }
}
