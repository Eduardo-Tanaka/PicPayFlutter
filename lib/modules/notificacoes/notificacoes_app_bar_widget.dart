import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NotificacoesAppBarWidget extends StatelessWidget
    with PreferredSizeWidget {
  NotificacoesAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.grey[200],
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: Colors.white,
      elevation: 1,
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
          onPressed: () {
            Navigator.pushNamed(context, "/configurar");
          },
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
