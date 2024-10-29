import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class UrlText extends pw.StatelessWidget {
  final String text;
  final String url;
  final double fontSize;
  final PdfColor color;
  final bool bold;

  UrlText({
    required this.text,
    required this.url,
    this.fontSize = 10,
    this.color = PdfColors.blue,
    this.bold = false,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
      margin: const pw.EdgeInsets.only(top: 2),
      child: pw.UrlLink(
        destination: url,
        child: pw.Text(text,
            style: pw.TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: (bold) ? pw.FontWeight.bold : null,
            )),
      ),
    );
  }
}
