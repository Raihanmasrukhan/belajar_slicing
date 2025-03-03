import 'package:flutter/material.dart';

class Slicing extends StatelessWidget {
  const Slicing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Detailo',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Image.asset('asset/image/image/Monley.png'),
                  
            SizedBox(
              height: 20,
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                "#14415",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF4CAF50),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              
                ]
                
              ),    
               
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hypebest Apes A',
                  style: TextStyle(
                    fontFamily: 'Baru',
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                  Icon(
                    Icons.emoji_events,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Text(
                    "125 Sold",
                    style: TextStyle(
                      fontFamily: 'Baru',
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                      color: const Color.fromARGB(91, 90, 90, 90),
                    ),
                  ),
                 SizedBox(
                  width: 10,
                 ),
                 Icon(Icons.access_time_filled_rounded,
                 color: Color.fromARGB(91,90,90,90),
                 size: 12,
                 ),
                 
                  Text(
                    "1h 23m 32s",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color:  const Color.fromARGB(91,90,90,90),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              
              Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: List.generate(
    20, // Jumlah titik
    (index) => Icon(
      Icons.remove,
      size: 20, // Ukuran titik
      color: Colors.grey, // Warna titik
    ),
  ),
),


              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                'Description',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Baru',
                ),
                textAlign: TextAlign.justify,
              ),
                ],
              ),
              
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),

              Column(
                children: [
                  Text('Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Baru',
                    fontWeight: FontWeight.w100,
                     color:  const Color.fromARGB(91,90,90,90),
                  ),
                  )
                ],
              ),
                SizedBox(
                  height: 20,
                ),
                Padding(padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('price',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Baru',
                            color:  const Color.fromARGB(91,90,90,90),
                          ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('2.23ETH',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      )),
                        InkWell(
  onTap: () {
    // Aksi ketika tombol ditekan
  },
  borderRadius: BorderRadius.circular(30), // Membuat efek ripple sesuai bentuk tombol
  child: Container(
    height: 50, // Tinggi tombol lebih besar agar sesuai gambar
    width: 160, // Lebar tombol agar pas
    decoration: BoxDecoration(
      color: Colors.black, // Warna tombol hitam
      borderRadius: BorderRadius.circular(30), // Tombol oval
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.gavel, // Ikon palu lelang
          color: Colors.white,
          size: 18, // Sesuaikan ukuran ikon
        ),
        SizedBox(width: 8), // Jarak antara ikon dan teks
        Text(
          "Place Bid",
          style: TextStyle(
            color: Colors.white, // Warna teks putih
            fontSize: 16, // Ukuran teks sesuai gambar
            fontWeight: FontWeight.w500, // Ketebalan teks medium
          ),
        ),
      ],
    ),
  ),
)
                    ],
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
