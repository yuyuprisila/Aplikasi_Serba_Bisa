import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  TextEditingController tinggi = TextEditingController();
  TextEditingController berat = TextEditingController();
  String hasil ="";
  String kesimpulan ="";

  void hitungBmi(){
    double tinggiController = double.parse(tinggi.text);
    double beratController = double.parse(berat.text);
    
    double bmi = beratController/(tinggiController*tinggiController);

    setState(() {
      hasil = "BMI: ${bmi.toStringAsFixed(2)}";
    });

    if (bmi < 18.5) {
      kesimpulan = "Kurus";
    } else if (bmi >= 18.5 && bmi <= 25.0) {
      kesimpulan = "Normal";
    } else {
      kesimpulan = "Gemuk";
    } 
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BODY MASS INDEX",
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
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
        // color: const Color.fromARGB(255, 26, 67, 78),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            TextField(
              controller: tinggi,
              decoration: 
              InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Warna biru saat aktif
                ),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(50),
                  borderSide: new BorderSide(color: Colors.white)
                ),
                filled: true,
                labelText: "Tinggi",
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Masukkan Tinggi Anda (m)",
                helperText: "Contoh : 168cm -> 1.68",
                fillColor: const Color.fromARGB(255, 250, 243, 235),
                prefixIcon: Icon(Icons.height, color: Colors.black), //icon didepan

              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            TextField(
              controller: berat,
              decoration: 
              InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Warna biru saat aktif
                ),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(50),
                  borderSide: new BorderSide(color: Colors.white)
                ),
                filled: true,
                labelText: "Berat Badan",
                labelStyle: TextStyle(color:  Colors.black),
                hintText: "Masukkan Berat Badan Anda (Kg)",
                fillColor: const Color.fromARGB(255, 235, 250, 239),
                prefixIcon: Icon(Icons.scale, color:  Colors.black), //icon didepan

              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: hitungBmi,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      primary: Color.fromARGB(255, 229, 222, 246), // Warna latar belakang tombol
                      onPrimary: Color.fromARGB(255, 107, 53, 246), // Warna teks tombol (saat tombol tidak aktif)
                      fixedSize: Size(120, 50),
                    ),
                    child: Text('HITUNG', style: TextStyle(fontFamily: 'Roboto'),),
                    
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Center(
              child: Text(
                hasil,
                style: TextStyle(
                  color: Color.fromARGB(92, 83, 83, 83),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Center(
              child: Text(
                kesimpulan,
                style: TextStyle(
                  color: const Color.fromARGB(255, 26, 67, 78),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/bmi.png',
                height: 300,
                width: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}