import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_app/view/Widgets/url_text.dart';

class SubCategory extends pw.StatelessWidget {
  final String title;
  final String subTitle;
  final bool indent;
  final String? url;

  SubCategory({
    required this.title,
    this.subTitle = "",
    this.indent = true,
    this.url,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
        margin: pw.EdgeInsets.only(top: 8, left: (indent) ? 20 : 0, right: 10),
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Row(children: [
              pw.Text(
                title,
                style:
                    pw.TextStyle(fontSize: 11, fontWeight: pw.FontWeight.bold),
              ),
              // pw.Text(
              //   " - ",
              //   style:
              //       pw.TextStyle(fontSize: 11, fontWeight: pw.FontWeight.bold),
              // ),
              // if (url != null)
              //   UrlText(
              //     text: "Link",
              //     url: url!,
              //     fontSize: 11,
              //     color: PdfColors.black,
              //     bold: true,
              //   ),
            ]),
            pw.Text(
              subTitle,
              style: pw.TextStyle(
                fontSize: 10,
                color: PdfColor.fromHex("#AAAAAA"),
              ),
            ),
          ],
        ));
  }
}
