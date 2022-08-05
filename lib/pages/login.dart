import 'package:flutter/material.dart';

 class Login extends StatelessWidget{
  const Login({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: SafeArea(  // O SafeArea ele exlcui a barra superior preta quando acessa o app.
      child: Container(  
      height: double.infinity, // toda a tela
      width: double.infinity,
      color: Colors.blueGrey[200],
      child: Container( /// child é pra abrir outra area dentro do Container, Container pegar a area inteira criada.
          margin: const EdgeInsets.symmetric(
            vertical: 90,
           horizontal: 40),
          child: Card(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
           ),
          color: Colors.blueGrey,
          elevation: 12,
              child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                 horizontal: 24
                 ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Row(
                  children: [
                    Container(
                      width: 5,
                      height: 28,
                      color: Colors.blue,
                      margin: const EdgeInsets.only(right: 24),
                    ),
                    const Text
                    ('BIRINAITE', 
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[300],
                    borderRadius: BorderRadius.circular(28)
                  ),
                child: const TextField(            decoration: InputDecoration(
                    labelText: 'Endereço de Email',
                    prefixIcon: Icon(Icons.email),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left:20),
                  ),
                ),
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[300],
                    borderRadius: BorderRadius.circular(28)
                  ),
                child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                    labelText: 'Digite a Senha',
                    prefixIcon: Icon(Icons.lock_rounded),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left:20),
                  ),
                ),
                ),
                Row(
                  children: [
                    Expanded(
                  child: SizedBox(
                    height: 56,
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                  'Se Cadastrar / Efeturar Login',
                   style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
         ],
        ),   
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                  Text('Já tem uma conta?'),
                  SizedBox(
                    width: 8),
                  Text('Logar!'),
                  ],
                  )
                ],
              ),
                        ),  
             ),
           ),
        ),
      ),
    )
  }
 }