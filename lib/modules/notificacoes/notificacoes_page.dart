import 'package:flutter/material.dart';
import 'package:picpay/widgets/notificacao/notificacao_widget.dart';

class NotificacoesPage extends StatelessWidget {
  const NotificacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowGlow();
        return true;
      },
      child: ListView.separated(
        itemCount: 40,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: NotificacaoWidget(),
          );
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          );
        },
      ),
    );
  }
}
