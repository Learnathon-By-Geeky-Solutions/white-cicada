import 'package:flutter/material.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({super.key, required this.icon, required this.onTap, required this.color, this.child});
  final Icon icon;
  final VoidCallback onTap;
  final Color color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Row(
          children: [
            icon,
            child??const SizedBox(),
          ],
        ),
      ),
    );
  }
}
