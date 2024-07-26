import 'package:flutter/material.dart';
import 'package:wasteproject/widgets/ContractorTile.dart';

class WasteCollectorsApp extends StatelessWidget {
  const WasteCollectorsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CollectorsListPage(),
    );
  }
}

class CollectorsListPage extends StatelessWidget {
  const CollectorsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  return const ContractorTile(
                    name: 'John Doe',
                    phone: '+1 (123) 456-7890',
                    email: 'john.doe@example.com',
                    imageUrl: 'assets/images/profile_picture.jpg',
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
