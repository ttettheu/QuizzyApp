import 'package:flutter/material.dart';
import 'questao.dart';

main() => runApp(const PerguntaApp());

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Center(
          child: Column(children: [
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
                onPressed: _responder, child: const Text('Resposta 1')),
            ElevatedButton(
                onPressed: _responder, child: const Text('Resposta 2')),
            ElevatedButton(
                onPressed: _responder, child: const Text('Resposta 3')),
          ]),
        ),
      ),
    );
  }
}
