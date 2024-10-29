import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<pw.PageTheme> pageTheme(PdfPageFormat format) async {
  format = format.applyMargin(
    left: 2.0 * PdfPageFormat.cm,
    top: 2.0 * PdfPageFormat.cm,
    right: 2.0 * PdfPageFormat.cm,
    bottom: 1 * PdfPageFormat.cm,
  );
  return pw.PageTheme(
    pageFormat: format,
    theme: pw.ThemeData.withFont(
      base: await PdfGoogleFonts.akatabRegular(),
      bold: await PdfGoogleFonts.akatabBold(),
      icons: await PdfGoogleFonts.materialIcons(),
    ),
    buildBackground: (pw.Context context) {
      return pw.FullPage(
        ignoreMargins: true,
      );
    },
  );
}
