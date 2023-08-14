import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebviewPage extends StatelessWidget {
  const ArticleWebviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('視頻開獎'),
      ),
      body: const WebView(
        initialUrl: "http://192.168.0.154:8089",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }


}
