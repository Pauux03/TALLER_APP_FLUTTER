import 'package:flutter/material.dart';
import '../colors.dart';

class PromotionalBanner extends StatelessWidget {
  const PromotionalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.ciruela,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Un mundo de ideas',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Descubre contenido nuevo cada día en Plura.',
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 12),
                
              ],
            ),
          ),
          const SizedBox(width: 12),
          const Icon(Icons.auto_awesome, color: AppColors.coral, size: 64),
        ],
      ),
    );
  }
}
