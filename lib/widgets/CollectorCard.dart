import 'package:flutter/material.dart';
import 'package:wasteproject/models/Collectors.dart';
import 'package:wasteproject/userprofile/CollectorInfo.dart';


class CollectorCard extends StatelessWidget {
  final Collector collector;

  const CollectorCard({super.key, required this.collector});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //router a page
        onTap: ()=>Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=> CollectorInfo(collector: collector,)),
        ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 120,
                // width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green, width: 4),
                  image: DecorationImage(
                    image: AssetImage(collector.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                collector.name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}