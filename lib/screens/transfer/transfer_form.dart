import 'package:flutter/material.dart';
import 'package:saldanhabank/components/edit_input.dart';
import 'package:saldanhabank/models/transfer/transfer.dart';

class TransferForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransferFormState();
  }
}

class TransferFormState extends State<TransferForm> {
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  _createTransfer(BuildContext context) {
    final accountNumber = int.tryParse(_accountController.text);
    final value = double.tryParse(_valueController.text);

    if (accountNumber != null && value != null) {
      final createdTransfer = Transfer(value, accountNumber);
      Navigator.pop(context, createdTransfer);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create transfer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EditInput(
              controller: _accountController,
              label: 'account number',
              hint: '0000',
            ),
            EditInput(
              controller: _valueController,
              label: 'value',
              hint: '00.0',
              icon: Icons.monetization_on,
              keyboard: TextInputType.numberWithOptions(decimal: true),
            ),
            ElevatedButton(
              onPressed: () => _createTransfer(context),
              child: Text('Confirmar'),
            )
          ],
        ),
      ),
    );
  }
}
