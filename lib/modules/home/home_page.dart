import 'package:flutter/material.dart';
import 'package:picpay/modules/carteira/carteira_page.dart';
import 'package:picpay/modules/inicio/inicio_page.dart';
import 'package:picpay/modules/notificacoes/notificacaoes_page.dart';
import 'package:picpay/modules/pagar/pagar_page.dart';
import 'package:picpay/modules/store/store_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    InicioPage(),
    CarteiraPage(),
    PagarPage(),
    NotificacoesPage(),
    StorePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        selectedItemColor: Colors.green[900],
        selectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
        unselectedItemColor: Colors.black87,
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Carteira',
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: 'Pagar',
            tooltip: 'Pagar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notificações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Store',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.attach_money,
        ),
        onPressed: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
        backgroundColor: _selectedIndex == 2 ? Colors.green[900] : Colors.green,
      ),
    );
  }
}
