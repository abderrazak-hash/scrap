import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/auth/login_controller.dart';
import 'package:scrap/views/auth/register_screen.dart';
import 'package:scrap/widgets/scrap_button.dart';
import 'package:scrap/widgets/scrap_checkbox.dart';
import 'package:scrap/widgets/scrap_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginController>(
      builder: (context, loginController, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.arrow_back_ios),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'مرحبًا بعودتك',
                      style: TextStyle(
                        fontSize: 32.0,
                      ),
                    ),
                    Text(
                      'مرحبا بعودتك! الرجاء إدخال التفاصيل الخاصة بك',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ScrapInput(
                      hintText: 'رقم الهاتف أو اسم المستخدم',
                    ),
                    const SizedBox(height: 15.0),
                    ScrapInput(
                      hintText: 'كلمة السر',
                      obscureText: true,
                      letterSpacing: 3,
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        ScrapCheckbox(
                          value: loginController.rememberMe,
                          onChanged: (value) {
                            loginController.checkRememberME(value!);
                          },
                        ),
                        const Text('تذكرني'),
                        const Spacer(),
                        const Text('نسيت كلمة السر'),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    ScrapButton(
                      onPressed: () {
                        loginController.login(context);
                      },
                      label: 'تسجيل الدخول',
                      height: 56.0,
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'تسجيل',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: mainClr,
                        ),
                      ),
                    ),
                    const Text(
                      ' هل لا تملك حساب؟ ',
                    ),
                  ],
                ),
                const SizedBox(),
              ],
            ),
          ),
        );
      },
    );
  }
}
