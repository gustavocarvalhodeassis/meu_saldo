import 'package:flutter/material.dart';
import 'package:meu_saldo/constants.dart';

class EnviarBottomSheet extends StatefulWidget {
  const EnviarBottomSheet({Key? key}) : super(key: key);

  @override
  _EnviarBottomSheetState createState() => _EnviarBottomSheetState();
}

class _EnviarBottomSheetState extends State<EnviarBottomSheet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        height: size.height * 1,
        width: size.width * 1,
        decoration: BoxDecoration(
          color: kDarkColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
