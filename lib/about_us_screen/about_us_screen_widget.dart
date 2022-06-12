import '../components/app_drawer_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsScreenWidget extends StatefulWidget {
  const AboutUsScreenWidget({Key key}) : super(key: key);

  @override
  _AboutUsScreenWidgetState createState() => _AboutUsScreenWidgetState();
}

class _AboutUsScreenWidgetState extends State<AboutUsScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'About Us',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      endDrawer: Drawer(
        elevation: 16,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: AppDrawerWidget(),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Text(
                            'Our story',
                            style: FlutterFlowTheme.of(context).title1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Text(
                            'Cupcake ipsum dolor sit amet caramels cookie. Pie sweet roll I love ice cream chocolate cake macaroon. Candy gingerbread jujubes chocolate bar chocolate cake liquorice. Wafer bonbon tiramisu lemon drops marzipan gingerbread sweet roll jelly beans powder. Jujubes I love toffee I love apple pie sweet roll jelly beans. Lollipop topping I love chocolate cake jelly beans pie. I love lollipop chocolate cake jujubes ice cream gummies chocolate cake I love sweet. Bonbon cookie jujubes danish wafer. Pastry jelly marshmallow lollipop I love cake. Tootsie roll gummies liquorice fruitcake jelly beans lemon drops.\n\nTootsie roll cake pie oat cake lollipop ice cream. Pastry powder icing jujubes cookie jujubes. Gummi bears dessert chocolate bar cookie candy canes. Pudding cookie pastry sesame snaps dragée macaroon chocolate cake muffin. Fruitcake cake bonbon cake gummies I love topping danish. Fruitcake chocolate cake croissant icing toffee donut croissant sugar plum bonbon. Cotton candy soufflé marshmallow muffin cake jelly gummi bears. Topping carrot cake pastry powder apple pie cookie halvah. Dessert soufflé dragée chocolate macaroon candy canes I love halvah. Soufflé lollipop I love lollipop candy.',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                            child: Text(
                              'Developers',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: ListTile(
                            title: Text(
                              'Obi-wan Kinobi',
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            subtitle: Text(
                              'Click to know more about him',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF303030),
                              size: 20,
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            dense: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: ListTile(
                            title: Text(
                              'R2-D2',
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            subtitle: Text(
                              'Click to know more about this robot',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF303030),
                              size: 20,
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            dense: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
