import 'package:aplicacionflutterimcprueba/core/app_colors.dart';
import 'package:aplicacionflutterimcprueba/core/text_styles.dart';
import 'package:flutter/material.dart';

class HeightSelector extends StatefulWidget {
  final double height;
  final Function(double) onHeightChanged;
  const HeightSelector({super.key, required this.height, required this.onHeightChanged});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundcomponents,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text("Altura", style: TextStyles.bodyText),
            Text(
              "${widget.height.toStringAsFixed(0)} cm",
              style: TextStyle(
                fontSize: 38,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              value: widget.height,
              onChanged: (altura) {
                setState(() {
                  widget.onHeightChanged(altura);
                });
              },
              min: 150,
              max: 230,
              divisions: 80,
              label: "${widget.height.toStringAsFixed(0)} cm",
              activeColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
