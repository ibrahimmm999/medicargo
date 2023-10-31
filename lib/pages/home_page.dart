import 'package:flutter/material.dart';
import 'package:medicargo/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget card() {
      return UnconstrainedBox(
        child: Container(
          width: 160,
          padding: const EdgeInsets.only(bottom: 8),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: secondaryPurple),
              borderRadius: BorderRadius.circular(11)),
          child: Column(
            children: [
              Image.asset(
                'assets/rs.png',
                fit: BoxFit.cover,
                width: 160,
              ),
              Text(
                "Rumah Sakit Y",
                style: subHeader.copyWith(color: primaryPurple),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: primaryPurple),
                child: Text(
                  "5 Items Ordered",
                  style: buttonAndFieldText,
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(36),
          children: [
            Text(
              "Selamat Datang,",
              style: header1.copyWith(color: textDarkColor),
            ),
            Text(
              "Sumanto",
              style: header1.copyWith(),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(60, 90, 61, 153),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 2)
                  ],
                  border: Border.all(width: 1, color: neutral50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/bag.png', height: 16),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "1 Order (s) Assigned",
                        style: buttonAndFieldText.copyWith(color: neutral600),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "See Details",
                        style: buttonAndFieldText.copyWith(color: neutral700),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Ongoing Order",
              style: header3,
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  card(),
                  card(),
                  card(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Route",
              style: header3,
            ),
            const SizedBox(
              height: 12,
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
