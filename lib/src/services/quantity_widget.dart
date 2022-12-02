import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class Quantitywidget extends StatelessWidget {
  final int value;
  final String suffixText;
  final Function(int quantity) result;

  const Quantitywidget({
    super.key,
    required this.result,
    required this.suffixText,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            _QuantityWidget(
              icon: Icons.remove,
              onPressed: () {
                if (value == 1) return;
                int resultCount = value - 1;

                result(resultCount);
              },
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                '$value$suffixText',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            _QuantityWidget(
              icon: Icons.add,
              onPressed: () {
                int resultCount = value + 1;

                result(resultCount);
              },
              color: CustomColors.customSwatchColor,
            ),
          ],
        ),
      ),
    );
  }
}

class _QuantityWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final VoidCallback onPressed;

  const _QuantityWidget({
    Key? key,
    required this.color,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: onPressed,
        child: Ink(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
