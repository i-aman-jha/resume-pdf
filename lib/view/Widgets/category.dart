import 'package:pdf/widgets.dart' as pw;

class Category extends pw.StatelessWidget {
  final String title;
  final pw.IconData icon;

  Category({
    required this.title,
    required this.icon,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
        margin: const pw.EdgeInsets.only(top: 20, right: 10),
        child: pw.Column(
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                pw.Icon(icon, size: 11),
                pw.SizedBox(width: 8),
                pw.Text(
                  title,
                  style: pw.TextStyle(
                    fontSize: 14,
                    fontWeight: pw.FontWeight.bold,
                  ),
                )
              ],
            ),
            // pw.Row(
            //   children: [
            //     pw.Padding(padding: const pw.EdgeInsets.only(left: 10)),
            //     pw.Text(body)
            //   ],
            // )
          ],
        ));
  }
}
