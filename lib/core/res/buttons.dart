import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum IconPosition {
  start,
  end,
}

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.gradient = const LinearGradient(
      colors: [Color(0xFF395EFB), Color(0xFF4E6FFB)],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    ),
    this.textColor = Colors.white,
    this.iconAsset,
    this.iconPosition = IconPosition.start,
    this.iconColor,
    this.iconSize,
    this.width, // Existing parameter
    this.isLoading = false, // Initialize the new parameter
  });

  final String text;
  final VoidCallback onPressed;
  final Gradient gradient;
  final Color textColor;
  final String? iconAsset;
  final IconPosition iconPosition;
  final Color? iconColor;
  final double? iconSize;
  final double? width; // Existing parameter
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final effectiveIconColor = iconColor ?? textColor;
    final effectiveIconSize = iconSize ?? 24.0;

    final children = <Widget>[];

    if (isLoading) {
      // Display the loading indicator
      children.add(
        const SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            strokeWidth: 2,
          ),
        ),
      );
    } else {
      // Display the regular content
      if (iconAsset != null && iconPosition == IconPosition.start) {
        children
          ..add(
            SvgPicture.asset(
              iconAsset!,
              height: effectiveIconSize,
              width: effectiveIconSize,
              color: effectiveIconColor,
            ),
          )
          ..add(const SizedBox(width: 8));
      }

      children.add(
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      );

      if (iconAsset != null && iconPosition == IconPosition.end) {
        children
          ..add(const SizedBox(width: 8))
          ..add(
            SvgPicture.asset(
              iconAsset!,
              height: effectiveIconSize,
              width: effectiveIconSize,
              color: effectiveIconColor,
            ),
          );
      }
    }

    return Container(
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(right: 1, left: 1, top: 0.5, bottom: 0.5),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(1), // White shadow with 50% opacity
            spreadRadius: 10, // How much the shadow spreads
            blurRadius: 5, // Blurriness of the shadow
            offset: const Offset(0, 20), // Position of the shadow (x, y)
          ),
        ],
      ),
      child: SizedBox(
        width: width ?? double.infinity, // Use the width parameter if provided
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          child: ElevatedButton(
            onPressed:
                isLoading ? null : onPressed, // Disable button when loading
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 13),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
