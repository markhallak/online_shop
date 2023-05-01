import 'package:flutter/material.dart';

class BuildOutlineButton extends StatelessWidget {
  final IconData icon;

  const BuildOutlineButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: () {},
        child: Icon(icon),
      ),
    );
  }
}
