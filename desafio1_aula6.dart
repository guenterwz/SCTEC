void main() {
  final map = {
    "paciente": "João da Silva",
    "medico": "Dra. Maria Oliveira",
    "exames": ["Hemograma", "Glicemia"],
    "data": "2026-05-17",
  };

  //* 1. Crie uma abstração para a entidade acima (abstract)
  //* 2. Crie uma classe de modelo que herde da sua abstração
  //* 3. na classe de modelo implemente um construtor para transformar de map em classe
  //* 4. na classe modelo crie um método que vai trasnformar a instancia atual em map
}

abstract class PedidoExame{
  final String paciente;
  final String medico;
  final List<String> exames;
  final String data;

  PedidoExame({
    required this.paciente,
    required this.medico,
    required this.exames,
    required this.data
  });
  
}

final class PedidoExameModel extends PedidoExame{
  PedidoExameModel.fromMap(Map m): super(
    paciente: m['paciente'],
    medico: m['medico'],
    exames: m['exames'],
    data:  m['data'],
  );

  
}

