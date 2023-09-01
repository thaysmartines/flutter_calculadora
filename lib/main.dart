import 'soma.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final numero1Controller = TextEditingController();
  final numero2Controller = TextEditingController();
  final resultadoController = TextEditingController();

  void _somarValores() {
    setState(() {
      var somar = Somar(double.parse(numero1Controller.text),
          double.parse(numero2Controller.text));
      resultadoController.text = somar.somar().toString();
     // print(resultado);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 35),
            const Text(
              'Bem vindo a calculadora!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 82, 165, 13),
                fontSize: 32.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 35),
            SizedBox(
              height: 30,
              width: 200,
              child: TextField(
                controller: numero1Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 30,
              width: 200,
              child: TextField(
                controller: numero2Controller,                
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                ),
              ),
            ),
            const SizedBox(height: 35),
            const Text(
              'Informe dois número para obter a média',
            ),
            const SizedBox(height: 35),
            Text(
              resultadoController.text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: 35),

             FloatingActionButton(
        onPressed: _somarValores,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
          ],
        ),
      ),
    );
  }
}
