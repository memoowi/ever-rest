import 'package:ever_rest/utils/config.dart';
import 'package:ever_rest/utils/theme.dart';
import 'package:ever_rest/widgets/accent_button.dart';
import 'package:ever_rest/widgets/primary_button.dart';
import 'package:ever_rest/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isObscure = true;

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    } else if (!value.contains('@') || !value.contains('.')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  void submit() {
    if (formKey.currentState!.validate()) {
      // TODO: Add login logic
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/scene-2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/logo-dark.png',
                        width: 40,
                        color: CustomColors.primary,
                      ),
                      Text(
                        Config.appName.substring(1),
                        style: CustomTextStyle.primary.copyWith(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    color: CustomColors.secondary,
                    child: Text(
                      'Login'.toUpperCase(),
                      style: CustomTextStyle.primary.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomFormField(
                          hintText: 'Email',
                          controller: _emailController,
                          validator: emailValidator,
                          autofillHints: [AutofillHints.email],
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                        const SizedBox(height: 20),
                        CustomFormField(
                          obscureText: _isObscure,
                          controller: _passwordController,
                          validator: passwordValidator,
                          autofillHints: [AutofillHints.password],
                          keyboardType: TextInputType.visiblePassword,
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            onPressed: _toggleObscure,
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        PrimaryButton(
                          onPressed: submit,
                          label: 'Login',
                          icon: Icons.login,
                        ),
                        const SizedBox(height: 10),
                        AccentButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/register');
                          },
                          icon: Icons.account_circle_outlined,
                          label: 'Register',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
