import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLoadingIndicator extends StatelessWidget {
  final bool isShowLoading;

  const AppLoadingIndicator({required this.isShowLoading, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isShowLoading,
      child: Container(
        alignment: Alignment.center,
        color: Colors.black26,
        width: 1.sw,
        height: 1.sh,
        child: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            Colors.blue,
          ),
        ),
      ),
    );
  }
}