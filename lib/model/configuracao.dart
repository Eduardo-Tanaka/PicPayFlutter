import 'dart:convert';

class Configuracao {
  bool novasCurtidas;
  bool comentarios;
  bool seguidores;
  bool pagamentosCelular;
  bool cobranca;
  bool aniversarios;
  bool promocoes;
  bool lembretePagamentos;
  bool pagamentosEmail;

  Configuracao({
    this.novasCurtidas = true,
    this.comentarios = true,
    this.seguidores = true,
    this.pagamentosCelular = true,
    this.cobranca = true,
    this.aniversarios = true,
    this.promocoes = true,
    this.lembretePagamentos = true,
    this.pagamentosEmail = true,
  });

  Configuracao copyWith({
    bool? novasCurtidas,
    bool? comentarios,
    bool? seguidores,
    bool? pagamentosCelular,
    bool? cobranca,
    bool? aniversarios,
    bool? promocoes,
    bool? lembretePagamentos,
    bool? pagamentosEmail,
  }) {
    return Configuracao(
      novasCurtidas: novasCurtidas ?? this.novasCurtidas,
      comentarios: comentarios ?? this.comentarios,
      seguidores: seguidores ?? this.seguidores,
      pagamentosCelular: pagamentosCelular ?? this.pagamentosCelular,
      cobranca: cobranca ?? this.cobranca,
      aniversarios: aniversarios ?? this.aniversarios,
      promocoes: promocoes ?? this.promocoes,
      lembretePagamentos: lembretePagamentos ?? this.lembretePagamentos,
      pagamentosEmail: pagamentosEmail ?? this.pagamentosEmail,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'novasCurtidas': novasCurtidas,
      'comentarios': comentarios,
      'seguidores': seguidores,
      'pagamentosCelular': pagamentosCelular,
      'cobranca': cobranca,
      'aniversarios': aniversarios,
      'promocoes': promocoes,
      'lembretePagamentos': lembretePagamentos,
      'pagamentosEmail': pagamentosEmail,
    };
  }

  factory Configuracao.fromMap(Map<String, dynamic> map) {
    return Configuracao(
      novasCurtidas: map['novasCurtidas'] ?? false,
      comentarios: map['comentarios'] ?? false,
      seguidores: map['seguidores'] ?? false,
      pagamentosCelular: map['pagamentosCelular'] ?? false,
      cobranca: map['cobranca'] ?? false,
      aniversarios: map['aniversarios'] ?? false,
      promocoes: map['promocoes'] ?? false,
      lembretePagamentos: map['lembretePagamentos'] ?? false,
      pagamentosEmail: map['pagamentosEmail'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Configuracao.fromJson(String source) =>
      Configuracao.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Configuracao(novasCurtidas: $novasCurtidas, comentarios: $comentarios, seguidores: $seguidores, pagamentosCelular: $pagamentosCelular, cobranca: $cobranca, aniversarios: $aniversarios, promocoes: $promocoes, lembretePagamentos: $lembretePagamentos, pagamentosEmail: $pagamentosEmail)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Configuracao &&
        other.novasCurtidas == novasCurtidas &&
        other.comentarios == comentarios &&
        other.seguidores == seguidores &&
        other.pagamentosCelular == pagamentosCelular &&
        other.cobranca == cobranca &&
        other.aniversarios == aniversarios &&
        other.promocoes == promocoes &&
        other.lembretePagamentos == lembretePagamentos &&
        other.pagamentosEmail == pagamentosEmail;
  }

  @override
  int get hashCode {
    return novasCurtidas.hashCode ^
        comentarios.hashCode ^
        seguidores.hashCode ^
        pagamentosCelular.hashCode ^
        cobranca.hashCode ^
        aniversarios.hashCode ^
        promocoes.hashCode ^
        lembretePagamentos.hashCode ^
        pagamentosEmail.hashCode;
  }
}
