import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewAppDrawerWidget extends StatefulWidget {
  const NewAppDrawerWidget({Key key}) : super(key: key);

  @override
  _NewAppDrawerWidgetState createState() => _NewAppDrawerWidgetState();
}

class _NewAppDrawerWidgetState extends State<NewAppDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Text(
        'newAppDrawer',
        style: FlutterFlowTheme.of(context).bodyText1,
      ),
    );
  }
}
