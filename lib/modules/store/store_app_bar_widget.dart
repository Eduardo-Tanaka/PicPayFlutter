import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StoreAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  StoreAppBarWidget({Key? key}) : super(key: key);

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
      elevation: 0,
      leading: Icon(
        Icons.qr_code_scanner,
        color: Colors.green,
      ),
      title: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.search_outlined,
                color: Colors.green,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: Text(
                  "O que você quer comprar?",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
}
