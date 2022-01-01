import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:picpay/model/card_image.dart';
import 'package:picpay/model/card_pagar.dart';
import 'package:picpay/widgets/card/card_image_widget.dart';
import 'package:picpay/widgets/card/card_inicio_widget.dart';
import 'package:picpay/widgets/card/card_lancamentos_widget.dart';
import 'package:picpay/widgets/search/search_widget.dart';

final cardsInicio = [
  CardPagar(icon: Icons.qr_code_scanner, texto: "QR Code"),
  CardPagar(icon: Icons.queue_play_next_outlined, texto: "Pix"),
  CardPagar(icon: Icons.view_week_outlined, texto: "Pagar boleto"),
  CardPagar(icon: Icons.crop_outlined, texto: "Cobrar"),
];

final cardsSugestoes = [
  CardPagar(icon: Icons.ac_unit, texto: "SOS BAHIA"),
  CardPagar(icon: Icons.ac_unit, texto: "Pagar Pessoas"),
  CardPagar(icon: Icons.ac_unit, texto: "Pedir Cartão"),
  CardPagar(icon: Icons.ac_unit, texto: "Pedir Empréstimo"),
  CardPagar(icon: Icons.ac_unit, texto: "Uber"),
  CardPagar(icon: Icons.ac_unit, texto: "iFood"),
  CardPagar(icon: Icons.ac_unit, texto: "Google Play"),
  CardPagar(icon: Icons.ac_unit, texto: "Cartão de Transporte"),
  CardPagar(icon: Icons.ac_unit, texto: "Recarga de Celular"),
  CardPagar(icon: Icons.ac_unit, texto: "Playstation Store"),
  CardPagar(icon: Icons.ac_unit, texto: "Cartão-presente XBox"),
  CardPagar(icon: Icons.ac_unit, texto: "Steam"),
  CardPagar(icon: Icons.ac_unit, texto: "Netflix"),
  CardPagar(icon: Icons.ac_unit, texto: "Sky TV Pré-pago"),
  CardPagar(icon: Icons.ac_unit, texto: "Razer Gold"),
];

final cardVantagens = [
  CardImage(
    image: 'Icons.ac_unit',
    title: "Parcele boletos em até 12x no cartão de crédito",
  ),
  CardImage(
    image: 'Icons.ac_unit',
    title: "Deixe seu dinheiro rendendo 120% do CDI",
  ),
  CardImage(
      image: 'Icons.ac_unit',
      title: "<h1><b>Cashbackdd:</b> pague e ganhe dinheiro de volta</h1>"),
  CardImage(
    image: 'Icons.ac_unit',
    title: "Adicione dinheiro e pague o que quiser",
  ),
  CardImage(
    image: 'Icons.ac_unit',
    title: "Encontre e pague locais próximmos a você",
  ),
  CardImage(
    image: 'Icons.ac_unit',
    title: "Pix: transfira ou receba dinheiro a qualquer hora",
  ),
];

final cardCompra = [
  CardImage(
    image: 'Icons.ac_unit',
    title: "Recarga de celular",
    subtitle: "Vivo, Claro, Tim, Oi e outras",
  ),
  CardImage(
    image: 'Icons.ac_unit',
    title: "iFood",
    subtitle: 'Compre créditos e faça seu pedido',
  ),
  CardImage(
    image: 'Icons.ac_unit',
    title: "Google Play",
    subtitle: 'Compre Gift Card e aproveite a loja do Google',
  ),
  CardImage(
    image: 'Icons.ac_unit',
    title: "GG Credits",
    subtitle: 'Gift Card para Free Fire e outros jogos',
  ),
  CardImage(
    image: 'Icons.ac_unit',
    title: "PS Store",
    subtitle: 'Compre Gift Card para a loja do Playstation',
  ),
  CardImage(
    image: 'Icons.ac_unit',
    title: 'Netflix',
    subtitle: "Compre créditos e assista filmes e séries",
  ),
];

final cardLojasCashback = [
  CardImage(
    image: 'Icons.ac_unit',
    title: "Casas Bahia",
  ),
  CardImage(
    image: 'Icons.ac_unit',
    title: "Netshoes",
  ),
  CardImage(image: 'Icons.ac_unit', title: "O Boticário"),
  CardImage(
    image: 'Icons.ac_unit',
    title: "Fast Shop",
  ),
  CardImage(
    image: 'Icons.ac_unit',
    title: "Kabum",
  ),
];

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.teal[800],
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Olá,",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "@eduardo.tanaka2",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.card_giftcard_outlined,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.question_answer_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Saldo PicPay",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "R\$ 5.000,00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Extrato",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cardsInicio.length,
                        itemBuilder: (context, position) {
                          return CardInicioWidget(
                            icon: cardsInicio.elementAt(position).icon,
                            texto: cardsInicio.elementAt(position).texto,
                            onTap: () {},
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.teal[800],
                  ),
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchWidget(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                    ),
                    child: Text(
                      "Sugestões para você",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cardsSugestoes.length,
                      itemBuilder: (context, position) {
                        return CardImageWidget(
                          icon: cardsSugestoes.elementAt(position).icon,
                          texto: cardsSugestoes.elementAt(position).texto,
                          onTap: () {},
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.domain_verification_outlined,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      title: Text(
                        "Seleção especial",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      subtitle: Text(
                        "Promoções disponíveis",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Container(
              height: 8,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Aproveite as vantagens",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Conheça as opções de pagar, receber e transferir, tudo pelo app",
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cardVantagens.length,
                      itemBuilder: (context, position) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: SizedBox(
                            width: 160,
                            child: Card(
                              child: InkWell(
                                onTap: () {},
                                splashColor: Colors.green[100],
                                highlightColor: Colors.green[100],
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 12,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        'https://picsum.photos/50/50',
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        cardVantagens.elementAt(position).title,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              height: 8,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Compre créditos e aproveite",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.green[800],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Seja Gift Card, recarga ou cupom, encontre créditos para o que você precisa",
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cardCompra.length,
                      itemBuilder: (context, position) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: SizedBox(
                            width: 160,
                            child: Card(
                              child: InkWell(
                                onTap: () {},
                                splashColor: Colors.green[100],
                                highlightColor: Colors.green[100],
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 12,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        'https://picsum.photos/50/50',
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        cardCompra.elementAt(position).title,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        cardCompra
                                            .elementAt(position)
                                            .subtitle!,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              height: 8,
              color: Colors.grey[200],
            ),
            CardLancamentosWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Site da loja com cashback",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.green[800],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Compre o que quiser no site da loja e ganhe cashback. Confira!",
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cardLojasCashback.length,
                      itemBuilder: (context, position) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: SizedBox(
                            width: 160,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 12,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      'https://picsum.photos/50/50',
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      cardLojasCashback
                                          .elementAt(position)
                                          .title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    OutlinedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Conferir",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        primary: Colors.green,
                                        backgroundColor: Colors.grey[200],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              height: 8,
              color: Colors.grey[200],
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, position) {
                return CardLancamentosWidget();
              },
            ),
          ],
        ),
      ),
    );
  }
}
