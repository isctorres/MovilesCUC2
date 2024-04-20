import 'package:flutter/material.dart';
import 'package:moviles_cuc_2024/screens/conversor_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: .7,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/fondo.jpeg')
                )
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
              ),
              accountName: Text('Ruben Torres Frias'), 
              accountEmail: Text('ruben.torres@unicuc.mx')
            ),
            ListTile(
              title: Text('Conversor'),
              subtitle: Text('Temperatura/Longitud'),
              leading: Icon(Icons.thermostat),
              trailing: Icon(Icons.chevron_right),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConversorScreen()));
              },
            ),
            ListTile(
              title: const Text('Intenciones'),
              subtitle: const Text('Implicitas'),
              leading: const Icon(Icons.thermostat),
              trailing: const Icon(Icons.chevron_right),
              onTap: (){
                Navigator.pushNamed(context, '/int');
              },
            )
          ],
        ),
      ),
    );
  }
}