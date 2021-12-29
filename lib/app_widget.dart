import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:picpay/model/configuracao.dart';
import 'package:picpay/modules/splash/splash_page.dart';

import 'modules/home/home_page.dart';
import 'modules/notificacoes/configuracao_cubit.dart';
import 'modules/notificacoes/configurar_page.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey[200],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConfiguracaoCubit>(
          create: (BuildContext context) => ConfiguracaoCubit(Configuracao()),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [
          const Locale('pt', 'BR'),
        ],
        theme: ThemeData(),
        title: 'PicPay',
        initialRoute: "/home",
        routes: {
          '/splash': (context) => const SplashPage(),
          '/home': (context) => HomePage(),
          '/configurar': (context) => ConfigurarPage(),
        },
      ),
    );
  }
}
