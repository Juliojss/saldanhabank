import 'package:flutter/material.dart';
import 'package:saldanhabank/models/transfer/transfer.dart';

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  const TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer.value.toString()),
        subtitle: Text(_transfer.account.toString()),
      ),
    );
  }
}
