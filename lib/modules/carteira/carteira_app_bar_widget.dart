import 'package:flutter/material.dart';

class CarteiraAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  CarteiraAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
}
