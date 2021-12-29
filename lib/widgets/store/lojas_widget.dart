import 'package:flutter/material.dart';
import 'package:picpay/model/store_card.dart';

final lojas = [
  StoreCard(image: '', title: "Amazon Brasil", subtitle: ''),
  StoreCard(image: '', title: "Casas Bahia", subtitle: ''),
  StoreCard(image: '', title: "Netshoes", subtitle: ''),
  StoreCard(image: '', title: "Aliexpress", subtitle: ''),
  StoreCard(image: '', title: "Carrefour", subtitle: ''),
  StoreCard(image: '', title: "Natura", subtitle: ''),
  StoreCard(image: '', title: "Centauro", subtitle: ''),
  StoreCard(image: '', title: "Boticário", subtitle: ''),
  StoreCard(image: '', title: "Cobasi", subtitle: ''),
  StoreCard(image: '', title: "Fastshop", subtitle: ''),
  StoreCard(image: '', title: "Dafiti", subtitle: ''),
  StoreCard(image: '', title: "Ponto", subtitle: ''),
];

class LojasWidget extends StatelessWidget {
  const LojasWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Cashback no site da loja",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Mais lojas",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        SizedBox(
          height: 110,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, position) {
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    child: SizedBox(
                      width: 65,
                      child: Column(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            lojas.elementAt(position).title,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: lojas.length,
            ),
          ),
        ),
      ],
    );
  }
}
