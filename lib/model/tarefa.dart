class Tarefa {
  final String uid;
  final String titulo;
  final String descricao;

  Tarefa(this.uid, this.titulo, this.descricao);

  //
  // Transforma um Objeto em um JSON
  //
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'titulo': titulo,
      'descricao': descricao
    };
  }

  //
  // Transforma um JSON em um Objeto
  //
  factory Tarefa.fromJson(Map<String, dynamic> json) {
    return Tarefa(
      json['uid'],
      json['titulo'],
      json['descricao'],
    );
  }
}
