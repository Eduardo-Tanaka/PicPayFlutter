import 'package:flutter/material.dart';
import 'package:picpay/model/store_card.dart';

import 'card_store_widget.dart';

class DestaqueWidget extends StatelessWidget {
  DestaqueWidget({Key? key}) : super(key: key);

  final destaques = [
    StoreCard(
      image: '',
      title: 'Recarga de Celular',
      subtitle: 'Escolha o valor e pague pelo app!',
      cashback: null,
    ),
    StoreCard(
      image: '',
      title: 'Casas Bahia',
      subtitle: 'Produtos para você e sua casa',
      cashback: '9% de cashback',
    ),
    StoreCard(
      image: '',
      title: 'Free Fire',
      subtitle: '10% de bônus de Diamantes para Free Fire',
      cashback: null,
    ),
    StoreCard(
      image: '',
      title: 'Jequiti',
      subtitle: 'Perfumes, maquiagens e cosméticos com os melhores preços',
      cashback: '10% de cashback',
    ),
    StoreCard(
      image: '',
      title: 'iFood',
      subtitle: 'Compre créditos para o iFood Card',
      cashback: '3% de cashback',
    ),
    StoreCard(
      image: '',
      title: 'Google Play',
      subtitle: 'Aproveite um mundo de entretenimento',
      cashback: null,
    ),
    StoreCard(
      image: '',
      title: 'Uber',
      subtitle: 'Compre créditos para o Uber',
      cashback: '2% de cashback',
    ),
    StoreCard(
      image: '',
      title: 'Extra',
      subtitle: 'Mai barato, mais barato Extra',
      cashback: '9% de cashback',
    ),
    StoreCard(
      image: '',
      title: 'Ponto',
      subtitle: 'Direto ao Ponto',
      cashback: '9% de cashback',
    ),
    StoreCard(
      image: '',
      title: 'Multilaser',
      subtitle: 'Os melhores produtos para deixar sua vida MultiMelhor',
      cashback: '13% de cashback',
    ),
    StoreCard(
      image: '',
      title: 'Philco',
      subtitle: 'Tem coisas que só a Philco faz pra você',
      cashback: '8% de cashback',
    ),
    StoreCard(
      image: '',
      title: 'Britânia',
      subtitle: 'Para Britanar sua vida',
      cashback: '8% de cashback',
    ),
    StoreCard(
      image: '',
      title: 'Mondial',
      subtitle: 'A linha completa da Mondial vocÊ encontra aqui',
      cashback: '10% de cashback',
    ),
    StoreCard(
      image: '',
      title: 'Brinoz Shop',
      subtitle: 'Experimente ser vocÊ. Sempre',
      cashback: '10% de cashback',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: destaques.length,
      itemBuilder: (context, position) {
        return CardStoreWidget(
          title: destaques.elementAt(position).title,
          subtitle: destaques.elementAt(position).subtitle,
          cashback: destaques.elementAt(position).cashback,
          onTap: () {},
        );
      },
    );
  }
}
