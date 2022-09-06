import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';

Future<void>getInfo()async{

DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

if(Platform.isAndroid){
  AndroidDeviceInfo AInfo = await deviceInfo.androidInfo;
}else if(Platform.isIOS){
  IosDeviceInfo iInfo = await deviceInfo.iosInfo;
}else{
  print('not found....');
}
}
