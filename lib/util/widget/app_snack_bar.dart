import 'package:flutter/material.dart';
import 'package:quiche_vpn/util/util.dart';

/// Show title snack bar
void showTitleSnackBar(String text, {int seconds = 3}) {
  scaffoldMessengerKey.currentState?.removeCurrentSnackBar();
  var snackBar = SnackBar(
    backgroundColor: AppColor.mainGreen.withOpacity(.8),
    behavior: SnackBarBehavior.floating,
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.r)),
    ),
    margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
    content: Container(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: AppText.h3(
                color: AppColor.white,
                text,
                scalable: false,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
  );
  scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
}

/// Show loading w/ title snack bar
void showLoadingSnackBar(String text, {int seconds = 60}) {
  scaffoldMessengerKey.currentState?.removeCurrentSnackBar();
  var snackBar = SnackBar(
    backgroundColor: AppColor.mainGreen.withOpacity(.8),
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.r)),
    ),
    duration: Duration(seconds: seconds),
    behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
    content: Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 6.h),
            child: AppText.h3(
              color: AppColor.white,
              text,
              scalable: false,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 3.w,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
  scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
}

/// Hide snack bar
void hideSnackBar() {
  scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
}
