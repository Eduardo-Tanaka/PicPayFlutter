import 'dart:math';

import 'package:flutter/material.dart';
import 'package:picpay/utils/date_formatter.dart';

class CardLancamentosWidget extends StatelessWidget {
  const CardLancamentosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double valor = Random().nextDouble() * 100;
    final isNegative = Random().nextBool();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/50/50',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Texto com título do card"),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Descrição do card para o qual o card está sendo renderizado",
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "R\$ ${valor.toStringAsFixed(2)}",
                        style: TextStyle(
                          color: isNegative ? Colors.red : Colors.green[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                        ),
                        child: Text(
                          "|",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      Text(
                        DateFormatter().getVerboseDateTimeRepresentation(
                          DateTime.now().subtract(
                            Duration(days: 700),
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.chat_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 8,
          color: Colors.grey[200],
        ),
      ],
    );
  }
}
