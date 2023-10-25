import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/models/post.dart';
import 'package:scrap/views/core/ads/ads_controller.dart';
import 'package:scrap/widgets/scrap_checkbox.dart';
import 'package:scrap/widgets/scrap_input.dart';
import 'package:scrap/widgets/scrap_select.dart';

class PublishAdScreen extends StatefulWidget {
  const PublishAdScreen({Key? key}) : super(key: key);

  @override
  State<PublishAdScreen> createState() => _PublishAdScreenState();
}

class _PublishAdScreenState extends State<PublishAdScreen> {
  late Post post;
  @override
  void initState() {
    super.initState();
    post = Post.emptyPost();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AdsController>(
      builder: (context, adsController, child) {
        return Scaffold(
          body: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      '$iconsPath/scrap.svg',
                      height: 55.0,
                      width: 120.0,
                      fit: BoxFit.contain,
                    ),
                    const Spacer(),
                    SvgPicture.asset('$iconsPath/notification.svg'),
                    const SizedBox(width: 20.0),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    'نشر إعلان',
                    style: TextStyle(
                      color: mainClr,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    child: ListView(
                      children: [
                        ScrapSelect(
                          title: 'القسم',
                          items: List.generate(7, (index) => 'قسم $index'),
                          onSelect: (value) {},
                        ),
                        const SizedBox(height: 15.0),
                        ScrapSelect(
                          title: 'المحافظة',
                          items: List.generate(7, (index) => 'محافظة $index'),
                          onSelect: (value) {},
                        ),
                        const SizedBox(height: 15.0),
                        ScrapSelect(
                          title: 'المنطقة',
                          items: List.generate(7, (index) => 'منطقة $index'),
                          onSelect: (value) {},
                        ),
                        const SizedBox(height: 15.0),
                        ScrapInput(hintText: 'عنوان المنتج'),
                        const SizedBox(height: 15.0),
                        ScrapInput(
                          hintText: 'وصف المنتج',
                          maxLines: 5,
                        ),
                        const SizedBox(height: 15.0),
                        const Center(child: Text('يرجى تحديد السعر')),
                        const SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text('دينار أردني'),
                            SizedBox(
                                width: 90,
                                height: 40.0,
                                child: ScrapInput(hintText: '0000')),
                            const Text('السعر'),
                          ],
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    const Text('غير قابل للتفاوض'),
                                    Radio(
                                      value: true,
                                      groupValue: const [
                                        'غير قابل للتفاوض',
                                        'مراد علني',
                                        'قابل للتفاوض',
                                      ],
                                      onChanged: (value) {},
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('مراد علني'),
                                    Radio(
                                      value: true,
                                      groupValue: const [
                                        'غير قابل للتفاوض',
                                        'مراد علني',
                                        'قابل للتفاوض',
                                      ],
                                      onChanged: (value) {},
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('قابل للتفاوض'),
                                    Radio(
                                      value: true,
                                      groupValue: const [
                                        'غير قابل للتفاوض',
                                        'مراد علني',
                                        'قابل للتفاوض',
                                      ],
                                      onChanged: (value) {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            const Center(child: Text('حالة العرض')),
                          ],
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('التعليقات'),
                                const SizedBox(width: 15.0),
                                ScrapCheckbox(
                                  value: post.comments,
                                  onChanged: (value) {
                                    setState(() {
                                      post.comments = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('رؤية رقم الهاتف'),
                                const SizedBox(width: 15.0),
                                ScrapCheckbox(
                                  value: post.phoneVisible,
                                  onChanged: (value) {
                                    setState(() {
                                      post.phoneVisible = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 15.0),
                        const Center(
                          child: Text('إضافة صور لمنتجك'),
                        ),
                        const SizedBox(height: 15.0),
                        const SizedBox(
                          height: 120.0,
                          child: Center(
                            child: Icon(Icons.picture_as_pdf),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
