import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InicioAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  InicioAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.teal[800],
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
}
