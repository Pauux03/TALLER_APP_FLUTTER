import 'package:flutter/material.dart';
import '../colors.dart';
import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 16),
      children: const [
        PromotionalBanner(),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 8),
          child: Text(
            'Explora posts',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.noche,
            ),
          ),
        ),
        ImageCarousel(),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 8),
          child: Text(
            'Para ti',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.noche,
            ),
          ),
        ),
        PostCard(
          usuario: 'teletechuk',
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnEDAmZdJ4KYm2l1lNwTYOTENBi8D8uk9mj8ODO5N5Fj5oDAMxCEh6ZIQ&s=10',
          imagenUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjagE-go9tQ9OwMQjdsh54ws_Fx3rws0AbVg6CCQjCe2YpMOI2fvnAaoo&s=10',
          descripcion: 'TELETECH @ DRUMSHEDS, LONDON — FINAL CHANCE TO SIGN UP. Today is your last chance and final warning to sign up, as we return to Drumsheds on the 19th December with a full venue take over once again. Last time sold out and we’re expecting this to do exactly the same. Sign up link in bio  — TICKETS OUT TOMORROW 10:00AM GMT.',
          likesIniciales: 504,
        ),
        PostCard(
          usuario: 'realbarbarapalvin',
          avatarUrl: 'https://hips.hearstapps.com/hmg-prod/images/barbara-palvin-elle-dos-1642675797.jpg',
          imagenUrl: 'https://lacronicadehoy-lacronicadehoy-prod.web.arc-cdn.net/resizer/v2/NSMNWXZSXBEQJALUFHYS4Y2YUE.jpeg?auth=6538d5f1173d4663b6b70fc3d72ed91beefdba0e5b3de8f171c420e47379510b&width=1200',
          descripcion: 'It’s official. My 2026 collab with @nyd_jeans is here ✨ Denim that feels like confidence you can wear. Go see it for yourselves.',
          likesIniciales: 478000,
        ),
        PostCard(
          usuario: 'billelis',
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7yOPAzUusmg1_tIaHpZYQihtC5mGyZ-j4Pp5aKTnyKoeOmrZguQU5Efs&s=10',
          imagenUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlPKB06jvPlXQnJxx9WJB8BbIcHByNcIfa7c319_cf2qXgwgq_CdrgvwQ&s=10',
          descripcion: '3 days left to collect before the print store closes ☠️ Evolution is ending soon',
          likesIniciales: 129,
        )
      ],
    );
  }
}
