import 'package:flutter/material.dart';

class StoreAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  StoreAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
}
