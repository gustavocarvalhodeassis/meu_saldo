import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:meu_saldo/constants.dart';

class ReceberBottomSheet extends StatefulWidget {
  const ReceberBottomSheet({Key? key}) : super(key: key);

  @override
  _ReceberBottomSheetState createState() => _ReceberBottomSheetState();
}

class _ReceberBottomSheetState extends State<ReceberBottomSheet> {
  final _receberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
        height: size.height * 0.95,
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
              buildTextField(_receberController)
            ],
          ),
        ),
      ),
    );
  }
}
