import 'package:flutter/material.dart';

class NotificacoesAppBarWidget extends StatelessWidget
    with PreferredSizeWidget {
  NotificacoesAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "Notificações",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.grey[900],
            shape: CircleBorder(),
          ),
          onPressed: () {},
          child: Text(
            "Configurar",
            style: TextStyle(
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
}
