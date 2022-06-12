import '../auth/auth_util.dart';
import '../components/app_drawer_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({Key key}) : super(key: key);

  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Home Screen',
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: Text(
                            'Welcome to FlutterFlow Comunity App!',
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context).title1,
                          ),
                        ),
                        if ((currentUserPhoto) == '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: AuthUserStreamWidget(
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed('profileScreen');
                                },
                                child: ListTile(
                                  title: Text(
                                    'Update your profile picture',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  subtitle: Text(
                                    'Profile picture helps your friend identify it is you even without looking at  your name!',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF303030),
                                    size: 20,
                                  ),
                                  tileColor:
                                      FlutterFlowTheme.of(context).lineColor,
                                  dense: true,
                                ),
                              ),
                            ),
                          ),
                        if ((currentUserDisplayName) == '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: AuthUserStreamWidget(
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed('profileScreen');
                                },
                                child: ListTile(
                                  title: Text(
                                    'Update your name',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  subtitle: Text(
                                    'We will be glad to call you by your name instead of anything else.',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF171718),
                                        ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF303030),
                                    size: 20,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: true,
                                ),
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              context.pushNamed('aboutUsScreen');
                            },
                            child: ListTile(
                              title: Text(
                                'Want to know more about us or this app?',
                                style: FlutterFlowTheme.of(context).subtitle2,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF303030),
                                size: 20,
                              ),
                              tileColor: Color(0xFFF5F5F5),
                              dense: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: Text(
                            'Invite friends!',
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context).title1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              context.pushNamed('inviteFriendsScreen');
                            },
                            child: ListTile(
                              subtitle: Text(
                                'Invite friends over to experience this awesome app!',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF171718),
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF303030),
                                size: 20,
                              ),
                              tileColor: Color(0xFFF5F5F5),
                              dense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
