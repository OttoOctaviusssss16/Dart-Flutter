import 'package:aplicacionflutterimcprueba/components/gender_selector.dart';
import 'package:aplicacionflutterimcprueba/components/height_selector.dart';
import 'package:aplicacionflutterimcprueba/components/number_selector.dart';
import 'package:aplicacionflutterimcprueba/core/app_colors.dart';
import 'package:aplicacionflutterimcprueba/core/text_styles.dart';
import 'package:flutter/material.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int peso = 40;
  int edad = 18;
  double altura = 170;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(height: altura, onHeightChanged: (nuevaAltura) {
          setState(() {
            altura = nuevaAltura;
          });
        },),
        Row(
          children: [
            NumberSelector(
              title: 'Peso',
              value: peso,
              onIncrement: () {
                setState(() {
                  peso++;
                });
              },
              onDecrement: () {
                setState(() {
                  if (peso > 0) {
                    peso--;
                  }
                });
              },
            ),
            NumberSelector(
              title: 'Edad',
              value: edad,
              onIncrement: () {
                setState(() {
                  edad++;
                });
              },
              onDecrement: () {
                setState(() {
                  if (edad > 0) {
                    edad--;
                  }
                });
              },
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
              ),
              child: Text("Calcular IMC", style: TextStyles.bodyText),
            ),
          ),
        ),
      ],
    );
  }
}
