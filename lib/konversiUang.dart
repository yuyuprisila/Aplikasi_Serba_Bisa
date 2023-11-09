import 'package:flutter/material.dart';

class konversiUang extends StatefulWidget {
  const konversiUang({super.key});

  @override
  State<konversiUang> createState() => _konversiUangState();
}

class _konversiUangState extends State<konversiUang> {
  TextEditingController inputAmount = TextEditingController();
  final items = ['Rp ke Yen', 'Rp ke USD', 'Rp ke Won']; // Opsi konversi mata uang
  String? selectedOption;
  String hasil = "";

  void hitungKonversi(){
    double inputController = double.parse(inputAmount.text);
    if (selectedOption == 'Rp ke Yen') {
      double hasilKonversi = inputController / 105.24;  
      setState(() {
        hasil = "Hasil Konversi : ${hasilKonversi.toStringAsFixed(2)} Yen";
      });
    } else if (selectedOption == 'Rp ke USD') {
      double hasilKonversi = inputController / 15725.00; 
      setState(() {
        hasil = "Hasil Konversi : ${hasilKonversi.toStringAsFixed(2)} USD";
      });
    } else if (selectedOption == 'Rp ke Won') {
      double hasilKonversi = inputController / 11.99; 
      setState(() {
        hasil = "Hasil Konversi : ${hasilKonversi.toStringAsFixed(2)} Won";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Konversi Mata Uang",
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
        child: ListView(
          children: [
            TextField(
              controller: inputAmount,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.white),
                ),
                filled: true,
                labelText: "Jumlah Rupiah",
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Masukkan jumlah Rupiah",
                fillColor: const Color.fromARGB(255, 250, 243, 235),
                prefixIcon: Icon(Icons.monetization_on, color: Colors.black),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white, width: 4),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  iconSize: 36,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  isExpanded: true,
                  value: selectedOption,
                  items: items.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) => setState(() => selectedOption = value),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50.0, left: 100, right: 100),
              child: ElevatedButton(
                onPressed: hitungKonversi,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  primary: Color.fromARGB(255, 229, 222, 246),
                  onPrimary: Color.fromARGB(255, 107, 53, 246),
                  fixedSize: Size(50, 50),
                ),
                child: Text(
                  'Konversi',
                  style: TextStyle(fontFamily: 'Roboto'),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Center(
              child: Text(
                hasil,
                style: TextStyle(
                  color: const Color.fromARGB(255, 26, 67, 78),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 100),
              child: Image.asset(
                'assets/konversi.png',
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