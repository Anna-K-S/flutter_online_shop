import 'package:flutter/material.dart';

enum CartButtonStatus {
  enabled,
  busy,
  disabled,
}

class CartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final CartButtonStatus status;
  final Widget child;

  const CartButton({
    required this.onPressed,
    this.status = CartButtonStatus.enabled,
    this.child = const SizedBox(),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: status != CartButtonStatus.enabled,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 8.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
        ),
        child: AnimatedSwitcher(
          duration: const Duration(
            milliseconds: 300,
          ),
          child: status == CartButtonStatus.busy
              ? const SizedBox.square(
                  dimension: 20,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : const Icon(
                  Icons.add_shopping_cart,
                  size: 22.0,
                ),
        ),
      ),
    );
  }
}
