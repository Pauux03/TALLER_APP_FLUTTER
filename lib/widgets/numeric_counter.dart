import 'package:flutter/material.dart';
import '../colors.dart';

class NumericCounter extends StatefulWidget {
  const NumericCounter({super.key});

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {
  // Variable numérica que controla el componente
  int cantidad = 0;
  final int maximo = 10;

  void _aumentar() {
    if (cantidad < maximo) {
      setState(() {
        cantidad = cantidad + 1;
      });
    }
  }

  void _disminuir() {
    if (cantidad > 0) {
      setState(() {
        cantidad = cantidad - 1;
      });
    }
  }

  void _reiniciar() {
    setState(() {
      cantidad = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'Contador Numérico',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.noche,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.violeta,
              border: Border.all(color: AppColors.coral, width: 4),
            ),
            child: Center(
              child: Text(
                '$cantidad',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 8),
          Text('Límite: de 0 a $maximo'),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: cantidad > 0 ? _disminuir : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.magenta,
                  foregroundColor: Colors.white,
                ),
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: cantidad < maximo ? _aumentar : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.coral,
                  foregroundColor: Colors.white,
                ),
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 12),
          TextButton(onPressed: _reiniciar, child: const Text('Reiniciar')),
        ],
      ),
    );
  }
}
