import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(213, 13, 52, 228),
      body: Stack(
        children: [
          SizedBox(
            height: 260,
            child: Center(
                child: Image(
              image: NetworkImage('https://picsum.photos/200/300'),
            )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
                child: ColoredBox(
                  color: Color.fromARGB(255, 248, 242, 242),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28.0, vertical: 44.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.purple[100],
                            filled: true,
                            icon: Icon(
                                Icons.accessible_outlined), // letaknya di luar
                            prefixIcon: Icon(Icons.person),
                            prefixText: 'Name: ',
                            prefixStyle: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Nama Lengkap',
                            hintText: 'Nama lengkap lu...',
                            hintStyle: TextStyle(fontSize: 12),
                          ),
                          // obscureText: true, // untuk password/sandi
                          maxLength: 10,
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Ui extends StatefulWidget {
//   const Ui({super.key});

//   @override
//   State<Ui> createState() => _UiState();
// }

// class _UiState extends State<Ui> {
//   int selectedIndex = 0; // Untuk filter kategori

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         scrolledUnderElevation: 0,
//         title: RichText(
//           text: TextSpan(
//             style: TextStyle(
//               fontSize: 24,
//               fontFamily: 'Baru',
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//             children: [
//               TextSpan(text: 'Selling the '),
//               TextSpan(
//                 text: 'MOST POPULAR ',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Baru',
//                   color: Color(0xFF90C418),
//                 ),
//               ),
//               TextSpan(text: ' NFT is only here'),
//             ],
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // 🔹 Filter Kategori
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   _buildCategoryButton(0, "Trending"),
//                   SizedBox(width: 10),
//                   _buildCategoryButton(1, "By Artist"),
//                   SizedBox(width: 10),
//                   _buildCategoryButton(2, "ETH"),
//                   SizedBox(width: 10),
//                   _buildCategoryButton(3, "BTC"),
//                 ],
//               ),
//               SizedBox(height: 20),

//               // 🔹 Bagian Top Collection
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Top Collection 🔥',
//                     style: TextStyle(fontSize: 24),
//                   ),
//                   Icon(Icons.more_horiz, color: Colors.grey, size: 30),
//                 ],
//               ),
//               SizedBox(height: 20),

//               // 🔹 NFTCard (Gambar + Teks + Tombol)
//               NFTCard(),

//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // 🔹 Tambahkan metode _buildCategoryButton agar tidak error
//   Widget _buildCategoryButton(int index, String text) {
//     bool isSelected = selectedIndex == index;
//     return InkWell(
//       onTap: () {
//         setState(() {
//           selectedIndex = index;
//         });
//       },
//       borderRadius: BorderRadius.circular(20),
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         decoration: BoxDecoration(
//           color: isSelected ? Color(0xFF90C418) : Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: Colors.grey.shade300),
//         ),
//         child: Text(
//           text,
//           style: TextStyle(
//             color: isSelected ? Colors.white : Colors.black,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//     );
//   }
// }

// // 🔹 NFTCard Widget (Gambar + Teks + Tombol)
// class NFTCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: MediaQuery.of(context).size.width * 0.9, // Responsif
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20), // Sudut lengkung
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.1),
//               blurRadius: 10,
//               spreadRadius: 2,
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 🔹 Gambar NFT
//             ClipRRect(
//               borderRadius: BorderRadius.vertical(top: Radius.circular(20)), // Melengkung di atas
//               child: Image.asset(
//                 'asset/image/image/Imgae.png', // Pastikan path benar
//                 width: double.infinity,
//                 height: 250,
//                 fit: BoxFit.cover,
//               ),
//             ),

//             // 🔹 Informasi di Bawah Gambar
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // 🔹 Nama NFT & Timer
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Hypebest Apes G",
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Icon(Icons.access_time, size: 18, color: Colors.grey),
//                           SizedBox(width: 5),
//                           Text(
//                             "1h 23m 32s",
//                             style: TextStyle(color: Colors.grey, fontSize: 14),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: 10),

//                   // 🔹 Harga NFT & Tombol
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Highest Bid Today",
//                             style: TextStyle(color: Colors.grey, fontSize: 14),
//                           ),
//                           SizedBox(height: 5),
//                           Row(
//                             children: [
//                               Icon(Icons.currency_bitcoin, size: 18, color: Colors.black),
//                               SizedBox(width: 5),
//                               Text(
//                                 "2.23 ETH",
//                                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),

//                       // 🔹 Tombol Place Bid di sebelah kanan harga
//                       ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.black,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                         ),
//                         child: Row(
//                           children: [
//                             Icon(Icons.gavel, color: Colors.white, size: 18),
//                             SizedBox(width: 8),
//                             Text(
//                               "Place Bid",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: 16),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
