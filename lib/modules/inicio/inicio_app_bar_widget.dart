import 'package:flutter/material.dart';

class InicioAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  InicioAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
}
