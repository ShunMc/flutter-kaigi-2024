import 'package:flutter/material.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class VerifyPurchaseProcessedCard extends StatelessWidget {
  const VerifyPurchaseProcessedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      color: colorScheme.secondaryContainer,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 48,
                      color: colorScheme.onSecondaryContainer,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      i18n.verifyPurchase.success,
                      style: theme.textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSecondaryContainer,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
