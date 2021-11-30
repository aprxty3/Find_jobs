import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Sign Up ',
                style: tittleStyle,
              ),
              Text(
                'Begin New Journey',
                style: subtittleStyle,
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icon_upload.png',
                      width: 120,
                      height: 120,
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fullname',
                          style: tittleStyle,
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffF1F0F5),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: Color(0xff4141A4)),
                            ),
                            hintText: '',
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Email Address',
                          style: tittleStyle,
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                          controller: emailController,
                          onChanged: (value) {
                            print(value);
                            bool isValid = EmailValidator.validate(value);
                            print(isValid);
                            if (isValid) {
                              setState(() {
                                isEmailValid = true;
                              });
                            } else {
                              setState(() {
                                isEmailValid = false;
                              });
                            }
                          },
                          decoration: InputDecoration(
                            fillColor: Color(0xffF1F0F5),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                  color: isEmailValid
                                      ? Color(0xff4141A4)
                                      : Color(0xffFD4F56)),
                            ),
                            hintText: '',
                          ),
                          style: TextStyle(
                              color: isEmailValid
                                  ? Color(0xff4141A4)
                                  : Color(0xffFD4F56)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Password',
                          style: tittleStyle,
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Color(0xffF1F0F5),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: Color(0xff4141A4)),
                            ),
                            hintText: '',
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Goal',
                          style: tittleStyle,
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffF1F0F5),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: Color(0xff4141A4)),
                            ),
                            hintText: '',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
