import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:meu_saldo/constants.dart';

import 'dashboard_screen.dart';

TextEditingController receberController = TextEditingController();

class ReceberBottomSheet extends StatefulWidget {
  const ReceberBottomSheet({Key? key}) : super(key: key);

  @override
  _ReceberBottomSheetState createState() => _ReceberBottomSheetState();
}

class _ReceberBottomSheetState extends State<ReceberBottomSheet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.95,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Ionicons.close),
                  ),
                ),
                Text(
                  'Receber Saldo',
                  style: kDescLancamento,
                ),
                mainPadding(),
                buildTextField(receberController)
              ],
            ),
          ),
        ),
        floatingActionButton: GestureDetector(
            onTap: () {
              Navigator.pop(context);
              receberController.clear();
              addSaldo();
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
              width: size.width * 1,
              height: 70,
              decoration: buildBoxDecoration(1),
              child: Text(
                'Receber',
                style: kButtonText,
              ),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
