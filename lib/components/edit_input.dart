import 'package:flutter/material.dart';

class EditInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData icon;
  final TextInputType keyboard;

  const EditInput({
    this.controller,
    this.label,
    this.hint,
    this.icon,
    this.keyboard,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: label,
          hintText: hint,
        ),
        keyboardType: keyboard != null ? keyboard : TextInputType.number,
      ),
    );
  }
}
