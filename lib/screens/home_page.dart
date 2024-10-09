import 'package:flutter/material.dart';
import 'package:pdf_demo/screens/pdf_view_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pdf Demo")
      ),

      body: Column(children: [

        ListTile(
          leading: CircleAvatar(child: Center(child: Text("1"),),),
          title: Text("Open Pdf from asset"),
          trailing: TextButton(child: Text("Open"), onPressed: (){

Navigator.push(context, MaterialPageRoute(builder: (_)=> PdfViewPage(isAsset: true)));


          },),
        ),

        ListTile(
          leading: CircleAvatar(child: Center(child: Text("2"),),),
          title: Text("Open Pdf from network"),
          trailing: TextButton(child: Text("Open"), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> PdfViewPage(
              isAsset: false,
              
            )));
          },),
        )
      ],),
    );
  }
}