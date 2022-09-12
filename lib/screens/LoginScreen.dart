
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_go_router/values/styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 TextEditingController _textcontroller = TextEditingController();

 @override
  void initState() {
    getSavedData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SaveData();
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _textcontroller,
            ),
            ElevatedButton(onPressed: () => context.go('/mainpage'), child: Text('Login'))
          ],
        ),
      ),
    );
  }

  Future<void>SaveData()async{
    final sharedpref = await SharedPreferences.getInstance();
    await sharedpref.setString('save_value', _textcontroller.text);
  }

  Future<void>getSavedData(BuildContext context)async{
    final sharedprefs = await SharedPreferences.getInstance();
    final value = sharedprefs.getString('save_value');
    if(value != null){
      context.go('/mainpage');
    }
  }
}
