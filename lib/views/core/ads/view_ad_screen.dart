import 'package:flutter/material.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/models/ad.dart';
import 'package:scrap/widgets/scrap_button.dart';

class ViewAdScreen extends StatelessWidget {
  final Ad ad;
  const ViewAdScreen({Key? key, required this.ad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            SizedBox(
              width: screenWidth,
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: screenWidth * .8,
                    height: 140.0,
                    child: Image.asset(
                      '$imagesPath/${ad.image}.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * .8,
                    height: 140.0,
                    child: Image.asset(
                      '$imagesPath/${ad.image}.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * .8,
                    height: 140.0,
                    child: Image.asset(
                      '$imagesPath/${ad.image}.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * .8,
                    height: 140.0,
                    child: Image.asset(
                      '$imagesPath/${ad.image}.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              color: mainClr.withOpacity(0.4),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    ad.publisher,
                  ),
                  const Text('متصل اﻵن'),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: mainClr,
                  style: BorderStyle.solid,
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text('وقت النشر :  ${'15:00'}'),
                  // Text('15: 00'),
                ],
              ),
            ),
            Container(
              color: mainClr.withOpacity(0.4),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text('القسم :  '),
                  Text('أثاث مستعمل'),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: mainClr,
                  style: BorderStyle.solid,
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text('المحافظة :  '),
                  Text('أربد'),
                ],
              ),
            ),
            Container(
              color: mainClr.withOpacity(0.4),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text('المنطقة :  '),
                  Text('اﻷردن'),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: mainClr,
                  style: BorderStyle.solid,
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('عنوان اﻹعلان :  ${ad.title}'),
                  // Text(ad.title),
                ],
              ),
            ),
            Container(
              color: mainClr.withOpacity(0.4),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('شرح مفصل :  ${ad.description}'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: mainClr,
                  style: BorderStyle.solid,
                ),
              ),
              child: Row(
                children: const [
                  Text('مدة الاستخدام :  ${'4 سنوات'}'),
                  // Text('4 سنوات'),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            ScrapButton(
              onPressed: () {},
              label: 'تواصل مع المعلن',
            ),
            const Spacer(),
            const Text(
                'تنبيه: لا ينصح بتحويل اﻷموال إلا في وجود ضمان وينصح باستخدام منصة سكراب للتواصل')
          ],
        ),
      ),
    );
  }
}
