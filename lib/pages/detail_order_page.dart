import 'package:flutter/material.dart';
import 'package:medicargo/shared/theme.dart';
import 'package:medicargo/widgets/custom_button.dart';

class DetailOrderPage extends StatelessWidget {
  const DetailOrderPage({super.key, this.isOngoingOrder = false});
  final bool isOngoingOrder;

  @override
  Widget build(BuildContext context) {
    Widget card() {
      return Container(
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border:
                Border.all(width: 1, color: textDarkColor.withOpacity(0.5))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rumah Sakit Kemangi",
              style: buttonAndFieldText.copyWith(color: textDarkColor),
            ),
            Text(
              "Address: Jln. Kemangi, Jakarta Utara",
              style: body,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 1,
              color: textDarkColor,
            ),
            Text(
              "100pcs Acanthe SPF-30+",
              style: body,
            ),
            Text(
              "100pcs Acanthe SPF-30+",
              style: body,
            ),
            Text(
              "100pcs Acanthe SPF-30+",
              style: body,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
                  "Detail Order",
                  style: header1,
                ),
              ],
            ),
          ),
          card(),
          Visibility(visible: !isOngoingOrder, child: card()),
          Visibility(visible: !isOngoingOrder, child: card()),
          const SizedBox(
            height: 32,
          ),
          Visibility(
            visible: isOngoingOrder,
            child: CustomButton(
                text: "Finish Delivery",
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/main', (route) => false);
                },
                color: primaryPurple,
                clickColor: clickPurple),
          )
        ],
      )),
    );
  }
}
