import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:resume_app/view/resume.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late PrintingInfo printingInfo;
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _init();
  // }
  //
  // Future<void> _init() async {
  //   final info = await Printing.info();
  //   setState(() {
  //     printingInfo = info;
  //   });
  // }

  void _showPrintedToast(BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Document shared.....")));
  }

  void _showSharedToast(BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Document shared.....")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume Application"),
      ),
      body: PdfPreview(
        build: (PdfPageFormat format) => generateResume(format),
        onPrinted: _showPrintedToast,
        onShared: _showSharedToast,
        pdfFileName: "resume",
        previewPageMargin: const EdgeInsets.all(10),
        actionBarTheme: const PdfActionBarTheme(backgroundColor: Colors.black),
      ),
    );
  }
}
