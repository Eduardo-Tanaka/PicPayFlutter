import 'package:flutter/material.dart';

class NotificacaoWidget extends StatelessWidget {
  const NotificacaoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // lista de emoji https://www.fileformat.info/info/emoji/list.htm
          Text(
            "Termine agora de pedir seu cartão sem anuidade. \uD83D\uDCB3	Complete seu cadastro e peça seu PicPay Card crédito!",
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "27 de dez às 18:40",
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
