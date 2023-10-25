import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/scrap_nav_controller.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavController>(builder: (context, navController, child) {
      return Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        navController
                            .navigate(navController.screens['account']!);
                      },
                      child: Transform.rotate(
                        angle: -pi / 2,
                        child: SvgPicture.asset(
                          getIcon('arraw'),
                          height: 25.0,
                        ),
                      ),
                    ),
                    const Text('سكرابي'),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        getIcon('pan'),
                        height: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'ماهو سكرابي ؟',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mainClr,
                  fontSize: 32.0,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'سكرابي هو حساب مميز يسمح لك بالعديد كم المزايا كإظهار إعلاناتك بشكل مميز لكي تستفيد من خدماتها القصوى لزيادة مبيعاتك أو مشترياتك خصوصا إذا كنت تمتلك متجرا أو مؤسسة وتبيع المنتجات المستعملة، فنحن ندعوك لاستخدام سكرابي لتزيد مشاهدات ﻹعلاناتك وتكون أحد عملائنا المميزين',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: grey,
                  fontSize: 17.0,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'شروط الانظمام إلى سكرابي',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mainClr,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  "أن لا يتم استبدال الحساب أو بيعه أو تأجيره ﻷي شخص غير مالك لسكرابي",
                  "الموافقة على الشروط واﻷحكام وسياسة الخصوصية",
                  "يمنع إعلان منتجات مستعملة غير منتجاتك",
                  "أن تكون إعلاناتك واضحة وذات مصداقية وغير مكررة من أجل الوصول إلى عملاء أكثر",
                  "إذا كان هناك عدد من اﻹبلاغات يحق لنا التحقق من هذه اﻹبلاغات ومراجعتها",
                  "يحق لنا أيضا توقيف أي حساب سكرابي حسب ما تتم مراجعته",
                ]
                    .map(
                      (rule) => Text(
                        rule,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          color: grey,
                          fontSize: 15.0,
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const <Widget>[
                                Text('سكرابي'),
                              ] +
                              List.generate(7, (index) => buble()),
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          children: const <Widget>[
                                Text('عادي'),
                              ] +
                              List.generate(7, (index) => buble(check: false)),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: const [
                      '',
                      'علامة سكرابي المميزة',
                      'ظهور دائم في اﻷعلى',
                      'مشاهدات أعلى ﻹعلاناتك',
                      'حذف التعليقات',
                      'إعلانات في جميع اﻷقسام',
                      'ثقة أكبر لتعامل العملاء معك',
                      'إرسال 150 رسالة يوميا'
                    ]
                        .map(
                          (rule) => SizedBox(
                            height: 40.0,
                            child: Text(
                              rule,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                color: grey,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  )),
                ],
              )
            ],
          ),
        ),
      ));
    });
  }

  Widget buble({bool check = true}) {
    return Container(
      margin: const EdgeInsets.all(7.5),
      height: 25,
      width: 25,
      decoration: const BoxDecoration(
        color: mainClr,
        shape: BoxShape.circle,
      ),
      child: Icon(check ? Icons.check : Icons.close, color: white),
    );
  }
}
