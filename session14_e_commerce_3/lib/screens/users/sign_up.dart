import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app-constants.dart';
import 'sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool rememberMe = false;
  final formKey = GlobalKey<FormState>();
  final nameControllet = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool _obscurePassword = true;
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 150,
                width: double.infinity,
                child: Image.asset("assets/images/leafLogo.png"),
              ),
              Container(
                child: Text(
                  "Create Your Account",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          controller: nameControllet,
                          keyboardType: TextInputType.text,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstants.mainColor,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstants.mainColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),

                            prefixIcon: Icon(Icons.person),
                            hintText: "Enter Your Name",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Name is required";
                            }
                            final nameRegex = RegExp(r"^[A-Za-z ]{3,}$");
                            if (!nameRegex.hasMatch(value)) {
                              return "Enter your valid name";
                            }
                            return null; // valid
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstants.mainColor,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstants.mainColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),

                            prefixIcon: Icon(Icons.email),
                            hintText: "Enter Your Email",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Email is required";
                            }
                            final emailRegex = RegExp(
                              r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$",
                            );
                            if (!emailRegex.hasMatch(value)) {
                              return "Enter a valid email address";
                            }
                            return null; // valid
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          controller: passController,
                          obscureText: _obscurePassword,
                          keyboardType: TextInputType.text,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstants.mainColor,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstants.mainColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            // suffixIcon: Icon(Icons.remove_red_eye),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                            prefixIcon: Icon(Icons.lock),
                            hintText: "Enter Your Password",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password is required";
                            }
                            final passRegex = RegExp(
                              r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
                            );
                            if (!passRegex.hasMatch(value)) {
                              return "Password must be at least 8 characters and include upper, lower, digit, and special character";
                            }
                            return null; // valid
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.number,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstants.mainColor,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstants.mainColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),

                            prefixIcon: Icon(Icons.phone),
                            hintText: "Enter Your Address",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Phone number is required";
                            }
                            final phoneRegex = RegExp(
                              r"^(?:\+92|0092|92)?3[0-9]{9}$",
                            );
                            if (!phoneRegex.hasMatch(value)) {
                              return "Enter a valid Pakistani phone number";
                            }
                            return null; // valid
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          controller: addressController,
                          keyboardType: TextInputType.text,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstants.mainColor,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstants.mainColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),

                            prefixIcon: Icon(Icons.home),
                            hintText: "Enter Your Address",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Address is required";
                            }
                            final addressRegex = RegExp(
                              r"^[A-Za-z0-9\s,.\-\/]{5,}$",
                            );
                            if (!addressRegex.hasMatch(value)) {
                              return "Enter your valid address";
                            }
                            return null; // valid
                          },
                        ),
                      ),

                      /// ✅ Remember Me Checkbox Row
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: rememberMe,
                              activeColor: AppConstants.mainColor,
                              onChanged: (bool? value) {
                                setState(() {
                                  rememberMe = value ?? false;
                                });
                              },
                            ),
                            Text(
                              "Remember Me",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                            },
                            child: Text("Sign up"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppConstants.mainColor,
                              foregroundColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  "or continue with",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Icon(
                      Icons.facebook_rounded,
                      color: Colors.blue,
                      size: 28,
                    ),
                  ),
                  // Google Logo
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/googleLogo.png",
                          height: 24,
                          width: 24,
                        ),
                        SizedBox(width: 8), // Space between image and text
                        Text("Google", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),

                  Container(child: Icon(Icons.apple_rounded, size: 28)),
                ],
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppConstants.mainColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
