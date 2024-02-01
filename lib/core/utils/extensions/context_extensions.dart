import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension SnackbarContextX on BuildContext {
  void showSnackBar({
    required String message,
    SnackBarAction? action,
    SnackBarBehavior? behavior,
  }) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        key: ValueKey(message),
        behavior: behavior ?? SnackBarBehavior.fixed,
        backgroundColor: primaryGreenColor,
        margin: behavior == SnackBarBehavior.fixed ? const EdgeInsets.only(left: 16, right: 16, bottom: 16) : null,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        content: Text(message),
        action: action,
      ),
    );
  }

  void showSnackBarDownload({
    required String message,
    SnackBarAction? action,
    SnackBarBehavior? behavior,
  }) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        key: ValueKey(message),
        behavior: behavior ?? SnackBarBehavior.fixed,
        margin: behavior == SnackBarBehavior.fixed ? const EdgeInsets.only(left: 16, right: 16, bottom: 4) : null,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        content: Text(message),
        action: action,
        duration: const Duration(seconds: 5),
      ),
    );
  }

  void showErrorSnackBar({
    required String message,
    SnackBarAction? action,
    SnackBarBehavior? behavior,
  }) {
    ScaffoldMessenger.of(this).clearSnackBars();
    final theme = Theme.of(this);
    final colorScheme = theme.colorScheme;
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        key: ValueKey(message),
        backgroundColor: colorScheme.errorContainer,
        behavior: behavior ?? SnackBarBehavior.fixed,
        margin: behavior == SnackBarBehavior.fixed ? const EdgeInsets.only(left: 16, right: 16, bottom: 16) : null,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        content: Text(
          message,
          style: theme.textTheme.bodyMedium?.copyWith(color: colorScheme.onErrorContainer),
        ),
        action: action,
      ),
    );
  }
}
