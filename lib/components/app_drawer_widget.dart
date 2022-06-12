import '../auth/auth_util.dart';
import '../components/profile_photo_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawerWidget extends StatefulWidget {
  const AppDrawerWidget({Key key}) : super(key: key);

  @override
  _AppDrawerWidgetState createState() => _AppDrawerWidgetState();
}

class _AppDrawerWidgetState extends State<AppDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: double.infinity,
          height: 75,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryColor,
            boxShadow: [
              BoxShadow(
                color: FlutterFlowTheme.of(context).primaryColor,
              )
            ],
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 76,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryColor,
            boxShadow: [
              BoxShadow(
                color: FlutterFlowTheme.of(context).primaryColor,
              )
            ],
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
          ),
          child: InkWell(
            onTap: () async {
              context.pushNamed('profileScreen');
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                  child: ProfilePhotoWidget(
                    size: 60.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                  child: AuthUserStreamWidget(
                    child: Text(
                      valueOrDefault<String>(
                        currentUserDisplayName,
                        'No name',
                      ),
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
          child: InkWell(
            onTap: () async {
              context.pushNamed('HomeScreen');
            },
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: FlutterFlowTheme.of(context).primaryText,
              ),
              title: Text(
                'Home',
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).primaryText,
              dense: true,
              contentPadding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
          child: InkWell(
            onTap: () async {
              context.pushNamed(
                'postListScreen',
                queryParams: {
                  'category': serializeParam('qna', ParamType.String),
                }.withoutNulls,
              );
            },
            child: ListTile(
              leading: Icon(
                Icons.question_answer_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 28,
              ),
              title: Text(
                'QnA',
                style: FlutterFlowTheme.of(context).title3,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryText,
              dense: true,
              contentPadding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
          child: InkWell(
            onTap: () async {
              context.pushNamed(
                'postListScreen',
                queryParams: {
                  'category': serializeParam('discussion', ParamType.String),
                }.withoutNulls,
              );
            },
            child: ListTile(
              leading: Icon(
                Icons.question_answer,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 28,
              ),
              title: Text(
                'Discussion',
                style: FlutterFlowTheme.of(context).title3,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryText,
              dense: true,
              contentPadding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
          child: InkWell(
            onTap: () async {
              context.pushNamed('profileScreen');
            },
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 28,
              ),
              title: Text(
                'Profile',
                style: FlutterFlowTheme.of(context).title3,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryText,
              dense: true,
              contentPadding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
          child: InkWell(
            onTap: () async {
              context.pushNamed('aboutUsScreen');
            },
            child: ListTile(
              leading: Icon(
                Icons.info_outline_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 28,
              ),
              title: Text(
                'About Us',
                style: FlutterFlowTheme.of(context).title3,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryText,
              dense: true,
              contentPadding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
          child: InkWell(
            onTap: () async {
              context.pushNamed('inviteFriendsScreen');
            },
            child: ListTile(
              leading: Icon(
                Icons.person_add_alt_1_sharp,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 28,
              ),
              title: Text(
                'Invite Friends',
                style: FlutterFlowTheme.of(context).title3,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryText,
              dense: true,
              contentPadding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
          child: InkWell(
            onTap: () async {
              GoRouter.of(context).prepareAuthEvent();
              await signOut();
              context.goNamedAuth('SignInScreen', mounted);
            },
            child: ListTile(
              leading: Icon(
                Icons.power_settings_new,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              title: Text(
                'Sign out',
                style: FlutterFlowTheme.of(context).title3,
              ),
              tileColor: FlutterFlowTheme.of(context).primaryText,
              dense: true,
              contentPadding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            ),
          ),
        ),
      ],
    );
  }
}
