import 'package:chating/constants.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class Videocall extends StatefulWidget {
  final String callid;
  final String userid;
  const Videocall({super.key, required this.callid, required this.userid});

  @override
  State<Videocall> createState() => _VideocallState();
}

class _VideocallState extends State<Videocall> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:AppId,
      appSign:AppSign,
      userID:widget.userid,
      callID: widget.callid,
      userName:"user_name:${widget.userid}",
      config:ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
