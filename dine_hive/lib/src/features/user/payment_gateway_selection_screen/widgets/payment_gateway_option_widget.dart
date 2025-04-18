import 'package:dine_hive/core/constant/images.dart';
import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:dine_hive/src/data/providers/payment_option_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class PaymentGatewayOptionWidget extends StatefulWidget {
  const PaymentGatewayOptionWidget({super.key});

  @override
  State<PaymentGatewayOptionWidget> createState() =>
      _PaymentGatewayOptionWidgetState();
}

class _PaymentGatewayOptionWidgetState
    extends State<PaymentGatewayOptionWidget> {
  bool isSelected = false;

  void _onTapPayButton(BuildContext context) {
    final selectedOption = context.read<PaymentOptionProvider>().selectedOption;
    print("Selected Payment Option: $selectedOption");
  }

  @override
  Widget build(BuildContext context) {
    final selectedOption = context.watch<PaymentOptionProvider>().selectedOption;

    return Column(
      children: [
        _buildOptionCard(
          context,
          isSelected: selectedOption == PaymentOption.mobileBanking,
          title: AppText.mobileBanking,
          logoWidget: _buildMBLogos(),
          onTap: () {
            context.read<PaymentOptionProvider>().selectOption(PaymentOption.mobileBanking);
          },
        ),
        const Gap(10),
        _buildOptionCard(
          context,
          isSelected: selectedOption == PaymentOption.card,
          title: AppText.cardPayment,
          logoWidget: _buildCardLogos(),
          onTap: () {
            context.read<PaymentOptionProvider>().selectOption(PaymentOption.card);
          },
        ),
        const Gap(100),
        SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            onPressed: () => _onTapPayButton(context),
            child: Text(
              AppText.payNow,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: whiteColor),
            ),
          ),
        ),
      ],
    );
  }

  Card _buildOptionCard(BuildContext context,
      {required bool isSelected,
        required String title,
        required Widget logoWidget,
        required VoidCallback onTap}) {
    return Card(
      elevation: 8,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: AppSpacing.screenHeight(context) * 0.15,
          width: AppSpacing.screenWidth(context),
          decoration: BoxDecoration(
            color: isSelected ? textFiledFillColor : whiteColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected ? orangeColor : Colors.transparent,
              width: 3,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: blackColor, fontSize: 16),
                ),
                logoWidget,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMBLogos() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildLogo(AppImages.bkashLogo, 0.05, 0.18),
        _buildRocketLogo(AppImages.rocketLogo),
        _buildLogo(AppImages.nagadLogo, 0.05, 0.18),
      ],
    );
  }

  Widget _buildCardLogos() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildLogo(AppImages.visaLogo, 0.075, 0.24),
        _buildLogo(AppImages.masterCardLogo, 0.075, 0.24),
      ],
    );
  }

  SizedBox _buildLogo(String logo, double height, double width) {
    return SizedBox(
      height: AppSpacing.screenHeight(context) * height,
      width: AppSpacing.screenWidth(context) * width,
      child: SvgPicture.asset(
        logo,
      ),
    );
  }

  SizedBox _buildRocketLogo(String logo) {
    return SizedBox(
      height: AppSpacing.screenHeight(context) * 0.05,
      width: AppSpacing.screenWidth(context) * 0.18,
      child: Image.asset(
        logo,
      ),
    );
  }
}