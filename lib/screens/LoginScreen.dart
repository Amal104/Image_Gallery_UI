import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_go_router/values/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login Screen',style:Styles().LoginTextStyle(Colors.deepPurple, 30.0)),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () => context.go('/Home'), child: Text('Login'))
          ],
        ),
      ),
    );
  }
}