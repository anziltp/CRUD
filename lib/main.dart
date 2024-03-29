import 'package:crud/api.dart';
import 'package:crud/banner.dart';
import 'package:crud/edit_user.dart';
import 'package:crud/home_page.dart';
import 'package:crud/home_page2.dart';
import 'package:crud/login.dart';
import 'package:crud/login_singup.dart';
import 'package:crud/number.dart';
import 'package:crud/otp.dart';
import 'package:crud/profile.dart';
import 'package:crud/signup.dart';
import 'package:crud/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crud/firebase_options.dart';

var w;
var h;

///comment by fijin
/// commnet 2

Future<void> main() async {

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( Crud());
}
class Crud extends StatelessWidget {
  const Crud({super.key});

  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    h=MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SplashScreen() ,
        theme: ThemeData(
          textTheme:GoogleFonts.ralewayTextTheme(),
        ),
      ),
    );

  }
}
