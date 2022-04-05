import 'package:flutter/material.dart';

accountCard({
  required String accountlogo,
  required Color colorStart,
  required Color colorEnd,
  String bottomLogo = '',
  Alignment alignStart = Alignment.bottomLeft,
  Alignment alignEnd = Alignment.topRight,
  bool isAddCard = true,
  bool isbottomlogo = true,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(15),
      ),
      gradient: LinearGradient(
        colors: [
          colorStart,
          colorEnd,
        ],
        begin: alignStart,
        end: alignEnd,
      ),
      image: const DecorationImage(
        image: AssetImage(
          'assets/images/Visa_Inc._logo.png',
        ),
        alignment: Alignment.topRight,
        scale: .4,
        opacity: .1,
      ),
    ),
    height: 175,
    width: 300,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.transparent,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  accountlogo,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Dutch Bangla Bank',
                  style: TextStyle(
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: 340,
                  child: Text(
                    "**** **** **** 1690",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                  ),
                ),
                SizedBox(
                  width: 340,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Platinum Plus",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      isAddCard
                          ? const SizedBox()
                          : const Text(
                              "Exp 01/22",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isAddCard
                    ? const Text(
                        "Exp 01/22",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      )
                    : isbottomlogo
                        ? const Text(
                            "Sunny Averio",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        : const SizedBox(),
                const SizedBox(height: 20),
                isbottomlogo ? Image.asset(bottomLogo) : const SizedBox(),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
