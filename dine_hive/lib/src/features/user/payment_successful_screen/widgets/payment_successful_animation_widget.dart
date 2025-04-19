import 'package:confetti/confetti.dart';
import 'package:dine_hive/core/constant/images.dart';
import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:dine_hive/src/data/providers/confetti_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentSuccessfulAnimationWidget extends StatefulWidget {
  const PaymentSuccessfulAnimationWidget({super.key});

  @override
  State<PaymentSuccessfulAnimationWidget> createState() =>
      _PaymentSuccessfulAnimationWidgetState();
}

class _PaymentSuccessfulAnimationWidgetState
    extends State<PaymentSuccessfulAnimationWidget> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      final provider = context.read<ConfettiProvider>();
      provider.startConfetti();
      await Future.delayed(const Duration(seconds: 10));
      provider.stopConfetti();
    });
  }

  @override
  void dispose() {
    context.read<ConfettiProvider>().disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ConfettiProvider>();

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: AppSpacing.screenHeight(context) * 0.26,
          width: AppSpacing.screenWidth(context) * 0.6,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            color: textFiledFillColor,
          ),
          child: Image.asset(
            AppImages.successImage,
            fit: BoxFit.fill,
            semanticLabel: 'Success image',
          ),
        ),
        ConfettiWidget(
          confettiController: provider.confettiController,
          blastDirectionality: BlastDirectionality.explosive,
          shouldLoop: false,
          numberOfParticles: 20,
          gravity: 0.12,
          emissionFrequency: 0.03,
          minBlastForce: 20,
          maxBlastForce: 30,
        ),
      ],
    );
  }
}
