import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class MyList extends pw.StatelessWidget {
  final List<String> list;

  MyList({
    required this.list,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.ListView.separated(
      itemCount: list.length,
      itemBuilder: (pw.Context context, index) {
        return pw.Container(
          alignment: const pw.Alignment(-1, 0),
          margin: const pw.EdgeInsets.only(top: 5, bottom: 4),
          child: pw.Text(list[index], style: const pw.TextStyle(fontSize: 10)),
        );
      },
      separatorBuilder: (context, index) {
        return pw.Container(
            height: 2,
            decoration: const pw.BoxDecoration(color: PdfColors.blue));
      },
    );
  }
}
