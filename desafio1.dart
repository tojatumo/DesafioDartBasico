void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos

  String dadosPaciente;
  String lastName;
  List<String> arrayDadosPaciente;
  List<String> nomeCompleto;
  var nomeFamilia = <String>[];

  int qtdMaiores;

  // Criar um array com os nomes das familias
  qtdMaiores = 0;
  for (var i = 0; i < pacientes.length; i++) {
    dadosPaciente = pacientes[i];

    arrayDadosPaciente = dadosPaciente.split('|');
    nomeCompleto = arrayDadosPaciente[0].split(' ');
    lastName = nomeCompleto.last;

    if (lastName !=
        nomeFamilia.firstWhere((v) => v.contains(lastName), orElse: () => '')) {
      nomeFamilia.add(lastName);
    }

    // Contando os maiores de 20 anos
    if ((int.tryParse(arrayDadosPaciente[1]) ?? 0) > 20) qtdMaiores++;
  }

  // Listar os nomes por familia
  for (var i = 0; i < nomeFamilia.length; i++) {
    print('');
    print('Familia ${nomeFamilia[i]}');
    print('-------------------------------------');

    for (var j = 0; j < pacientes.length; j++) {
      dadosPaciente = pacientes[j];
      if (dadosPaciente.contains(nomeFamilia[i])) {
        print('Dados Paciente  $dadosPaciente');
      }
    }
  }
  print('================================================');
  print('Quantidade de pacientes com mais de 20 anos são $qtdMaiores');

  /// Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
}
