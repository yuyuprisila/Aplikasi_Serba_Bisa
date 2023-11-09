// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Drawer Popup Card'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               Scaffold.of(context).openDrawer();
//             },
//             child: Icon(Icons.menu),
//           ),
//         ),
//         drawer: Align(
//           alignment: Alignment.topLeft,
//           child: Container(
//             width: 200, // Lebar drawer
//             height: 200, // Tinggi drawer
//             margin: EdgeInsets.only(left: 10, top: 25),
//             child: Card(
//               child: ListView(
//                 children: <Widget>[
//                   MyHeaderDrawer(), //memanggil file
//                   ListTile(
//                     leading: const Icon(Icons.people),
//                     title: const Text("Akun"),
//                     onTap: (){Navigator.pop(context);},
//                   ),
//                   ListTile(
//                     leading: const Icon(Icons.settings),
//                     title: const Text("Setting"),
//                     onTap: (){Navigator.pop(context);},
//                   ),
//                   ListTile(
//                     leading: const Icon(Icons.info),
//                     title: const Text("Info"),
//                     onTap: (){
//                       Navigator.pop(context);
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => infoapp()), // Ganti 'HalamanTujuan' dengan nama halaman tujuan Anda
//                       );  
//                     },
//                   ),
//                   ListTile(
//                     leading: const Icon(Icons.logout),
//                     title: const Text("Logout"),
//                     onTap: (){
//                       Navigator.pop(context);
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Login()), // Ganti 'HalamanTujuan' dengan nama halaman tujuan Anda
//                       );
//                     },
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
