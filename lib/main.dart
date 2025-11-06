import 'package:flutter/material.dart';

void main() {
  runApp(const PrimeiraUltimaApp());
}

class PrimeiraUltimaApp extends StatelessWidget {
  const PrimeiraUltimaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeiro e Último Elemento',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const PrimeiraUltimaScreen(),
    );
  }
}

class PrimeiraUltimaScreen extends StatelessWidget {
  const PrimeiraUltimaScreen({super.key});

  // 🧠 Função que retorna o primeiro e o último elemento de uma lista
  List<int> obterPrimeiroEUltimo(List<int> lista) {
    if (lista.isEmpty) return []; // retorna lista vazia se não houver elementos
    if (lista.length == 1) return [lista.first]; // se só tiver 1 elemento, retorna ele mesmo
    return [lista.first, lista.last];
  }

  @override
  Widget build(BuildContext context) {
    // Lista base
    List<int> a = [5, 10, 15, 20, 25];

    // Chama a função para pegar o primeiro e o último
    List<int> resultado = obterPrimeiroEUltimo(a);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeiro e Último Elemento'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lista original:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(a.join(', '), style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text(
              'Primeiro e último elementos:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              resultado.join(', '),
              style: const TextStyle(fontSize: 16, color: Colors.teal),
            ),
          ],
        ),
      ),
    );
  }
}
