import 'package:flutter/material.dart';

class bangundatar extends StatefulWidget {
  const bangundatar({super.key});

  @override
  State<bangundatar> createState() => _bangundatarState();
}

class _bangundatarState extends State<bangundatar> {
  TextEditingController alas = TextEditingController();
  TextEditingController tinggis = TextEditingController();
  TextEditingController tinggip = TextEditingController();
  String hasil ="";

  void hitungVolume(){
    double alasController = double.parse(alas.text);
    double tinggisController = double.parse(tinggis.text);
    double tinggipController = double.parse(tinggip.text);
    
    double volume = ((1/2)*alasController*tinggisController)*tinggipController;

    setState(() {
      hasil = "${volume.toStringAsFixed(2)} cm^3";
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 67, 78),
      appBar: AppBar(
        title: Text("BANGUN DATAR",
        style: TextStyle(
              color: Colors.white,
              fontFamily: 'Arial',
              fontSize: 25,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.0,
            ),
        ),
        backgroundColor: const Color.fromARGB(255, 26, 67, 78),
        elevation: 0.0,
        toolbarHeight: 70,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 25,)),
          Center(
            child: Text(
              'Menghitung Volume', 
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Arial',
                fontSize: 30,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.0,
                
                
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Center(
            child: Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 210, 194, 248),
                  child: SizedBox(
                    width: 300,
                    height: 560,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 126, 84, 210),
                            radius: 80,
                            child: CircleAvatar( 
                            backgroundImage: AssetImage("assets/prisma.jpg"), //NetworkImage
                            radius: 73,
                            ), //CircleAvatar
                          ), //CircleAvatar
                          SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            'Prisma Segitiga',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          SizedBox(
                            height: 10,
                          ), //SizedBox
                          TextField(
                            controller: alas,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white), // Warna biru saat aktif
                              ),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(50),
                                borderSide: new BorderSide(color: Colors.white)
                              ),
                              filled: true,
                              labelText: "Alas Segitiga",
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          TextField(
                            controller: tinggis,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white), // Warna biru saat aktif
                              ),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(50),
                                borderSide: new BorderSide(color: Colors.white)
                              ),
                              filled: true,
                              labelText: "Tinggi Segitiga",
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          TextField(
                            controller: tinggip,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white), // Warna biru saat aktif
                              ),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(50),
                                borderSide: new BorderSide(color: Colors.white)
                              ),
                              filled: true,
                              labelText: "Tinggi Prisma",
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5)),
                          SizedBox(
                            width: 135,
                            child: InkWell(
                              onTap: () {
                                hitungVolume();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.touch_app,
                                      color: Color.fromARGB(255, 126, 84, 210),
                                    ),
                                    Text(
                                      'Hitung Volume',
                                      style: TextStyle(color: Color.fromARGB(255, 126, 84, 210)),
                                    ),
                                  ],
                                ), //Row
                              ), //Padding
                            ), //RaisedButton
                          ),
                          Padding(padding: EdgeInsets.only(top: 15)),
                          Text(
                            hasil,
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 100, 67, 166),
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), 
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ),
          ),
        ],
      ),
    );
  }
}