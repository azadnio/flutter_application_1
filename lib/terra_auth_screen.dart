import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TerraAuthScreen extends StatelessWidget {
  final String navUrl;

  const TerraAuthScreen({Key? key, required this.navUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: navUrl,
      javascriptMode: JavascriptMode.unrestricted,
      navigationDelegate: (NavigationRequest request) {
        if (request.url.contains("test")) return NavigationDecision.prevent;

        return NavigationDecision.navigate;
      },
    );
  }
}
