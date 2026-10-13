import 'package:flutter/material.dart';
import '../colors.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          CarouselCard(
              titulo: 'Arte',
              imagenUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4e/David_Teniers_d._J._008.jpg?utm_source=es.wikipedia.org&utm_campaign=index&utm_content=original'),
          CarouselCard(
              titulo: 'Moda',
              imagenUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2bruom0OLg4k-5W6s3frS6V4SUuxC86wJuOhdAUpH15vMkeOooISC3Cg&s=10'),
          CarouselCard(
              titulo: 'Viajes',
              imagenUrl: 'https://hips.hearstapps.com/hmg-prod/images/beautiful-sunset-cityscape-view-of-the-santa-maria-royalty-free-image-1726223280.jpg'),
          CarouselCard(
              titulo: 'Música',
              imagenUrl: 'https://registroapps.uniandes.edu.co/SisAdmisiones/config_prog_facs/imgprogs/MUSI_card.jpg'),
          CarouselCard(
              titulo: 'Cultura',
              imagenUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8ttFaq1KuR7H_kdPN4A7YywoMorsyXelBU4GEdzFUb_n1GWj9S_j-M13K&s=10'),
              
        ],
      ),
    );
  }
}

class CarouselCard extends StatelessWidget {
  final String titulo;
  final String imagenUrl;

  const CarouselCard({
    super.key,
    required this.titulo,
    required this.imagenUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 130,
            height: 130,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,

            ),
            child: Image.network(
              imagenUrl,
              fit: BoxFit.cover,
              
              errorBuilder: (context, error, stackTrace) =>
                  const SizedBox.shrink(),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            titulo,
            style: const TextStyle(
              color: AppColors.noche,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
 