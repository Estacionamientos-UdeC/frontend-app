import 'package:flutter/material.dart';
import 'package:frontend_app/utils/colors.dart';

class CardEstacion extends StatelessWidget {
  final String nombre;
  final String ubicacion;
  final String disponibilidad;
  final bool favorito;
  final Color backgroundColor;
  final TextStyle titleStyle;
  final TextStyle descriptionStyle;

  CardEstacion({
    required this.nombre,
    required this.ubicacion,
    required this.disponibilidad,
    required this.favorito,
    this.backgroundColor = Colors.white,
    this.titleStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
    this.descriptionStyle = const TextStyle(
      fontSize: 14.0,
    ),
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight/4.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(410),
      ),
      child: Card(
        color: amarilloUdec,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: (screenHeight/4.8)/2,
              child: Image.asset(
              "assets/images/estacion_verde_disponible.png",
                fit: BoxFit.fill,
                ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    nombre,
                    style: titleStyle,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    ubicacion,
                    style: descriptionStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
