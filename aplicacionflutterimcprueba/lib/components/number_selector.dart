import 'package:aplicacionflutterimcprueba/core/app_colors.dart';
import 'package:aplicacionflutterimcprueba/core/text_styles.dart';
import 'package:flutter/material.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final Function() onIncrement;
  final Function() onDecrement;
  final int value;
  const NumberSelector({
    super.key,
    required this.title,
    required this.onIncrement,
    required this.onDecrement,
    required this.value,
  });

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundcomponents,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(widget.title, style: TextStyles.bodyText),
                Text(
                  widget.value.toString(),
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        widget.onDecrement();
                      },
                      shape: CircleBorder(),
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 16),
                    FloatingActionButton(
                      onPressed: () {
                        widget.onIncrement();
                      },
                      shape: CircleBorder(),
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
