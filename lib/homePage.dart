import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> tickets = [
    {
      'id': 1,
      'type': 'Tiket Masuk Dewasa',
      'category': 'Nusantara',
      'price': 50000,
      'quantity': 2
    },
    {
      'id': 2,
      'type': 'Tiket Masuk Anak',
      'category': 'Nusantara',
      'price': 20000,
      'quantity': 2
    },
    {
      'id': 3,
      'type': 'Tiket Masuk Dewasa',
      'category': 'Mancanegara',
      'price': 150000,
      'quantity': 0
    },
    {
      'id': 4,
      'type': 'Tiket Masuk Anak',
      'category': 'Mancanegara',
      'price': 40000,
      'quantity': 0
    },
  ];

  void updateQuantity(int id, int amount) {
    setState(() {
      var ticket = tickets.firstWhere((ticket) => ticket['id'] == id);
      ticket['quantity'] = (ticket['quantity'] + amount).clamp(0, 99);
    });
  }

  int get totalPrice => tickets.fold(
      0,
      (sum, ticket) =>
          sum + ((ticket['quantity'] as int) * (ticket['price'] as int)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penjualan',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: tickets.length,
                itemBuilder: (context, index) {
                  final ticket = tickets[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['type'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text(ticket['category'],
                              style: const TextStyle(color: Colors.grey)),
                          Text('Rp. ${ticket['price']}',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove,
                                    color: Colors.black),
                                onPressed: () =>
                                    updateQuantity(ticket['id'], -1),
                              ),
                              Text(ticket['quantity'].toString(),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              IconButton(
                                icon: const Icon(Icons.add, color: Colors.blue),
                                onPressed: () =>
                                    updateQuantity(ticket['id'], 1),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                                'Rp. ${ticket['quantity'] * ticket['price']}',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Order Summary',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('Rp. $totalPrice',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text('Process',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
