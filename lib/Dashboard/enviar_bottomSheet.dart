import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:meu_saldo/Dashboard/dashboard_screen.dart';
import 'package:meu_saldo/constants.dart';

TextEditingController enviarController = TextEditingController();

class EnviarBottomSheet extends StatefulWidget {
  const EnviarBottomSheet({Key? key}) : super(key: key);

  @override
  _EnviarBottomSheetState createState() => _EnviarBottomSheetState();
}

class _EnviarBottomSheetState extends State<EnviarBottomSheet> {
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
                  'Enviar \nSaldo disponível',
                  style: kDescLancamento,
                ),
                mainPadding(),
                buildTextField(enviarController)
              ],
            ),
          ),
        ),
        floatingActionButton: GestureDetector(
            onTap: () {
              Navigator.pop(context);
              enviarController.clear();
              subtractSaldo();
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
              width: size.width * 1,
              height: 70,
              decoration: buildBoxDecoration(1),
              child: Text(
                'Enviar',
                style: kButtonText,
              ),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
