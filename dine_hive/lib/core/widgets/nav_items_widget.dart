import 'package:flutter/material.dart';

class NavItemWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final int? badgeCount;
  final bool showDot;

  const NavItemWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.badgeCount,
    this.showDot = false,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final bgColor = isSelected ? Colors.amber.shade50 : Colors.transparent;
    final iconColor = isSelected ? Colors.amber : Colors.amber.shade100;
    final textColor = isSelected ? Colors.black : Colors.amber.shade100;

    // Use relative sizing
    double iconSize = screenWidth * 0.07;
    double fontSize = screenWidth * 0.035;
    double horizontalPadding = screenWidth * 0.05;
    double verticalPadding = screenHeight * 0.015;
    double badgeSize = screenWidth * 0.038;
    double dotSize = screenWidth * 0.025;
    double spacing = screenWidth * 0.0125;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(icon, size: iconSize, color: iconColor),
                if (badgeCount != null)
                  Positioned(
                    top: -6,
                    right: -2,
                    child: Container(
                      width: badgeSize,
                      height: badgeSize,
                      padding: EdgeInsets.all(badgeSize * 0.2),
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '$badgeCount',
                          style: TextStyle(
                            fontSize: badgeSize,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                if (showDot)
                  Positioned(
                    top: -2,
                    right: -2,
                    child: Container(
                      width: dotSize,
                      height: dotSize,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(width: spacing),
            if (label.isNotEmpty && isSelected)
              Text(
                label,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
