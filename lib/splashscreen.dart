import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pemrograman_mobile/halaman_awal.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen>{
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 4), () { 
     Navigator.of(context) 
     .pushReplacement(MaterialPageRoute(builder: (_) => halAwalState()));
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 67, 78),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),

            )
          ],
        ),
      ),
    );
  }
}