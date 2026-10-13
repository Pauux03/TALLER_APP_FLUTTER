import 'package:flutter/material.dart';
import '../colors.dart';

class PostCard extends StatefulWidget {
  final String usuario;
  final String avatarUrl;
  final String imagenUrl;
  final String descripcion;
  final int likesIniciales;

  const PostCard({
    super.key,
    required this.usuario,
    required this.avatarUrl,
    required this.imagenUrl,
    required this.descripcion,
    required this.likesIniciales,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool meGusta = false;
  late int likes = widget.likesIniciales;

  void _alternarMeGusta() {
    setState(() {
      meGusta = !meGusta;
      likes = meGusta ? likes + 1 : likes - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Encabezado: avatar + usuario
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.magenta,
                  ),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(widget.avatarUrl),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  widget.usuario,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.noche,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.more_horiz, color: AppColors.violeta),
              ],
            ),
          ),
          // Imagen principal
          Image.network(
            widget.imagenUrl,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover
          ),
          // Botones
          Row(
            children: [
              IconButton(
                onPressed: _alternarMeGusta,
                icon: Icon(
                  meGusta ? Icons.favorite : Icons.favorite_border,
                  color: meGusta ? AppColors.coral : AppColors.noche,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mode_comment_outlined,
                    color: AppColors.noche),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              '$likes Me gusta',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 12, 14),
            child: Text(widget.descripcion),
          ),
        ],
      ),
    );
  }
}
