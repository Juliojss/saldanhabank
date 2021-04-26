import 'package:flutter/material.dart';
import 'package:saldanhabank/models/transfer/transfer.dart';
import 'package:saldanhabank/screens/transfer/transfer_form.dart';
import 'package:saldanhabank/screens/transfer/transfer_item.dart';

class TransfersList extends StatefulWidget {
  final List<Transfer> _transfers = [];

  @override
  State<StatefulWidget> createState() {
    return TransferListState();
  }
}

class TransferListState extends State<TransfersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfers'),
      ),
      body: ListView.builder(
        itemCount: widget._transfers.length,
        itemBuilder: (context, item) {
          return TransferItem(widget._transfers[item]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Transfer> future = Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TransferForm(),
              ));
          future.then((value) {
            if (value != null) {
              setState(() => widget._transfers.add(value));
            }
          });
        },
      ),
    );
  }
}
