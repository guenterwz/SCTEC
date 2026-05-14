void main(){
  List<Map<String, dynamic>> alunos = [
  {"id": 98523488, "nome": "João da Silva", "telefone": null},
  {"id": 98523489, "nome": "Lucas Evangelista", "telefone": '11996541236'},
  {"id": 98523490, "nome": "Maria Teodoro", "telefone": '11944551236'},
  {"id": 98523491, "nome": "Isabel Santos", "telefone": null},
];

List<Aluno> lista = alunos.map((map) => Aluno.fromMap(map)).toList();

for(var a in lista){
  print("Nome: ${a.nome}");
}
}

class Aluno{
  final int id;
  String nome;
  String? tel;

  Aluno({required this.id, required this.nome, this.tel});

  Aluno.fromMap(Map mapa) :
    id = mapa['id'],
    nome = mapa['nome'],
    tel = mapa['tel'];

}