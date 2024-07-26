import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:wasteproject/screens/HomePage.dart';

class Spinkit extends StatefulWidget {
  const Spinkit({super.key});

  @override
  State<Spinkit> createState() => _SpinkitState();
}



class _SpinkitState extends State<Spinkit> {
  //call the next page
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SpinKitDualRing(
              color: Colors.blueGrey,
              size: 50.0,
            )
          ],
        ),
      )
      ,
    );
  }
}
