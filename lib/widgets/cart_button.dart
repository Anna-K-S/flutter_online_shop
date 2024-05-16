import 'package:flutter/material.dart';

enum CartButtonStatus {
  enabled,
  busy,
  disabled,
}

class CartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final CartButtonStatus status;
  final Color color;

  const CartButton({
    required this.onPressed,
    required this.color,
    this.status = CartButtonStatus.enabled,
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
          backgroundColor: color,
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
              : Icon(
                  Icons.add_shopping_cart,
                  color: Colors.grey[900],
                  size: 22.0,
                ),
        ),
      ),
    );
  }
}
