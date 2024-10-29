import 'package:pdf/widgets.dart' as pw;

class MyText extends pw.StatelessWidget {
  final String text;

  MyText({
    required this.text,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
      margin: const pw.EdgeInsets.only(top: 2),
      child: pw.Text(text, style: const pw.TextStyle(fontSize: 10)),
    );
  }
}
