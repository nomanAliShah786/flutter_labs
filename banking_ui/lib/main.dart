import 'package:banking_ui/allcardscreens.dart';
import 'package:flutter/material.dart';

import 'card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Assignment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SafeArea(child: AddCardScreen()),
    );
  }
}

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: 400,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    const SizedBox(
                      width: 300,
                      child: Center(
                        child: Text(
                          'Add New Card',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset('assets/images/1.png'),
                accountCard(
                  accountlogo: 'assets/images/NexusPay Logo.png',
                  colorStart: const Color(0xFF2C2B2B),
                  colorEnd: const Color(0xFF525252),
                  bottomLogo: 'assets/images/Visa_Inc._logo.png',
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 275,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const AllCardScreen()),
                        ),
                      );
                    },
                    color: Colors.blue,
                    child: const Text(
                      'Add Card',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
