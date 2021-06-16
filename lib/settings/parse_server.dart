
import 'package:parse_server_sdk/parse_server_sdk.dart';

Future<void> initParse() async {
  await Parse().initialize(
    '7JD11Jhx4CwKZPS9Z10UwTMuMr9gltdeuusqqLHs',
    'https://parseapi.back4app.com/',
    clientKey: '0ixCQ8J05ninND11cWO1zwcmAEKEcptuXJv7aQbu',
    autoSendSessionId: true,
    debug: true,
  );
}