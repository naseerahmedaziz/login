import 'package:assignment_01/components/easyLogin.dart';
import 'package:assignment_01/components/signinButton.dart';
import 'package:flutter/material.dart';
import 'components/textField.dart';

class LoginPage extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'lib/assets/facebook.png',
              height: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Login Screen',
              style: TextStyle(color: Colors.grey[900], fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
              inputFormat: 50,
              keyboard: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                inputFormat: 20,
                keyboard: TextInputType.text),
            const SizedBox(
              height: 25,
            ),
            const SigninButton(),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Or',
              style: TextStyle(color: Colors.grey[800], fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // google button
                EasyLogin(imagePath: 'lib/assets/google.jpg'),

                SizedBox(width: 25),

                EasyLogin(imagePath: 'lib/assets/facebook.png'),
                // apple button
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
