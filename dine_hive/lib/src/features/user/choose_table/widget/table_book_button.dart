import 'package:flutter/material.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';
import '../../../../data/models/restaurent_table_model.dart';

class TableBookButton extends StatelessWidget {
  final RestaurentTableModel table;
  final VoidCallback onPressed;
  const TableBookButton(
      {super.key, required this.table, required this.onPressed});
  Color _getButtonColor() {
    switch (table.tableStatus.toLowerCase()) {
      case 'reserved':
        return AppColors.reservedColor;
      case 'booked':
        return AppColors.bookedColor;
      default:
        return AppColors.availableColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          foregroundColor: Colors.black,
          backgroundColor: _getButtonColor() // Ensure text is visible
          ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: 'T.No ${table.tableNo}\n',
                style:
                    textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
            TextSpan(
                text: '${table.numberOfSeats} Seats',
                style:
                    textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
