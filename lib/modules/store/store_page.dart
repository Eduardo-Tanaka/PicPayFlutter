import 'package:flutter/material.dart';
import 'package:picpay/widgets/store/destaque_widget.dart';
import 'package:picpay/widgets/store/lojas_widget.dart';
import 'package:picpay/widgets/store/tab_menu_widget.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowGlow();
        return true;
      },
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Text(
                  "Novidades",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, position) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Image.network("https://picsum.photos/300/200"),
                        ),
                      );
                    },
                    itemCount: 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(
                        Icons.description_outlined,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Meus Pedidos",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                ),
              ),
              LojasWidget(),
              DefaultTabController(
                length: 8,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: TabBar(
                        isScrollable: true,
                        indicatorColor: Colors.green[900],
                        indicatorWeight: 4,
                        labelPadding: EdgeInsets.zero,
                        tabs: [
                          TabMenuItem(
                            text: "Destaques",
                            tooltip: "Destaques",
                          ),
                          TabMenuItem(
                            text: "Promoções",
                            tooltip: "Promoções",
                          ),
                          TabMenuItem(
                            text: "Lojas no app",
                            tooltip: "Lojas no app",
                          ),
                          TabMenuItem(
                            text: "Jogos",
                            tooltip: "Jogos",
                          ),
                          TabMenuItem(
                            text: "Serviços",
                            tooltip: "Serviços",
                          ),
                          TabMenuItem(
                            text: "Alimentação",
                            tooltip: "Alimentação",
                          ),
                          TabMenuItem(
                            text: "Entretenimento",
                            tooltip: "Entretenimento",
                          ),
                          TabMenuItem(
                            text: "Moda e Beleza",
                            tooltip: "Moda e Beleza",
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 0,
                      thickness: 1,
                    ),
                    Container(
                      height: 1150,
                      child: TabBarView(
                        children: [
                          DestaqueWidget(),
                          DestaqueWidget(),
                          DestaqueWidget(),
                          DestaqueWidget(),
                          DestaqueWidget(),
                          DestaqueWidget(),
                          DestaqueWidget(),
                          DestaqueWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
