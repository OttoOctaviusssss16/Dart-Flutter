import 'package:aplicacionflutterimcprueba/core/app_colors.dart';
import 'package:aplicacionflutterimcprueba/core/text_styles.dart';
import 'package:flutter/material.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Expanded(
              child: GestureDetector(
                onTap: () => setState(() {
                  selectedGender = "Hombre";
                }),
                child: Padding(
                  padding: const EdgeInsets.only(top:16, bottom: 16, left: 16, right: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedGender == "Hombre"
                          ? AppColors.backgroundcomponentsselected
                          : AppColors.backgroundcomponents,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Image.asset('assets/images/male.png', height: 100),
                            SizedBox(height: 10),
                            Text('Hombre', style: TextStyles.bodyText),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() {
              selectedGender = "Mujer";
            }),
            child: Padding(
              padding: const EdgeInsets.only(top:16, bottom: 16, left: 8, right: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == "Mujer"
                      ? AppColors.backgroundcomponentsselected
                      : AppColors.backgroundcomponents,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Image.asset('assets/images/female.png', height: 100),
                        SizedBox(height: 10),
                        Text('Mujer', style: TextStyles.bodyText),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
