import 'package:flutter/material.dart';
import 'package:wasteproject/models/Collectors.dart';
import 'package:wasteproject/widgets/myButton.dart';

class CollectorInfo extends StatefulWidget {
  final Collector collector;

  const CollectorInfo({super.key, required this.collector});

  @override
  State<CollectorInfo> createState() => _CollectorInfoState();
}

class _CollectorInfoState extends State<CollectorInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collector Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0,3),
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(widget.collector.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 200,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 16),
              ProfileCard(
                title: 'Name',
                subtitle: widget.collector.name,
                icon: Icons.person,
              ),

              ProfileCard(
                title: 'Country Region',
                subtitle: widget.collector.location,
                icon: Icons.location_on,
              ),
              ProfileCard(
                title: 'Language',
                subtitle: widget.collector.language,
                icon: Icons.language,
              ),
              ProfileCard(
                title: 'Contactable at',
                subtitle: widget.collector.contact,
                icon: Icons.email,
              ),
              const SizedBox(height: 24),
              Center(
                child: myButton(name: 'Request Service', onTap: () {  },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class ProfileCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const ProfileCard({super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.green, size: 30),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


