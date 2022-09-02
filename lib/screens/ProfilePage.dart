import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import '../values/styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Profile Page',style: Styles().TextStyle),
          SizedBox(height: 30.0,),
          TextButton(onPressed: () => context.push('/Home') , child: Text('Go Back to Home Page'))
        ],
      ),),
    );
  }
}