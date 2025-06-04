import 'package:flutter/material.dart';

enum RoundedButtonStatus {
  enabled,
  busy,
  disabled,
}

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final RoundedButtonStatus status;
  final String text;
  final Color color;

  const RoundedButton({
    required this.onPressed,
    required this.text,
    required this.color,
    this.status = RoundedButtonStatus.enabled,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: status != RoundedButtonStatus.enabled,
      child: MaterialButton(
        shape: const StadiumBorder(),
        onPressed: onPressed,
        minWidth: 200.0,
        height: 42.0,
        color: color,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300,),
          child: status == RoundedButtonStatus.busy
              ? const SizedBox.square(
                  dimension: 20,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
        ),
      ),
    );
  }
}
