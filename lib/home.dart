import 'package:flutter/material.dart';
import 'package:pemrograman_mobile/halaman_login.dart';
import 'package:pemrograman_mobile/header_drawer.dart';
import 'package:pemrograman_mobile/info.dart';
import 'package:pemrograman_mobile/bmi.dart';
import 'package:pemrograman_mobile/konversiUang.dart';
import 'package:pemrograman_mobile/suhu.dart';
import 'package:pemrograman_mobile/bangundatar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Color> colors = [
    const Color.fromARGB(255, 229, 222, 246),
    const Color.fromARGB(255, 250, 243, 235),
    const Color.fromARGB(255, 235, 250, 239),
    const Color.fromARGB(255, 229, 222, 246),
    const Color.fromARGB(255, 250, 243, 235),
    const Color.fromARGB(255, 235, 250, 239),
    const Color.fromARGB(255, 229, 222, 246),
    const Color.fromARGB(255, 250, 243, 235),
    const Color.fromARGB(255, 235, 250, 239),
    const Color.fromARGB(255, 229, 222, 246),
  ];

  // AssetImage('assets/profil.jpg')
  // Image.asset('')
  final List<AssetImage> foto = [
    AssetImage('assets/gambar.png'),
    AssetImage('assets/profil.jpg'),    
    // AssetImage('assets/background.jpg'),
    AssetImage('assets/logo.png'),
    AssetImage('assets/profil.jpg'),    
    AssetImage('assets/backgroundlogin.jpeg'),
    AssetImage('assets/profil.jpg'),    
    AssetImage('assets/backgroundlogin.jpeg'),
    AssetImage('assets/loginregister.jpeg'),
    AssetImage('assets/gambar.png'),
    AssetImage('assets/logo.png'),
  ];

  final List<IconData> iconns = [
    Icons.fitness_center,
    Icons.payments,
    Icons.device_thermostat,
    Icons.change_history,
  ];
// Navigator.push(context, MaterialPageRoute(builder: (context)=>const Chart()));
  final List<Widget> link = [
    bmi(),
    konversiUang(),
    suhukonversi(),
    bangundatar(),
  ];

  final List<String> teks = [
    "BMI",
    "Keuangan",
    "Suhu",
    "Bangun Ruang"
  ];

  final List<String> keterangan = [
    "Body Mass Index",
    "Konversi Mata Uang",
    "Konversi Suhu",
    "Perhitungan Bangun Datar"
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: _scaffoldKey, // Inisialisasi _scaffoldKey
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 67, 78),
        elevation: 0.0,
        toolbarHeight: 100,
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.menu,
              size: 35,
              
            ),
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        )
      ),
      drawer: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: 250, // Lebar drawer
          height: 500, // Tinggi drawer
          margin: EdgeInsets.only(left: 10, top: 30),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20),
            ),
            child: ListView(
              padding: EdgeInsets.all(0),
              children: <Widget>[
                MyHeaderDrawer(),
                // MyHeaderDrawer(), //memanggil file
                // ListTile(
                //   leading: const Icon(Icons.people),
                //   title: const Text("Akun"),
                //   onTap: (){Navigator.pop(context);},
                // ),
                // ListTile(
                //   leading: const Icon(Icons.settings),
                //   title: const Text("Setting"),
                //   onTap: (){Navigator.pop(context);},
                // ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text("Info"),
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => infoapp()), // Ganti 'HalamanTujuan' dengan nama halaman tujuan Anda
                    );  
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Logout"),
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()), // Ganti 'HalamanTujuan' dengan nama halaman tujuan Anda
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 26, 67, 78),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                'Serba Bisa', 
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Arial',
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                  
                ),
                ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Text(
                'Aplikasi yang bisa digunakan untuk apa saja semoga membantu !', 
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Arial',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.0,
                  height: 2
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0), 
                  topRight: Radius.circular(40.0), 
                ),
                color: Colors.white, 
              ),
              width: double.infinity,
              height: 500,
              padding: EdgeInsets.only(top: 40, left: 30, right: 30),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Text(
                        'Fitur',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          // letterSpacing: 1.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 160)),
                      GestureDetector(
                        onTap: (){},
                        child: Text(
                          "See All >",
                          style: TextStyle(
                            color: Color.fromARGB(255, 75, 75, 75),
                            fontFamily: 'Arial',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10),),
                  Container(
                    height: 190,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index){
                        Color color = colors[index % colors.length];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              //navigation
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context)=>link[index]
                              ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: color,
                              ),
                              height: 140,
                              width: 140,
                              child: Center(
                                child: 
                                // Text(index.toString()),
                                ListView(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 20,)),
                                    Container(
                                      margin: EdgeInsets.only(left: 15),
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 45.0,
                                            width: 45.0,
                                            // decoration: BoxDecoration(
                                            //   image: DecorationImage(
                                            //     image: foto[index],
                                            //   ),
                                            //   borderRadius: BorderRadius.circular(15),
                                            // ),
                                            decoration: BoxDecoration(
                                              color: Colors.white, // Warna latar belakang ikon
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                // Icons.home, 
                                                iconns[index],
                                                color: const Color.fromARGB(255, 26, 67, 78), // Warna ikon
                                                size: 30, // Ukuran ikon
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 30, )),
                                    Container(
                                      margin: EdgeInsets.only(left: 17),
                                      child: Text(
                                        teks[index],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Arial',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 8)),
                                    Container(
                                      margin: EdgeInsets.only(left: 17, right: 17,),
                                      child: Text(
                                        keterangan[index],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Arial',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text(
                    'Prediction',
                    style: TextStyle(
                      color: Color.fromARGB(255, 128, 128, 128),
                      fontFamily: 'Arial',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20,),),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Colors.blue,
                          ),
                        );
                      },
                    ),
                  )
                  // Container(
                  //   height: 190,
                  //   child: ListView(
                  //     scrollDirection: Axis.vertical,
                  //     children: [
                  //       Card(
                  //         color: Colors.pink[100],
                  //         margin: const EdgeInsets.all(8),
                  //         child: InkWell(
                  //           onTap: (){},
                  //           splashColor: Colors.blue,
                  //           child: Center(
                  //             child: Column(
                  //               mainAxisSize: MainAxisSize.min,
                  //               children: const <Widget>[
                  //                 Icon(Icons.home, size: 70, color: Color.fromARGB(255, 26, 67, 78),),
                  //                 Text("Home", style: TextStyle(fontSize: 17.0),)
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Card(
                  //         margin: const EdgeInsets.all(8),
                  //         child: InkWell(
                  //           onTap: (){
                  //             Navigator.push(context, MaterialPageRoute(builder: (context)=>const Chart()));
                  //           },
                  //           splashColor: Colors.blue,
                  //           child: Center(
                  //             child: Column(
                  //               mainAxisSize: MainAxisSize.min,
                  //               children: const <Widget>[
                  //                 Icon(Icons.show_chart, size: 70, color: Colors.blueAccent,),
                  //                 Text("Graph", style: TextStyle(fontSize: 17.0),)
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                        // Card(
                        //   margin: const EdgeInsets.all(8),
                        //   child: InkWell(
                        //     onTap: (){},
                        //     splashColor: Colors.blue,
                        //     child: Center(
                        //       child: Column(
                        //         mainAxisSize: MainAxisSize.min,
                        //         children: const <Widget>[
                        //           Icon(Icons.tune, size: 70, color: Colors.blueAccent,),
                        //           Text("Control", style: TextStyle(fontSize: 17.0),)
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Card(
                        //   margin: const EdgeInsets.all(8),
                        //   child: InkWell(
                        //     onTap: (){},
                        //     splashColor: Colors.blue,
                        //     child: Center(
                        //       child: Column(
                        //         mainAxisSize: MainAxisSize.min,
                        //         children: const <Widget>[
                        //           Icon(Icons.home, size: 70, color: Colors.blueAccent,),
                        //           Text("Home", style: TextStyle(fontSize: 17.0),)
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Card(
                        //   margin: const EdgeInsets.all(8),
                        //   child: InkWell(
                        //     onTap: (){},
                        //     splashColor: Colors.blue,
                        //     child: Center(
                        //       child: Column(
                        //         mainAxisSize: MainAxisSize.min,
                        //         children: const <Widget>[
                        //           Icon(Icons.home, size: 70, color: Colors.blueAccent,),
                        //           Text("Home", style: TextStyle(fontSize: 17.0),)
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Card(
                        //   margin: const EdgeInsets.all(8),
                        //   child: InkWell(
                        //     onTap: (){},
                        //     splashColor: Colors.blue,
                        //     child: Center(
                        //       child: Column(
                        //         mainAxisSize: MainAxisSize.min,
                        //         children: const <Widget>[
                        //           Icon(Icons.home, size: 70, color: Colors.blueAccent,),
                        //           Text("Home", style: TextStyle(fontSize: 17.0),)
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Card(
                        //   margin: const EdgeInsets.all(8),
                        //   child: InkWell(
                        //     onTap: (){},
                        //     splashColor: Colors.blue,
                        //     child: Center(
                        //       child: Column(
                        //         mainAxisSize: MainAxisSize.min,
                        //         children: const <Widget>[
                        //           Icon(Icons.home, size: 70, color: Colors.blueAccent,),
                        //           Text("Home", style: TextStyle(fontSize: 17.0),)
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Card(
                        //   margin: const EdgeInsets.all(8),
                        //   child: InkWell(
                        //     onTap: (){},
                        //     splashColor: Colors.blue,
                        //     child: Center(
                        //       child: Column(
                        //         mainAxisSize: MainAxisSize.min,
                        //         children: const <Widget>[
                        //           Icon(Icons.home, size: 70, color: Colors.blueAccent,),
                        //           Text("Home", style: TextStyle(fontSize: 17.0),)
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                    //   ],
                    // ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}