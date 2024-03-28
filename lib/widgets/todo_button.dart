import 'package:ever_rest/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final String label;
  const TodoButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: CustomColors.secondary,
          ),
          borderRadius: BorderRadius.circular(8),
          color: CustomColors.primary.withOpacity(0.4),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Icon(
                icon,
                color: Colors.white,
                size: 34,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
