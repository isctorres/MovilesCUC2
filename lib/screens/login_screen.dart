import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final conEmail = TextEditingController();
  final conPwd = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final txtEmail = TextFormField(
      controller: conEmail,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Introduce tu email'
      ),
    );

    final txtPwd = TextFormField(
      controller: conPwd,
      obscureText: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Introduce tu contraseña'
      ),
    );

    const space = SizedBox( height: 10, );

    final btnLogin = ElevatedButton(
      onPressed: (){
        Navigator.pushNamed(context, '/dash');
      }, 
      child: Text('Validar Usuario'),
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder()
      ),
    );

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/fondo_login.jpeg',)
          )
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.amber[100],
                borderRadius: BorderRadius.circular(10)
              ),
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: [
                  txtEmail,
                  space,
                  txtPwd,
                  space,
                  btnLogin
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}