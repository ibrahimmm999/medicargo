import 'package:flutter/material.dart';
import 'package:medicargo/shared/theme.dart';
import 'package:medicargo/widgets/custom_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Profile",
                  style: header1,
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                "Nama",
                style: header2,
              ),
              Text(
                "Sumanto",
                style: body,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Nomor Telepon",
                style: header2,
              ),
              Text(
                "081234567890",
                style: body,
              ),
              const SizedBox(
                height: 32,
              ),
              CustomButton(
                  text: "Edit Profile",
                  onPressed: () {},
                  color: primaryPurple,
                  clickColor: clickPurple),
              const SizedBox(
                height: 12,
              ),
              CustomButton(
                  text: "Keluar",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-in', (route) => false);
                  },
                  color: primaryRed,
                  clickColor: clickRed),
            ],
          ),
        ),
      ),
    );
  }
}
