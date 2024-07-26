import 'package:flutter/material.dart';

class Customer extends StatelessWidget{
  const Customer ({super.key, this.child});

  final Widget? child;

  @override
  Widget build (BuildContext context){
    return Scaffold(
      // appBar: AppBar(
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      // drawer: Drawer(),
      extendBodyBehindAppBar: true,

      body: Stack(
        children: [

          Image.asset('assets/images/download.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,),

         SafeArea(
            child: child!,
            ),
        ],
      ), ); 
  }
}