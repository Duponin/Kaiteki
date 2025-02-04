import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaiteki/di.dart';

class MfaDialog extends StatefulWidget {
  const MfaDialog({Key? key}) : super(key: key);

  @override
  State<MfaDialog> createState() => _MfaDialogState();
}

class _MfaDialogState extends State<MfaDialog> {
  final _textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    final l10n = context.getL10n();
    return AlertDialog(
      title: Text(l10n.mfaTitle),
      content: Form(
        key: _formKey,
        onChanged: _onFormChanged,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 300,
              child: TextFormField(
                autofillHints: const [AutofillHints.oneTimeCode],
                controller: _textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.visiblePassword,
                maxLength: 6,
                style: GoogleFonts.robotoMono(fontSize: 24),
                textInputAction: TextInputAction.done,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                autofocus: true,
                autocorrect: false,
                onFieldSubmitted: (code) => _submit(context, code),
                validator: (code) =>
                    code?.isEmpty == false ? null : l10n.mfaNoCode,
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text(l10n.cancelButtonLabel),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          onPressed: isValid
              ? () => _submit(context, _textController.value.text)
              : null,
          child: Text(l10n.verifyButtonLabel),
        ),
      ],
    );
  }

  void _submit(BuildContext context, String code) {
    Navigator.of(context).pop(code);
  }

  void _onFormChanged() {
    final isValid = _formKey.currentState!.validate();
    setState(() => this.isValid = isValid);
  }
}
