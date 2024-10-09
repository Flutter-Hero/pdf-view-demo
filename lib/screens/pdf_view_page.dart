import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';


class PdfViewPage extends StatelessWidget {
  final bool isAsset;
  const PdfViewPage({super.key, required this.isAsset});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pdf View"),
        centerTitle: true,
      ),

      body:  isAsset? PDF(
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: false,
        pageFling: false,
        onError: (error) {
          print(error.toString());
        },
        onPageError: (page, error) {
          print('$page: ${error.toString()}');
        },
        // onPageChanged: (int page, int total) {
        //   print('page change: $page/$total');
        // },
      ).fromAsset('assets/flutter_tutorial.pdf')
:  PDF().cachedFromUrl(
             'https://riptutorial.com/Download/dart.pdf',
             placeholder: (progress) => Center(child: Text('$progress %')),
             errorWidget: (error) => Center(child: Text(error.toString())),
           ) ,
    );
  }
}