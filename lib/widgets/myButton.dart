import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final String name;
  final void Function()? onTap;
  const myButton({
    super.key, required this.name, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),


          ),
        ),
      ),
    );
  }
}