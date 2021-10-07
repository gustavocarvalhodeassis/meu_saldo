import 'package:flutter/material.dart';
import 'package:meu_saldo/Dashboard/enviar_bottomSheet.dart';
import 'package:meu_saldo/Dashboard/receber_bottomSheet.dart';
import 'package:meu_saldo/constants.dart';
import 'package:ionicons/ionicons.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  void showEnviarBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return EnviarBottomSheet();
        });
  }

  void showReceberBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return ReceberBottomSheet();
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(45, 0, 45, 0),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //User Drop
            GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/logo.png',
                        scale: 13,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        'Gustavo',
                        style: kUserName,
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Ionicons.chevron_down))
                ],
              ),
            ), //User Drop --FIM

            AnimatedPadding(
                padding: EdgeInsets.only(top: 120),
                duration: Duration(seconds: 1)),

            //Account Saldo + Container Inteiro
            Container(
              height: size.height * 0.3,
              width: size.width * 1,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Ionicons.cash),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Ionicons.eye),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saldo disponível',
                            style: kHide,
                          ),
                          Text(
                            'R\$ 150,00',
                            style: kSaldo,
                          )
                        ],
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.fromLTRB(20, 0, 30, 0),
                        height: size.height * 0.1,
                        width: size.width * 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '06 de setembro de 2021',
                              style: kHide,
                            ),
                            Text(
                              'Meu Saldo',
                              style: kMeuSaldo,
                            )
                          ],
                        ),
                        decoration: buildBoxDecoration(0.1))
                  ],
                ),
              ),
              decoration: buildBoxDecoration(0.1),
            ), //Account Saldo + Container Inteiro -- FIM
            mainPadding(),
            //Lançamentos + Contianer
            Row(
              children: [
                buildTrowButton(
                    Icons.north, kDangerColor, 'Enviar', showEnviarBottomSheet),
                Padding(padding: EdgeInsets.only(left: 10)),
                buildTrowButton(Icons.south, kSuccessColor, 'Receber',
                    showReceberBottomSheet),
                Padding(padding: EdgeInsets.only(left: 10)),
                buildTrowButton(Icons.info, kInfoColor, 'Sobre nós', () => null)
              ],
            ) //Lançamentos + Contianer --FIM
          ],
        ),
      ),
    ));
  }
}

//Decoration Containers
Decoration buildBoxDecoration(double op) {
  return BoxDecoration(
    color: kLightColor.withOpacity(op),
    borderRadius: BorderRadius.circular(10),
  );
} //Decoration Containers -FIM

//Widget Button Lançamento
Widget buildTrowButton(
    IconData icon, Color iconColor, String trow, Function() navigate) {
  return Expanded(
    child: GestureDetector(
        onTap: navigate,
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
          height: 100,
          decoration: buildBoxDecoration(0.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  icon,
                  color: iconColor,
                ),
              ),
              Text(
                '$trow',
                style: kHide,
              )
            ],
          ),
        )),
  );
} //Widget Button Lançamento --FIM

//Widget MainPadding
Widget mainPadding() {
  return Padding(padding: EdgeInsets.only(top: 30));
} //Widget MainPadding --FIM
