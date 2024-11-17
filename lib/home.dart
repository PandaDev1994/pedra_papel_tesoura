import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// lista de escolhas do usuário
final List<String> opcoes = ['pedra', 'papel', 'tesoura'];

class _HomeState extends State<Home> {
  // string que será usada para mostrar o resultado do jogo
  String resultado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: opcoes.map((opcao) {
              return ElevatedButton(
                  onPressed: () => jogar(opcao), child: Text(opcao));
            }).toList(),
          ),
          Text(
            'resultado $resultado',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }

  void jogar(String usuario) {
    String escolhaApp = opcoes[(DateTime.now().millisecond % 3)];

    // criando uma varivel para receber o resultado do jogo
    String resultadoJogo;

    if (usuario == escolhaApp) {
      resultadoJogo = 'empate';
    } else if ((usuario == 'pedra' && escolhaApp == 'tesoura') ||
        (usuario == 'tesoura' && escolhaApp == 'papel') ||
        (usuario == 'papel' && escolhaApp == 'pedra')) {
      resultadoJogo = 'Você venceu';
    } else {
      resultadoJogo = 'Você perdeu';
    }

    setState(() {
      // passando o resultado do jogo para minha variavel que será apresentada em meu text
      resultado = 'Você: $usuario\nMaquina: $escolhaApp\n$resultadoJogo';
    });
  }
}
