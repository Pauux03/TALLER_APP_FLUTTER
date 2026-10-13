import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatTile(
          nombre: 'Mio(tú)',
          mensaje: 'Sticker',
          hora: 'mar',
          avatarUrl: 'lib/assets/pau.jpg',
          sinLeer: 0,
        ),
        ChatTile(
          nombre: 'Valentina',
          mensaje: 'Bueno bueno',
          hora: 'jue',
          avatarUrl: 'lib/assets/val.jpg',
          sinLeer: 0,
        ),
        ChatTile(
          nombre: 'Natalia ',
          mensaje: 'a esta vaina se le puede colocar tipografías?',
          hora: '19:05',
          avatarUrl: 'lib/assets/nata.jpg',
          sinLeer: 5,
        ),
        ChatTile(
          nombre: 'Página web',
          mensaje: 'creo que todos estamos en esas jajaja',
          hora: '17:36',
          avatarUrl: 'lib/assets/grupo.jpg',
          sinLeer: 0,
        ),
        ChatTile(
          nombre: 'Sofia Ing.Multimedia',
          mensaje: 'Tocó jajaja ese fue',
          hora: '17:03',
          avatarUrl: 'lib/assets/sofia.jpg',
          sinLeer: 1,
        ),
        ChatTile(
          nombre: 'Yali',
          mensaje: '1 baño y una cocina',
          hora: '16:04',
          avatarUrl: 'lib/assets/yali.jpg',
          sinLeer: 3,
        ),
        ChatTile(
          nombre: 'Pipe',
          mensaje: 'Si si si es que tenemos a lobo asustado',
          hora: 'Ayer',
          avatarUrl: 'lib/assets/pipe.jpg',
          sinLeer: 0,
        ),
      ],
    );
  }
}
