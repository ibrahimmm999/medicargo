import 'package:flutter/material.dart';
import 'package:medicargo/pages/detail_order_page.dart';
import 'package:medicargo/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget card(bool isFinished) {
      return GestureDetector(
        onTap: isFinished
            ? () {}
            : () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailOrderPage(
                              isOngoingOrder: true,
                            )));
              },
        child: UnconstrainedBox(
            child: Stack(
          children: [
            Container(
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
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Rumah Sakit Y",
                    style: subHeader.copyWith(color: primaryPurple),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryPurple),
                    child: Text(
                      "5 Items Ordered",
                      style: buttonAndFieldText,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: secondaryPurple),
                  color: isFinished
                      ? const Color.fromARGB(125, 119, 120, 121)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(11)),
              width: 160,
              height: 178,
            ),
          ],
        )),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 36),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/order-assigned');
                    },
                    child: Container(
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
                                style: buttonAndFieldText.copyWith(
                                    color: neutral600),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "See Details",
                                style: buttonAndFieldText.copyWith(
                                    color: neutral700),
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
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  card(true),
                  card(false),
                  card(false),
                  card(false),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product Condition",
                    style: header3,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: double.infinity,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rumah Sakit Y",
                          style: header3.copyWith(color: primaryPurple),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 16),
                              decoration: BoxDecoration(
                                  color: blueTernary,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Humidity",
                                    style: buttonAndFieldText.copyWith(
                                        fontWeight: semibold, fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            " Current",
                                            style: buttonAndFieldText,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "68%",
                                            style: header2.copyWith(
                                                fontStyle: FontStyle.italic,
                                                color: neutral50),
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        height: 64,
                                        width: 1,
                                        color: Colors.white,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Minimum",
                                            style:
                                                buttonAndFieldText.copyWith(),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "50%",
                                            style: header2.copyWith(
                                                fontStyle: FontStyle.italic,
                                                color: neutral50),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 16),
                              decoration: BoxDecoration(
                                  color: secondaryOrange,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Temperature",
                                    style: buttonAndFieldText.copyWith(
                                        fontWeight: semibold, fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            " Current",
                                            style: buttonAndFieldText,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "28°",
                                            style: header2.copyWith(
                                                fontStyle: FontStyle.italic,
                                                color: neutral50),
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        height: 64,
                                        width: 1,
                                        color: Colors.white,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Minimum",
                                            style:
                                                buttonAndFieldText.copyWith(),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "30°",
                                            style: header2.copyWith(
                                                fontStyle: FontStyle.italic,
                                                color: neutral50),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
