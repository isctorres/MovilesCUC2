import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

class ImplicitasScreen extends StatefulWidget {
  ImplicitasScreen({super.key});

  @override
  State<ImplicitasScreen> createState() => _ImplicitasScreenState();
}

class _ImplicitasScreenState extends State<ImplicitasScreen> {
  final space = const SizedBox(height: 10,);

  final image = ImagePicker();

  XFile? archivo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intenciones'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          intentCard( title: 'Abrir Web', subtitle: 'https://www.unicuc.mx', icon: Icons.browser_updated, action: (){openIntent('https://www.unicuc.mx/inicio/');}),
          space,
          intentCard( title: 'Llamada Telefónica', subtitle: '4612279093', icon: Icons.phone_android, action: (){ openIntent('tel:4612279093'); }),
          space,
          intentCard( title: 'Enviar SMS', subtitle: '4612279093', icon: Icons.sms, action: (){ openIntent('sms:4612279093'); }),
          space,
          intentCard( title: 'Enviar Email', subtitle: 'ruben.torres@unicuc.mx', icon: Icons.email, action: (){ sendEmail(); }),
          space,
          intentCard( title: 'Tomar Foto', subtitle: 'Selfie', icon: Icons.camera, action: (){ takePhoto(); }),
          archivo != null ? Image.file(File(archivo!.path)) : Container()
        ],  
      ),
    );
  }

  Future<void> openIntent(String url) async {
    var uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  Future<void> sendEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'isctorres@gmail.com',
      query: 'subject=Hola&body=buen dia'
    );

    if (!await launchUrl(params)) {
      throw Exception('Could not launch');
    }
  }

  Future<void> takePhoto() async {
    archivo = await image.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  Widget intentCard({required String title, required String subtitle, required IconData icon, required Function() action}){
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: action,
      ),
    );
  }
}