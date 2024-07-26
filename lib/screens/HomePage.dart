import 'package:flutter/material.dart';
import 'package:wasteproject/screens/welcome_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 0, // Hide the AppBar
      ),
      backgroundColor: Colors.white, // Set the background color to white
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                color: Colors.blue,
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                ),
              ),
              const SizedBox(height: 100),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/1logo.jpg', // Add your logo here
                      height: 140,
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'SUSTAINABLE WASTE MANAGEMENT PLAN',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(
                      color: Colors.lightBlue,
                      thickness: 1,
                    ),
                    const SizedBox(height: 50),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        'Maintain a clean environment where you live to safeguard your health and well-being.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      '"Let\'s take care of the environment for the improvement of our health"',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(height: 50), // Add space before the Divider
                    const Divider(
                      color: Colors.lightBlue,
                      thickness: 1,
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 20), // Add space after the Divider
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                    );
                  },
                  backgroundColor: Colors.blue,
                  child: const Icon(Icons.arrow_forward),
                ),
                const SizedBox(height: 20),
                const Text('Version 1.0'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
