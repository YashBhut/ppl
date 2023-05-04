import 'package:flutter/material.dart';

import 'appConstant/colorConstant.dart';
import 'appConstant/textstyle.dart';

class cusFormFeild extends StatelessWidget {
  const cusFormFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: textStyle16w600W.copyWith(
          fontWeight: FontWeight.w400,
          color: ColorPalette.titlecolor),
      // controller: controller,
      autofocus: false,
      maxLines: 1,
      decoration: InputDecoration(
        isDense: true,
        suffixIcon: const InkWell(
          child: Icon(
            size: 24,
            Icons.search,
            color: ColorPalette.passiconcolor,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorPalette.black,
            style: BorderStyle.solid,
          ),
        ),
        errorStyle: textStyle14w400D,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorPalette.black,
            style: BorderStyle.solid,
          ),
        ),
        labelText: "Search",
        labelStyle:
            textStyle14w500T.copyWith(color: ColorPalette.black),
      ),
    );
  }
}
