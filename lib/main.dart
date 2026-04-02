import 'package:flutter/material.dart';
import 'package:loja_tennis/model/cart.dart';
import 'package:loja_tennis/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Cart(),
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  String mensagem = "";

  void login() {
  String user = userController.text;
  String pass = passController.text;

  if (user == "utf" && pass == "123") {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const IntroPage(),
      ),
    );
  } else {
    setState(() {
      mensagem = "Usuário ou senha incorretos";
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userController,
              decoration: const InputDecoration(
                labelText: "Usuário",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: passController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Senha",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: login,
              child: const Text("Entrar"),
            ),
            const SizedBox(height: 20),
            Text(
              mensagem,
              style: const TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}

