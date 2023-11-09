import 'package:flutter/material.dart';
import 'package:pemrograman_mobile/halaman_login.dart';

class halAwalState extends StatefulWidget {
  const halAwalState({super.key});

  @override
  State<halAwalState> createState() => _halAwalStateState();
}

class _halAwalStateState extends State<halAwalState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage("assets/loginregister.jpeg"),
            //   // image :NetworkImage('https://i.pinimg.com/564x/7b/b8/a1/7bb8a1c2902ef64ebd058249a369de5e.jpg'),

            //   fit: BoxFit.cover,
              
            // ),
            color: const Color.fromARGB(255, 26, 67, 78),
          ),
          // padding: EdgeInsets.only(top: 100, bottom: 50, left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/halAwal.png')
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  "Aplikasi Serba Bisa Untukmu!",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Arial',
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.0,
                    
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  "Fitur-fitur yang akan membantumu setiap saat",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Arial',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.0,
                    height: 2
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: GestureDetector(
                  onTap: () {
                    // Arahkan ke halaman selanjutnya ketika teks diklik
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: Text(
                    "Get started",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  "....    .............  .",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(255,195, 244, 77),
                      decorationThickness: 6.0,
                  ),
                ),
              )
            ],
          ),
      )
    );
  }
}