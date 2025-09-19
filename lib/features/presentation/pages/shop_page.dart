// import
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: _buildWebView());
  }

  Widget _buildWebView() {
    // Vytvorenie kontrolera
    final WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted) // povolenie JS
      ..loadRequest(Uri.parse('https://himdeve.eu')); // načítanie URL

    // Vrátenie WebViewWidget s kontrolerom
    return WebViewWidget(controller: controller);
  }
}
