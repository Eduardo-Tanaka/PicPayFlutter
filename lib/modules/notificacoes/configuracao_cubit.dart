import 'package:bloc/bloc.dart';
import 'package:picpay/model/configuracao.dart';

class ConfiguracaoCubit extends Cubit<Configuracao> {
  ConfiguracaoCubit(Configuracao initialState) : super(initialState);

  void init() => emit(state);
  void curtidas(bool curtidas) => emit(state.copyWith(novasCurtidas: curtidas));
  void comentarios(bool comentarios) =>
      emit(state.copyWith(comentarios: comentarios));
  void seguidores(bool seguidores) =>
      emit(state.copyWith(seguidores: seguidores));
  void pagamentosCelular(bool pagamentosCelular) =>
      emit(state.copyWith(pagamentosCelular: pagamentosCelular));
  void cobrancas(bool cobrancas) => emit(state.copyWith(cobranca: cobrancas));
  void aniversarios(bool aniversarios) =>
      emit(state.copyWith(aniversarios: aniversarios));
  void promocoes(bool promocoes) => emit(state.copyWith(promocoes: promocoes));
  void lembretePagamentos(bool lembretePagamentos) =>
      emit(state.copyWith(lembretePagamentos: lembretePagamentos));
  void pagamentosEmail(bool pagamentosEmail) =>
      emit(state.copyWith(pagamentosEmail: pagamentosEmail));
}
