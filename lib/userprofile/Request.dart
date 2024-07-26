import 'package:flutter/material.dart';

import '../widgets/customRequestTile.dart';

void main() {
  runApp(const WasteCollectorsApp());
}

class WasteCollectorsApp extends StatelessWidget {
  const WasteCollectorsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RequestPage(),
    );
  }
}

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Requests'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const CustomRequestTile(
                    name: 'Ian Glenn',
                    phone: '+1 (650) 479 - 4982',
                    date: 'ian.glenn@gmail.com',
                    imageUrl: 'assets/images/profile_picture.jpg',
                    status: 'Approved',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


