import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scrap/constants.dart';

class ScrapButton extends TextButton {
  final double height, width;
  ScrapButton({
    Key? key,
    required super.onPressed,
    this.height = 40.0,
    this.width = double.infinity,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.antiAlias,
    String? label,
    String icon = '',
    Widget? son,
  }) : super(
          key: key,
          child: son ??
              Container(
                height: height,
                width: width,
                // padding: const EdgeInsets.symmetric(horizontal: 15.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: mainClr,
                ),
                child: Row(
                  children: [
                    icon != ''
                        ? SvgPicture.asset('$iconsPath/$icon.svg')
                        : const Spacer(),
                    if (icon != '')
                      const SizedBox(
                        width: 6,
                      ),
                    Text(
                      label!,
                      style: const TextStyle(
                        color: white,
                        fontSize: 15.0,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
        );
}
