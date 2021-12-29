import 'package:flutter/material.dart';

class PagaAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  PagaAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
}
