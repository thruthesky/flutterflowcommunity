import '../backend/api_requests/api_calls.dart';
import '../components/app_drawer_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class PostListScreenWidget extends StatefulWidget {
  const PostListScreenWidget({
    Key key,
    this.category,
  }) : super(key: key);

  final String category;

  @override
  _PostListScreenWidgetState createState() => _PostListScreenWidgetState();
}

class _PostListScreenWidgetState extends State<PostListScreenWidget> {
  ApiCallResponse postList;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      postList = await PostListCall.call(
        category: widget.category,
        limit: 25,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          widget.category,
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
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
              child: FutureBuilder<ApiCallResponse>(
                future: PostListCall.call(
                  category: valueOrDefault<String>(
                    widget.category,
                    'qna',
                  ),
                  limit: 25,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    );
                  }
                  final listViewPostListResponse = snapshot.data;
                  return Builder(
                    builder: (context) {
                      final posts = getJsonField(
                            (listViewPostListResponse?.jsonBody ?? ''),
                            r'''$[?(@)]''',
                          )?.toList() ??
                          [];
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: posts.length,
                        itemBuilder: (context, postsIndex) {
                          final postsItem = posts[postsIndex];
                          return InkWell(
                            onTap: () async {
                              context.pushNamed(
                                'postViewScreen',
                                queryParams: {
                                  'post':
                                      serializeParam(postsItem, ParamType.JSON),
                                }.withoutNulls,
                              );
                            },
                            child: ListTile(
                              title: Text(
                                getJsonField(
                                  postsItem,
                                  r'''$.title''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              subtitle: Text(
                                getJsonField(
                                  postsItem,
                                  r'''$.author''',
                                ).toString(),
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
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
