import 'package:flutter/material.dart';

import 'card.dart';

class AllCardScreen extends StatelessWidget {
  const AllCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                        width: 293,
                        child: Center(
                          child: Text(
                            'All Cards',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  accountCard(
                    accountlogo: 'assets/images/NexusPay Logo.png',
                    colorStart: const Color(0xFF2C2B2B),
                    colorEnd: const Color(0xFF525252),
                    bottomLogo: 'assets/images/Visa_Inc._logo.png',
                    isAddCard: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  accountCard(
                    accountlogo: 'assets/images/NexusPay Logo.png',
                    colorStart: const Color(0xFF4E45AC),
                    colorEnd: const Color(0xFF857AF4),
                    bottomLogo: 'assets/images/Group 3.png',
                    isAddCard: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  accountCard(
                    accountlogo: 'assets/images/NexusPay Logo.png',
                    colorStart: const Color(0xFF3E9C9C),
                    colorEnd: const Color(0xFF9ECFCF),
                    alignEnd: Alignment.bottomCenter,
                    alignStart: Alignment.topCenter,
                    isAddCard: false,
                    isbottomlogo: false,
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
