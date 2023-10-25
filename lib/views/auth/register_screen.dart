import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/auth/login_screen.dart';
import 'package:scrap/views/auth/register_controller.dart';
import 'package:scrap/widgets/scrap_button.dart';
import 'package:scrap/widgets/scrap_input.dart';
import 'package:scrap/widgets/scrap_select.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterController>(
      builder: (context, registerController, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.arrow_back_ios),
                ),
                Container(
                  height: 80.0,
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'تسجيل',
                        style: TextStyle(
                          fontSize: 32.0,
                        ),
                      ),
                      Text(
                        'دعنا ننشئ حسابا لك معا',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: screenHeight - 300,
                  child: SingleChildScrollView(
                    child: SizedBox(
                      child: Column(
                        children: [
                          ScrapInput(
                            hintText: 'الاسم',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          ScrapInput(
                            hintText: 'البريد اﻹلكتروني',
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          ScrapInput(
                            hintText: 'رقم الهاتف',
                            keyboardType: TextInputType.phone,
                            decorations: InputDecoration(
                              prefixIcon: Container(
                                width: 20.0,
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  getIcon('jordan'),
                                  height: 25.0,
                                  width: 25.0,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              filled: true,
                              fillColor: whitish,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color: mainClr,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                              hintStyle: const TextStyle(
                                color: greyish,
                                fontSize: 15.0,
                                letterSpacing: 1,
                              ),
                              hintTextDirection: TextDirection.rtl,
                              contentPadding:
                                  const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          ScrapInput(
                            hintText: 'كلمة السر',
                            obscureText: true,
                            letterSpacing: 3,
                          ),
                          const SizedBox(height: 10.0),
                          ScrapSelect(
                            title: 'المحافظة',
                            items: const ['كذا', 'عمان', 'اﻷردن'],
                            onSelect: () {},
                          ),
                          const SizedBox(height: 10.0),
                          ScrapSelect(
                            title: 'المنطقة',
                            items: const ['كذا', 'عمان', 'اﻷردن'],
                            onSelect: () {},
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            'التسجيل يعني الموافقة على الشروط واﻷحكام\n وسياسة الخصوصية',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                ScrapButton(
                  onPressed: () {
                    registerController.register(context);
                  },
                  label: 'تسجيل',
                  height: 56.0,
                ),
                const SizedBox(
                  height: 10.0,
                  width: double.infinity,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'هل تمتلك حساب بالفعل؟ ',
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: mainClr,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
