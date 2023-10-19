import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicativo da Mell e da Carolina '),
      ),
      backgroundColor:  const Color.fromARGB(255, 171, 211, 244),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Tela de Login'),
            TextFormField(
              decoration: InputDecoration(labelText: 'E-mail'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Senha'),
            ),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      backgroundColor: const Color.fromARGB(255, 171, 211, 244),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Opções do Menu'),
            ElevatedButton(
              onPressed: () {
               
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClientesScreen()),
                );
              },
              child: Text('Cadastro de Clientes'),
            ),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProdutosScreen()),
                );
              },
              child: Text('Cadastro de Produtos'),
            ),
            ElevatedButton(
              onPressed: () {
               
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PedidosScreen()),
                );
              },
              child: Text('Cadastro de Pedidos'),
            ),
            ElevatedButton(
              onPressed: () {
               
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FuncionariosScreen()),
                );
              },
              child: Text('Cadastro de Funcionários'),
            ),
          ],
        ),
      ),
    );
  }
}

class ClientesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Clientes'),
      ),
      backgroundColor:  const Color.fromARGB(255, 171, 211, 244),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Adicionar Clientes!!!'),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Adicionar Cliente'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProdutosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Produtos'),
      ),
      backgroundColor:  const Color.fromARGB(255, 171, 211, 244),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Adicionar Produtos!!!'),
            ElevatedButton(
              onPressed: () {
               
              },
              child: Text('Adicionar Produto'),
            ),
          ],
        ),
      ),
    );
  }
}

class PedidosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Pedidos') ,
      ),
      backgroundColor:  const Color.fromARGB(255, 171, 211, 244),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Adicionar Pedidos!!!'),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Adicionar Pedido'),
            ),
          ],
        ),
      ),
    );
  }
}

class FuncionariosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Funcionários')
        ,
        
      ),
      backgroundColor:  const Color.fromARGB(255, 171, 211, 244),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Adicionar Funcionários!!!'),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Adicionar Funcionário'),
            ),
          ],
        ),
      ),
    );
  }
}
