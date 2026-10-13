import 'package:flutter/material.dart';
import '../colors.dart';

class ChatTile extends StatelessWidget {
  final String nombre;
  final String mensaje;
  final String hora;
  final String avatarUrl;
  final int sinLeer;

  const ChatTile({
    super.key,
    required this.nombre,
    required this.mensaje,
    required this.hora,
    required this.avatarUrl,
    required this.sinLeer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          CircleAvatar(radius: 28, backgroundImage: AssetImage(avatarUrl)),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nombre,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.noche,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  mensaje,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: sinLeer > 0 ? AppColors.noche : Colors.black54,
                    fontWeight:
                        sinLeer > 0 ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(hora,
                  style: const TextStyle(color: Colors.black54, fontSize: 12)),
              const SizedBox(height: 6),
              if (sinLeer > 0)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppColors.coral,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '$sinLeer',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
