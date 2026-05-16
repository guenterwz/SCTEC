void main(){
  for(var a in listaPedidos){
    print(a);
    print("\n");
  }
}

class Produto{
  final String id;
  final String nome;
  final double precoUn;
  final int qtd;

  Produto.fromMap(Map m):
    id = m['id_produto'],
    nome = m['nome'],
    precoUn = m['preco_unitario'],
    qtd = m['quantidade']
  ;
}

class Pagamento{
  final String metodo;
  final int parcelas;
  final bool confirmado;

  Pagamento.fromMap(Map m):
    metodo = m['metodo'],
    parcelas = m['parcelas'],
    confirmado = m['confirmado']
  ;
}

class Cliente{
  final String id;
  final String nome;
  final String email;

  Cliente.fromMap(Map m):
    id = m['id_cliente'],
    nome = m['nome'],
    email = m['email']
    ;
}

class Pedido{
  final String idPedido;
  final String dtCriacao;
  final String status;
  final Cliente cliente;
  final Pagamento pagamento;
  final Produto produto;

  Pedido.fromMap(Map m):
    idPedido = m['id_pedido'],
    dtCriacao = m['data_criacao'],
    status = m['status'],
    cliente = Cliente.fromMap(m['cliente']),
    pagamento = Pagamento.fromMap(m['pagamento']),
    produto = Produto.fromMap(m['itens'])
  ;
}

final listaPedidos = [
  {
    "id_pedido": "REQ-9872",
    "data_criacao": "2026-05-14T10:00:00Z",
    "status": "processando",
    "cliente": {
      "id_cliente": "USR-441",
      "nome": "Ana Silva",
      "email": "ana.silva@email.com",
    },
    "pagamento": {
      "metodo": "cartao_credito",
      "parcelas": 3,
      "confirmado": true,
    },
    "itens": [
      {
        "id_produto": "PROD-001",
        "nome": "Teclado Mecânico RGB",
        "preco_unitario": 349.90,
        "quantidade": 1,
      },

      {
        "id_produto": "PROD-012",
        "nome": "Mouse Pad Extendido",
        "preco_unitario": 89.90,
        "quantidade": 2,
      },
    ],
  },
  {
    "id_pedido": "REQ-9873",
    "data_criacao": "2026-05-14T10:15:00Z",
    "status": "entregue",
    "cliente": {
      "id_cliente": "USR-102",
      "nome": "Carlos Souza",
      "email": "carlos.s@email.com",
    },
    "pagamento": {"metodo": "pix", "parcelas": 1, "confirmado": true},
    "itens": [
      {
        "id_produto": "PROD-055",
        "nome": "Fone de Ouvido Bluetooth",
        "preco_unitario": 199.00,
        "quantidade": 1,
      },
    ],
  },
];
