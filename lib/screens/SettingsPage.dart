import 'dart:io';
import 'package:shimmer/shimmer.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Api/device_info.dart';
import '../components/BaseWidget.dart';

class SettingsPage extends StatefulWidget {

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String info = "Loading...";
  
  String? Ainfo,Iinfo;

@override
  void initState() {
    loadInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: Shimmer.fromColors(baseColor: Colors.grey,highlightColor: Colors.deepPurple,child: Text(info,style: GoogleFonts.quicksand(color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.bold),))),
      
      );
  }


void loadInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    if (kIsWeb) {
      WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
      Ainfo = '${webBrowserInfo.platform}\n${webBrowserInfo.appName}';
      setState(() {info = webBrowserInfo.toMap().toString();});
    }
    else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo; 
      Iinfo = '${iosInfo.name}\n${iosInfo.model}';
      setState(() {info = iosInfo.toMap().toString();});
    }
    else if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      Ainfo = 'Platform: ${androidInfo.brand}\nModel: ${androidInfo.model}'; 
      setState(() {info = Ainfo.toString();});
    }
  }
}