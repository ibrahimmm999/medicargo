import 'package:flutter/material.dart';
import 'package:medicargo/shared/theme.dart';
import 'package:medicargo/widgets/custom_button.dart';
import 'package:medicargo/widgets/custom_text_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailC = TextEditingController();
    TextEditingController passwordC = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(36),
          children: [
            Text(
              "Masuk",
              style: header1,
            ),
            const SizedBox(
              height: 48,
            ),
            Text(
              "Email",
              style: header3,
            ),
            CustomTextField(
              controller: emailC,
              placeholder: "Email",
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Password",
              style: header3,
            ),
            CustomTextField(
              controller: passwordC,
              placeholder: "Password",
              isPassword: true,
            ),
            const SizedBox(
              height: 48,
            ),
            CustomButton(
                text: "Masuk",
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
                color: primaryPurple,
                clickColor: clickPurple)
          ],
        ),
      ),
    );
  }
}
