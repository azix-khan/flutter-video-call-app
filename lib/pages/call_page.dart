import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_video_call_app/constants/constants.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final userId = Random().nextInt(9999);

class CallPage extends StatelessWidget {
  final String callID;
  const CallPage({super.key, required this.callID});

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: AppInfo.appId,
      appSign: AppInfo.appSign,
      userID: userId.toString(),
      userName: 'UserName: $userId',
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
