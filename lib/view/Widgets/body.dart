import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

class Body extends pw.StatelessWidget {
  final List<String> body;
  final bool bullets;

  Body({
    required this.body,
    this.bullets = true,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
        margin: const pw.EdgeInsets.only(left: 20, top: 2, right: 10),
        child: pw.ListView.builder(
          itemBuilder: (pw.Context context, int index) {
            return (bullets)
                ? pw.Bullet(
                    text: body[index],
                    style: const pw.TextStyle(fontSize: 11),
                    bulletSize: 5,
                    bulletMargin:
                        pw.EdgeInsets.symmetric(vertical: 5, horizontal: 2))
                : pw.Text(
                    body[index],
                    style: const pw.TextStyle(fontSize: 11),
                  );
          },
          itemCount: body.length,
        )
        // child: pw.Text(body, style: pw.TextStyle(fontSize: 11)),
        );
  }
}
