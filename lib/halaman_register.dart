import 'package:flutter/material.dart';
import 'package:pemrograman_mobile/halaman_login.dart';

class Register extends StatefulWidget{
  @override
  _HalamanRegister createState() => _HalamanRegister();

}

class _HalamanRegister extends State<Register> {
  TextEditingController usernameinput = TextEditingController();
  TextEditingController passwordinput = TextEditingController();
  TextEditingController passrepeatinput = TextEditingController();
  String message1 = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/loginregister.jpeg"),
                  // image :NetworkImage('https://i.pinimg.com/564x/7b/b8/a1/7bb8a1c2902ef64ebd058249a369de5e.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              
              child: Center(
                child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 80.0),),
                  Container(
                    child: Text("Sign Up", style: TextStyle( fontFamily: 'Roboto' ,fontSize: 33, color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    child: Text("Create new account", style: TextStyle( fontSize: 15, color: Colors.white), ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30.0),),
                  Center(
                child: Card(
                  elevation: 25,
                  shadowColor: Colors.black,
                  // color: Color.fromARGB(255,255,229,0),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: 
                  SizedBox(
                    width: 350,
                    height: 500,
                    child: 
                    Padding(
                      padding: const EdgeInsets.all(20.10),
                      child: 
                      Column(
                          children: 
                          [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 40.0),),
                                  Container(
                                    child: TextField(
                                      controller: usernameinput,
                                      maxLength: 50,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black), // Warna biru saat aktif
                                        ),
                                        
                                        border: new OutlineInputBorder(
                                          borderRadius: new BorderRadius.circular(50),
                                          borderSide: new BorderSide(color: Colors.black)
                                        ),
                                        filled: true,
                                        labelText: "Username",
                                        labelStyle: TextStyle(color: const Color.fromARGB(255, 26, 67, 78)),
                                        hintText: "Input Username",
                                        helperText: "Use ...@gmail.com",
                                        prefixIcon: Icon(Icons.supervisor_account, color: Color.fromARGB(255, 26, 67, 78)), //icon didepan
                                      ),
                                    )
                                  ),
                                  
                                  Container(
                                    padding: EdgeInsets.only(top: 20.0),
                                    child: TextFormField(
                                      controller: passwordinput,
                                      // obscureText: true,
                                      decoration: 
                                      InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black), // Warna biru saat aktif
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: new BorderRadius.circular(50),
                                          borderSide: new BorderSide(color: Colors.black)
                                        ),
                                        filled: true,
                                        // fillColor: Color.fromARGB(255, 82, 82, 82).withOpacity(0.6),
                                        labelText: "Password",
                                        labelStyle: TextStyle(color: const Color.fromARGB(255, 26, 67, 78)),
                                        hintText: "Make Password",
                                        helperText: "Use combination Password",
                                        // prefixIcon: Icon(Icons.supervisor_account), //icon didepan
                                        prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 26, 67, 78)), //icon didepan

                                        // suffixIcon: IconButton(
                                        //   icon: Icon(
                                        //     _obscureText ? Icons.visibility : Icons.visibility_off,
                                        //   ),
                                        //   onPressed: () {
                                        //     setState(() {
                                        //       _obscureText = !_obscureText; // Membalikkan status password tersembunyi atau tidak
                                        //     });
                                        //   },
                                        // ) //icon dibelakang
                                      ),
                                      
                                    )
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 20.0),
                                    child: TextFormField(
                                      controller: passrepeatinput,
                                      // obscureText: true,
                                      decoration: 
                                      InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black), // Warna biru saat aktif
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: new BorderRadius.circular(50),
                                          borderSide: new BorderSide(color: Colors.black)
                                        ),
                                        filled: true,
                                        // fillColor: Color.fromARGB(255, 82, 82, 82).withOpacity(0.6),
                                        labelText: "Repeat Password",
                                        labelStyle: TextStyle(color: const Color.fromARGB(255, 26, 67, 78)),
                                        hintText: "Repeat Password",
                                        helperText: message1,
                                        // prefixIcon: Icon(Icons.supervisor_account), //icon didepan
                                        prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 26, 67, 78)), //icon didepan
                                        
                                      ),
                                      
                                    )
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 50.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          
                                          onPressed: () {
                                            // Aksi yang ingin Anda lakukan saat tombol ditekan
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => Login()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0)
                                            ),
                                            primary: Color.fromARGB(255, 26, 67, 78), // Warna latar belakang tombol
                                            onPrimary: Colors.white, // Warna teks tombol (saat tombol tidak aktif)
                                            fixedSize: Size(120, 50),
                                          ),
                                          child: Text('BACK', style: TextStyle(fontFamily: 'Roboto'),),
                                          
                                        ),
                                        // SizedBox(width: 10.0),
                                        Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0),),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Aksi yang ingin Anda lakukan saat tombol ditekan
                                            String usernameinput1 = usernameinput.text;
                                            String passwordinput1 = passwordinput.text;
                                            String passrepeatinput1 = passrepeatinput.text;
                                            

                                            if ((usernameinput1.isEmpty || passwordinput1.isEmpty || passrepeatinput1.isEmpty) || !(passwordinput1 == passrepeatinput1)) {
                                              setState(() {
                                                message1 = ("Isi Username dan password");
                                              });
                                            } else {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Text("Berhasil buat Akun"),
                                                    content: Text("Silahkan Sign menggunakan Username dan Password yang sudah di daftarkan"),
                                                    actions: [
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.of(context).pop(); // Tutup dialog
                                                          // Arahkan ke halaman sign-in
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) => Login(),
                                                            ),
                                                          );
                                                        },
                                                        child: Text("OK"),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                              };
                                          },
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0)
                                            ),
                                            primary: Color.fromARGB(255, 26, 67, 78), // Warna latar belakang tombol
                                            onPrimary: Colors.white, // Warna teks tombol (saat tombol tidak aktif)
                                            fixedSize: Size(120, 50),
                                          ),
                                          child: Text('SUBMIT', style: TextStyle(fontFamily: 'Roboto'),),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ),
                          ],
                        ),
                      ),
                  ),
                ),
              )
                ],
              ),
              ) 
            ),
          ],
        )
        
      ),
    );
  }
}

