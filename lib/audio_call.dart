import 'package:chating/constants.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class Audiocall extends StatefulWidget {
  final String callid;
  final String userId;
  const Audiocall({super.key, required this.callid, required this.userId});

  @override
  State<Audiocall> createState() => _AudiocallState();
}

class _AudiocallState extends State<Audiocall> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:AppId,
      appSign:AppSign,
      userID:widget.userId,
      callID: widget.callid,
      userName:"user_name:${widget.userId}",
      config:ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall(),
    );
  }
}
