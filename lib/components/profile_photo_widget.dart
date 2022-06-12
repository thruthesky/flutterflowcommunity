import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePhotoWidget extends StatefulWidget {
  const ProfilePhotoWidget({
    Key key,
    this.size,
  }) : super(key: key);

  final double size;

  @override
  _ProfilePhotoWidgetState createState() => _ProfilePhotoWidgetState();
}

class _ProfilePhotoWidgetState extends State<ProfilePhotoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size,
      height: widget.size,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
        shape: BoxShape.circle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondaryColor,
          width: 2,
        ),
      ),
      child: Stack(
        children: [
          if ((currentUserPhoto != null) && (currentUserPhoto != ''))
            AuthUserStreamWidget(
              child: Container(
                width: widget.size,
                height: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CachedNetworkImage(
                  imageUrl: currentUserPhoto,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          if ((currentUserPhoto) == '')
            AuthUserStreamWidget(
              child: Container(
                width: double.infinity,
                height: widget.size,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
