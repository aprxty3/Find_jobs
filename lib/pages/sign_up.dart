import 'package:find_job/model/user_model.dart';

import 'package:find_job/provider/auth_provider.dart';
import 'package:find_job/provider/user_provider.dart';
import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController goalController = TextEditingController(text: '');

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);
    var userProvider = Provider.of<UserProvider>(context);

    void showError(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: redColor,
          content: Text(message),
        ),
      );
    }

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Begin New Journey',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );
    }

    Widget inputImage() {
      return Center(
        child: Container(
          width: 120,
          height: 120,
          margin: const EdgeInsets.only(top: 50),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: primaryColor,
            ),
          ),
          child: Image.asset(
            'assets/image_profile.png',
          ),
        ),
      );
    }

    Widget inputName() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: nameController,
              cursorColor: primaryColor,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.only(left: 28, bottom: 20, top: 20),
                fillColor: const Color(0xffF1F0F5),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: '',
              ),
              style: purpleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget inputEmail() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: emailController,
              cursorColor: primaryColor,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.only(left: 28, bottom: 20, top: 20),
                fillColor: const Color(0xffF1F0F5),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: EmailValidator.validate(emailController.text)
                        ? primaryColor
                        : Colors.red,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: '',
              ),
              style: EmailValidator.validate(emailController.text)
                  ? purpleTextStyle
                  : redTextStyle,
            ),
          ],
        ),
      );
    }

    Widget inputPassword() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: passwordController,
              cursorColor: primaryColor,
              obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.only(left: 28, bottom: 20, top: 20),
                fillColor: const Color(0xffF1F0F5),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: '',
              ),
              style: purpleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget inputGoal() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Goal',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: goalController,
              cursorColor: primaryColor,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.only(left: 28, bottom: 20, top: 20),
                fillColor: const Color(0xffF1F0F5),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: '',
              ),
              style: purpleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget signUpButton() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        height: 45,
        width: double.infinity,
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : TextButton(
                onPressed: () async {
                  if (nameController.text.isEmpty ||
                      emailController.text.isEmpty ||
                      passwordController.text.isEmpty ||
                      goalController.text.isEmpty) {
                    showError("semua colom harus diisi");
                  } else {
                    setState(() {
                      isLoading = true;
                    });

                    userModel user = await authProvider.register(
                      emailController.text,
                      passwordController.text,
                      nameController.text,
                      goalController.text,
                    );

                    setState(() {
                      isLoading = false;
                    });

                    if (user == null) {
                      showError('email sudah terdaftar');
                    } else {
                      userProvider.user = user;
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    }
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ),
      );
    }

    Widget signInButton() {
      return Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            child: Text(
              'Back to Sign In',
              style: greyTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: ListView(
            children: [
              header(),
              inputImage(),
              inputName(),
              inputEmail(),
              inputPassword(),
              inputGoal(),
              signUpButton(),
              signInButton(),
            ],
          ),
        ),
      ),
    );
  }
}
