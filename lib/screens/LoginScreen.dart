import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_go_router/values/styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
 TextEditingController _textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _textcontroller,
            ),
            ElevatedButton(onPressed: () => context.go('/Home'), child: Text('Login'))
          ],
        ),
      ),
    );
  }

  Future<void>SaveData()async{
    print(_textcontroller.text);
    final sharedpref = SharedPreferences.getInstance();
  }

}