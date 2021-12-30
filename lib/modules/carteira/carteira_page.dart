import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:picpay/model/card_pagar.dart';
import 'package:picpay/widgets/card/card_widget.dart';

final cards = [
  CardPagar(icon: Icons.download_outlined, texto: "Adicionar dinheiro"),
  CardPagar(icon: Icons.publish_outlined, texto: "Retirar dinheiro"),
  CardPagar(icon: Icons.text_snippet_outlined, texto: "Meu extrato"),
  CardPagar(icon: Icons.payment_outlined, texto: "Acessar empréstimo"),
];

class CarteiraPage extends StatelessWidget {
  const CarteiraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.teal[800], //or set color with: Color(0xFF0000FF)
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowGlow();
        return true;
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.teal[800],
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Instituição 380 * PicPay Serviços S.A.",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Ag 0001 * Cc xxxxxx-x",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Text(
                            "Seu saldo rende até 120% do CDI",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 32,
                            ),
                            child: Text(
                              "R\$ 5.000,00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          Text(
                            "R\$ 0,00 desse saldo é de cashback >",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 110,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cards.length,
                      itemBuilder: (context, position) {
                        return CardWidget(
                          icon: cards.elementAt(position).icon,
                          texto: cards.elementAt(position).texto,
                          onTap: () {},
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: Text(
                      "Oportunidades",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    highlightColor: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                    child: Card(
                      child: Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Falta muito pouco para ter o PicPay Card!",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                    ),
                                    child: Text(
                                      "Termine o cadastro para ter seu PicPay Card. É rapidinho!",
                                    ),
                                  ),
                                  Text(
                                    "Toque para continuar",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.green[800],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Image.network(
                              'https://picsum.photos/200/300',
                              width: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    child: InkWell(
                      onTap: () {},
                      highlightColor: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          child: ListTile(
                            leading: Icon(
                              Icons.ad_units,
                            ),
                            title: Text(
                              "Empréstimos",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "Receba o dinheiro na sua carteira e pague depois",
                            ),
                            trailing: Icon(
                              Icons.chevron_right_outlined,
                              color: Colors.green[900],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Formas de pagamento",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    highlightColor: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                    child: Card(
                      child: ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.card_travel,
                            ),
                          ],
                        ),
                        title: Text(
                          "BANCO",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text("Cartão com final xxxx"),
                        trailing: Text(
                          "Principal",
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    highlightColor: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                    child: Card(
                      child: ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_circle_outline,
                              color: Colors.green[800],
                            ),
                          ],
                        ),
                        title: Text(
                          "Adicionar cartão de crédito",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[800],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: InkWell(
                      onTap: () {},
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_activity_outlined,
                            color: Colors.green[800],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: Text(
                              "Usar código promocional",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[800],
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
