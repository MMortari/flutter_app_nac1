import 'package:flutterapp/model/telefone_model.dart';

import 'database.dart';

class TelefoneRepository {
  Future<List<TelefoneModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<TelefoneModel> cursos = new List<TelefoneModel>();

    if (db.created) {
      cursos = new List<TelefoneModel>();
      cursos.add(
        new TelefoneModel(
            id: 1,
            nome: 'Galaxy A71 5G',
            marca: 'Samsung',
            ano: 2020,
            bateria: 4500,
            ram: 8,
            cameraMp: 64,
            tamTela: 6.7,
            descricao:
                'O Samsung Galaxy A71 5G é um bom celular Android com processador de 2.2Ghz Octa-Core que possibilita rodar jogos e aplicativos pesados. Com uma entrada para cartão SIM, o Samsung Galaxy A71 5G permite download máximo até 2000 Mbps para navegação na internet, mas isto também depende da operadora. Ótima conectividade deste aparelho que inclui Bluetooth Versão 5.0 com A2DP/LE, WiFi 802.11 a/b/g/n/ac + MIMO (2.4Ghz, 5Ghz) e NFC que permite efetuar pagamentos e conexão com outros aparelhos. Incluindo a bateria, o celular Samsung Galaxy A71 5G tem 179 gramas e é um aparelho muito fino com apenas 7,7 mm.'),
      );
      cursos.add(
        new TelefoneModel(
            id: 2,
            nome: 'iPhone 11 Pro',
            marca: 'Apple',
            ano: 2019,
            bateria: 3046,
            ram: 4,
            cameraMp: 12,
            tamTela: 5.8,
            descricao:
                'O Apple iPhone 11 Pro é um bom celular iOS com processador de 2.65Ghz Hexa-Core que possibilita rodar jogos e aplicativos pesados. Com uma entrada para cartão SIM, o Apple iPhone 11 Pro permite download máximo até 1024 Mbps para navegação na internet, mas isto também depende da operadora. Ótima conectividade deste aparelho que inclui Bluetooth Versão 5.0 com A2DP/LE, WiFi 802.11 a/b/g/n/ac/ax + MIMO (2.4Ghz, 5Ghz) e NFC que permite efetuar pagamentos e conexão com outros aparelhos. Incluindo a bateria, o celular Apple iPhone 11 Pro tem 188 gramas e é um aparelho muito fino com apenas 8,1 mm.'),
      );
      cursos.add(
        new TelefoneModel(
            id: 3,
            nome: 'iPhone SE',
            marca: 'Apple',
            ano: 2020,
            bateria: 1821,
            ram: 3,
            cameraMp: 12,
            tamTela: 4.7,
            descricao:
                'O Apple iPhone SE 2020 é um bom celular iOS com processador de 2.65Ghz Hexa-Core que possibilita rodar jogos e aplicativos pesados. Uma vantagem do Apple iPhone SE 2020 é a possibilidade de utilizar duas operadoras de telefonia, um aparelho Dual-Chip com entrada para dois cartões SIM. Ótima conectividade deste aparelho que inclui Bluetooth Versão 5.0 com A2DP/LE, WiFi 802.11 a/b/g/n/ac/ax + MIMO (2.4Ghz, 5Ghz) e NFC que permite efetuar pagamentos e conexão com outros aparelhos. Incluindo a bateria, o celular Apple iPhone SE 2020 tem 148 gramas e é um aparelho muito fino com apenas 7,3 mm.'),
      );
      cursos.add(
        new TelefoneModel(
            id: 4,
            nome: 'Redmi Note 9',
            marca: 'Xiaomi',
            ano: 2020,
            bateria: 5020,
            ram: 4,
            cameraMp: 48,
            tamTela: 6.6,
            descricao:
                'O Xiaomi Redmi Note 9 é um bom celular Android com processador de 2.3Ghz Octa-Core que possibilita rodar jogos e aplicativos pesados. Uma vantagem do Xiaomi Redmi Note 9 é a possibilidade de utilizar duas operadoras de telefonia, um aparelho Dual-Chip com entrada para dois cartões SIM. Ótima conectividade deste aparelho que inclui Bluetooth Versão 5.0 com A2DP/LE, WiFi 802.11 a/b/g/n/ac + MIMO (2.4Ghz, 5Ghz) e NFC que permite efetuar pagamentos e conexão com outros aparelhos. Incluindo a bateria, o celular Xiaomi Redmi Note 9 tem 209 gramas e é um aparelho muito fino com apenas 8,8 mm.'),
      );
      cursos.add(
        new TelefoneModel(
            id: 5,
            nome: 'Galaxy Z Flip',
            marca: 'Sansung',
            ano: 2020,
            bateria: 3300,
            ram: 8,
            cameraMp: 12,
            tamTela: 6.7,
            descricao:
                'O Samsung Galaxy Z Flip é um bom celular Android com processador de 2.96Ghz Octa-Core que possibilita rodar jogos e aplicativos pesados. Uma vantagem do Samsung Galaxy Z Flip é a possibilidade de utilizar duas operadoras de telefonia, um aparelho Dual-Chip com entrada para dois cartões SIM. Ótima conectividade deste aparelho que inclui Bluetooth Versão 5.0 com A2DP/LE, WiFi 802.11 a/b/g/n/ac + MIMO (2.4Ghz, 5Ghz) e NFC que permite efetuar pagamentos e conexão com outros aparelhos. Incluindo a bateria, o celular Samsung Galaxy Z Flip tem 183 gramas e é um aparelho muito fino com apenas 7,2 mm.'),
      );
      cursos.add(
        new TelefoneModel(
            id: 6,
            nome: 'Pixel 4',
            marca: 'Google',
            ano: 2019,
            bateria: 2800,
            ram: 6,
            cameraMp: 12,
            tamTela: 5.7,
            descricao:
                'O Google Pixel 4 é um bom celular Android com processador de 2.84Ghz Octa-Core que possibilita rodar jogos e aplicativos pesados. Com uma entrada para cartão SIM, o Google Pixel 4 permite download máximo até 1200 Mbps para navegação na internet, mas isto também depende da operadora. Ótima conectividade deste aparelho que inclui Bluetooth Versão 5.0 com A2DP/LE, WiFi 802.11 a/b/g/n/ac + MIMO (2.4Ghz, 5Ghz) e NFC que permite efetuar pagamentos e conexão com outros aparelhos. Incluindo a bateria, o celular Google Pixel 4 tem 162 gramas e é um aparelho muito fino com apenas 8,2 mm.'),
      );
    }

    return new Future.value(cursos);
  }
}
