import 'package:flutter/material.dart';
import 'package:pemrograman_mobile/halaman_register.dart';
import 'package:pemrograman_mobile/navigationbar.dart';
// import 'package:pemrograman_mobile/home1.dart';

class Login extends StatefulWidget{
  @override
  _HalamanLogin createState() => _HalamanLogin();

}

class _HalamanLogin extends State<Login> {
  TextEditingController usernameinput = TextEditingController();
  TextEditingController passwordinput= TextEditingController();
  
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
                    child: Text("Sign in", style: TextStyle( fontFamily: 'Roboto' ,fontSize: 33, color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    child: Text("Login to your account", style: TextStyle( fontSize: 15, color: Colors.white), ),
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
                                          borderSide: new BorderSide(color: const Color.fromARGB(255, 26, 67, 78))
                                        ),
                                        filled: true,
                                        // fillColor: Color.fromARGB(255, 82, 82, 82).withOpacity(0.6),
                                        labelText: "Username",
                                        labelStyle: TextStyle(color: const Color.fromARGB(255, 26, 67, 78)),
                                        hintText: "Masukkan Username",
                                        helperText: "Gunakan ...@gmail.com",
                                        prefixIcon: Icon(Icons.supervisor_account, color: const Color.fromARGB(255, 26, 67, 78)), //icon didepan
                                        
                                      ),
                                    )
                                  ),
                                  
                                  Container(
                                    padding: EdgeInsets.only(top: 20.0),
                                    child: TextField(
                                      controller: passwordinput,
                                      obscureText: true,
                                      decoration: 
                                      InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black), // Warna biru saat aktif
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: new BorderRadius.circular(50),
                                          borderSide: new BorderSide(color: const Color.fromARGB(255, 26, 67, 78))
                                        ),
                                        filled: true,
                                        // fillColor: Color.fromARGB(255, 82, 82, 82).withOpacity(0.6),
                                        labelText: "Password",
                                        labelStyle: TextStyle(color: const Color.fromARGB(255, 26, 67, 78)),
                                        hintText: "Masukkan Password",
                                        helperText: "Forgot password?",
                                        // prefixIcon: Icon(Icons.supervisor_account), //icon didepan
                                        prefixIcon: Icon(Icons.lock, color: const Color.fromARGB(255, 26, 67, 78)), //icon didepan

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
                                              MaterialPageRoute(builder: (context)=> Register())

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
                                          child: Text('REGISTER', style: TextStyle(fontFamily: 'Roboto'),),
                                          
                                        ),
                                        // SizedBox(width: 10.0),
                                        Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0),),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Aksi yang ingin Anda lakukan saat tombol ditekan
                                            String usernamebenar = "yuren";
                                            String passwordbenar = "1234";
                                            if (usernamebenar == usernameinput.text && passwordbenar == passwordinput.text){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => navigationbar()), // Ganti 'HalamanTujuan' dengan nama halaman tujuan Anda
                                              );
                                            } else {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Text("Login Gagal"),
                                                    content: Text("Username atau Password salah."),
                                                    actions: [
                                                      //
                                                    ],
                                                  );
                                                },
                                              );
                                            }
                                            
                                          },
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0)
                                            ),
                                            primary: Color.fromARGB(255, 26, 67, 78), // Warna latar belakang tombol
                                            onPrimary: Colors.white, // Warna teks tombol (saat tombol tidak aktif)
                                            fixedSize: Size(120, 50),
                                          ),
                                          child: Text('SIGN IN', style: TextStyle(fontFamily: 'Roboto'),),
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

