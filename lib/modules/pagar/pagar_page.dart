import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:picpay/model/card_pagar.dart';
import 'package:picpay/widgets/card/card_widget.dart';
import 'package:picpay/widgets/search/search_widget.dart';

final cards = [
  CardPagar(icon: Icons.qr_code_scanner, texto: "QR Code"),
  CardPagar(icon: Icons.account_circle_outlined, texto: "Pagar Pessoas"),
  CardPagar(icon: Icons.queue_play_next_outlined, texto: "Pix"),
  CardPagar(icon: Icons.view_week_outlined, texto: "Pagar Boleto"),
  CardPagar(icon: Icons.point_of_sale_outlined, texto: "Pagar nas maquininhas"),
  CardPagar(icon: Icons.crop_outlined, texto: "Fazer Cobrança"),
];

final cardsServicos = [
  CardPagar(icon: Icons.phone_iphone_outlined, texto: "Recarga de celular"),
  CardPagar(icon: Icons.directions_bus_outlined, texto: "Cartão transporte"),
  CardPagar(icon: Icons.local_gas_station_outlined, texto: "Shell Box"),
];

class PagarPage extends StatelessWidget {
  const PagarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowGlow();
        return true;
      },
      child: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.grey[200],
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
            ),
            elevation: 1,
            pinned: true,
            backgroundColor: Colors.white,
            expandedHeight: 110,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.all(16),
              title: Text(
                'Pagar',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height - 137,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    child: SearchWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      height: 100,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.green,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Onde aceita PicPay",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "Confira estabelecimentos perto de você",
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Image.network(
                            'https://picsum.photos/900/300',
                            height: 100,
                            width: 2000,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    child: Text(
                      "Serviços",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cardsServicos.length,
                        itemBuilder: (context, position) {
                          return CardWidget(
                            icon: cardsServicos.elementAt(position).icon,
                            texto: cardsServicos.elementAt(position).texto,
                            onTap: () {},
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
