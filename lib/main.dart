import 'package:agencia_de_veiculos/view/base/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initParse();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'agencia de veiculo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff10101E),
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Color(0xff10101E),
        ),
      ),
      home: BaseScreen(),
    );
  }
}

Future<void> initParse() async {
  await Parse().initialize(
    '7JD11Jhx4CwKZPS9Z10UwTMuMr9gltdeuusqqLHs',
    'https://parseapi.back4app.com/',
    clientKey: '0ixCQ8J05ninND11cWO1zwcmAEKEcptuXJv7aQbu',
    autoSendSessionId: true,
    debug: true,
  );
}
