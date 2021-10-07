import 'package:flutter/material.dart';

//Colors
const Color kPrimaryColor = Color(0XFFFFFFFF);
const Color kDarkColor = Color(0XFF000000);
const Color kLightColor = Color(0XFFFFFFFF);
const Color kLightOpacityColor = Color(0XFFBABABA);
const Color kDarkOpacityColor = Color(0XFF4D4D4D);
const Color kInfoColor = Color(0XFF00A3FF);
const Color kDangerColor = Color(0XFFFF003D);
const Color kSuccessColor = Color(0XFF00FF85);

//TextStyles
const TextStyle kUserName = TextStyle(
  color: kLightColor,
  fontSize: 18,
  fontWeight: FontWeight.w500, //Medium Font Weight,
);

const TextStyle kHide = TextStyle(
  color: kLightOpacityColor,
  fontSize: 14,
);

const TextStyle kSaldo = TextStyle(
  color: kLightOpacityColor,
  fontSize: 36,
  fontWeight: FontWeight.w700,
);

const TextStyle kMeuSaldo = TextStyle(
  color: kLightOpacityColor,
  fontSize: 24,
  fontWeight: FontWeight.w600,
);

const TextStyle kDescLancamento = TextStyle(
  color: kLightColor,
  fontSize: 36,
  fontWeight: FontWeight.w400,
);

const TextStyle kPrefixLabelStyle = TextStyle(
  color: kLightColor,
  fontSize: 36,
  fontWeight: FontWeight.w300,
);
const TextStyle kTextInputStyle = TextStyle(
  color: kLightColor,
  fontSize: 25,
  fontWeight: FontWeight.w400,
);

Widget buildTextField(TextEditingController controler) {
  return TextField(
    cursorColor: kLightColor,
    cursorHeight: 25,
    style: kTextInputStyle,
    controller: controler,
    decoration: InputDecoration(
        labelText: 'R\$',
        alignLabelWithHint: true,
        labelStyle: kPrefixLabelStyle,
        border: buildFocusedInputBorder(),
        errorBorder: buildErrorInputBorder(),
        enabledBorder: buildNormalInputBorder(),
        focusedBorder: buildFocusedInputBorder(),
        disabledBorder: buildNormalInputBorder(),
        focusedErrorBorder: buildErrorInputBorder()),
  );
}

InputBorder buildNormalInputBorder() {
  return UnderlineInputBorder(
    borderSide: BorderSide(
      width: 1,
      color: kPrimaryColor,
    ),
  );
}

InputBorder buildErrorInputBorder() {
  return UnderlineInputBorder(
    borderSide: BorderSide(
      width: 2,
      color: Colors.red,
    ),
  );
}

InputBorder buildFocusedInputBorder() {
  return UnderlineInputBorder(
    borderSide: BorderSide(
      width: 2,
      color: kPrimaryColor,
    ),
  );
}
