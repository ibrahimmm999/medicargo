import 'package:flutter/material.dart';
import 'package:medicargo/pages/detail_order_page.dart';
import 'package:medicargo/shared/theme.dart';

class OrderAssignedPage extends StatelessWidget {
  const OrderAssignedPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget card() {
      return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DetailOrderPage()));
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(60, 90, 61, 153),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                  spreadRadius: 0)
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/order.png",
                    height: 72,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order ID: 001",
                        style: header3.copyWith(color: neutral600),
                      ),
                      Row(
                        children: [
                          Text(
                            "3",
                            style: buttonAndFieldText.copyWith(
                                color: primaryOrange),
                          ),
                          Text(
                            "Destination(s)",
                            style:
                                buttonAndFieldText.copyWith(color: neutral600),
                          ),
                        ],
                      ),
                      Text(
                        "13/10/2023, 18:35",
                        style: buttonAndFieldText.copyWith(color: neutral600),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 28,
                  ),
                ),
                Text(
                  "Order Assigned",
                  style: header1,
                ),
              ],
            ),
          ),
          card(),
          card(),
          card(),
        ],
      )),
    );
  }
}
