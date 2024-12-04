import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


//StateLess
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'area triangulo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Triangulo(),
    );
  }
}






//StateFul
class Triangulo extends StatefulWidget {
  const Triangulo({super.key});

  @override
  State<Triangulo> createState() => MyPage();
}
//class page
class MyPage extends State<Triangulo> {
//variaveis
double _h = 0, _b = 0, _a = 0;
final _tB = TextEditingController();
final _tH = TextEditingController();

void calcula(){
  setState(() {
    _h = double.parse(_tH.text);
    _b = double.parse(_tB.text);
    _a = _b * _h / 2;
  });
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULAR ÁREA DE UM TRIÂNGULO"),
      ),
      body: Container(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Digite o tamanho da BASE",
              ),
              controller: _tB,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Digite o tamanho da ALTURA"
              ),
              controller: _tH,
            ),
            ElevatedButton(
              onPressed: calcula,
              child: const Text("Calcular"),
            ),
            Text("O valor da ÁREA é $_a")
          ],
        ),
      ),
    );
  }
}