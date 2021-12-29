import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picpay/model/configuracao.dart';
import 'package:picpay/modules/notificacoes/configuracao_cubit.dart';

class ConfigurarPage extends StatelessWidget {
  const ConfigurarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ConfiguracaoCubit>(context);
    bloc.init();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 1,
        iconTheme: IconThemeData(
          color: Colors.green, //change your color here
        ),
        title: Text(
          "Notificações",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
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
              "Receber notificações pelo celular",
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Divider(),
          Column(
            children: [
              BlocBuilder<ConfiguracaoCubit, Configuracao>(
                bloc: bloc,
                builder: (ctx, state) {
                  return Container(
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Novas curtidas",
                          ),
                          Switch(
                            onChanged: (bool value) {
                              ctx.read<ConfiguracaoCubit>().curtidas(value);
                            },
                            value: state.novasCurtidas,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Divider(),
              ),
            ],
          ),
          Column(
            children: [
              BlocBuilder<ConfiguracaoCubit, Configuracao>(
                bloc: bloc,
                builder: (ctx, state) {
                  return Container(
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Novos comentários",
                          ),
                          Switch(
                            onChanged: (bool value) {
                              ctx.read<ConfiguracaoCubit>().comentarios(value);
                            },
                            value: state.comentarios,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Divider(),
              ),
            ],
          ),
          Column(
            children: [
              BlocBuilder<ConfiguracaoCubit, Configuracao>(
                bloc: bloc,
                builder: (ctx, state) {
                  return Container(
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Novos seguidores",
                          ),
                          Switch(
                            onChanged: (bool value) {
                              ctx.read<ConfiguracaoCubit>().seguidores(value);
                            },
                            value: state.seguidores,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Divider(),
              ),
            ],
          ),
          Column(
            children: [
              BlocBuilder<ConfiguracaoCubit, Configuracao>(
                bloc: bloc,
                builder: (ctx, state) {
                  return Container(
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Novos pagamentos",
                          ),
                          Switch(
                            onChanged: (bool value) {
                              ctx
                                  .read<ConfiguracaoCubit>()
                                  .pagamentosCelular(value);
                            },
                            value: state.pagamentosCelular,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Divider(),
              ),
            ],
          ),
          Column(
            children: [
              BlocBuilder<ConfiguracaoCubit, Configuracao>(
                bloc: bloc,
                builder: (ctx, state) {
                  return Container(
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pedidos de Cobrança",
                          ),
                          Switch(
                            onChanged: (bool value) {
                              ctx.read<ConfiguracaoCubit>().cobrancas(value);
                            },
                            value: state.cobranca,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Divider(),
              ),
            ],
          ),
          Column(
            children: [
              BlocBuilder<ConfiguracaoCubit, Configuracao>(
                bloc: bloc,
                builder: (ctx, state) {
                  return Container(
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Aniversários de quem eu sigo",
                          ),
                          Switch(
                            onChanged: (bool value) {
                              ctx.read<ConfiguracaoCubit>().aniversarios(value);
                            },
                            value: state.aniversarios,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Divider(),
              ),
            ],
          ),
          Column(
            children: [
              BlocBuilder<ConfiguracaoCubit, Configuracao>(
                bloc: bloc,
                builder: (ctx, state) {
                  return Container(
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Novidades e promoções",
                          ),
                          Switch(
                            onChanged: (bool value) {
                              ctx.read<ConfiguracaoCubit>().promocoes(value);
                            },
                            value: state.promocoes,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Divider(),
              ),
            ],
          ),
          Column(
            children: [
              BlocBuilder<ConfiguracaoCubit, Configuracao>(
                bloc: bloc,
                builder: (ctx, state) {
                  return Container(
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lembretes de pagamento de contas",
                          ),
                          Switch(
                            onChanged: (bool value) {
                              ctx
                                  .read<ConfiguracaoCubit>()
                                  .lembretePagamentos(value);
                            },
                            value: state.lembretePagamentos,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Divider(),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text(
              "Receber notificações via email",
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Divider(),
          Column(
            children: [
              BlocBuilder<ConfiguracaoCubit, Configuracao>(
                bloc: bloc,
                builder: (ctx, state) {
                  return Container(
                    height: 24,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Novos Pagamentos",
                          ),
                          Switch(
                            onChanged: (bool value) {
                              ctx
                                  .read<ConfiguracaoCubit>()
                                  .pagamentosEmail(value);
                            },
                            value: state.pagamentosEmail,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
