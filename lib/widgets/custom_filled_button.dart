import 'package:ever_rest/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomFIlledButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final String label;
  CustomFIlledButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(
        label,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: CustomColors.primary,
        disabledBackgroundColor: CustomColors.primary.withOpacity(0.5),
        foregroundColor: Colors.white,
        disabledForegroundColor: Colors.white,
        padding: EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        minimumSize: Size(double.infinity, 50),
      ),
    );
  }
}
