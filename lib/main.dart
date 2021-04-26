import 'package:flutter/material.dart';
import 'package:saldanhabank/screens/transfer/transfer_list.dart';

void main() => runApp(SaldanhaBank());

class SaldanhaBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow[500],
        accentColor: Colors.grey[900],
      ),
      home: TransfersList(),
    );
  }
}
