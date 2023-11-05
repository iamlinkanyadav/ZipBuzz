import 'package:flutter/material.dart';
import 'package:zipbuzzz/core/app_export.dart';
import 'package:zipbuzzz/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:zipbuzzz/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:zipbuzzz/widgets/app_bar/custom_app_bar.dart';
import 'package:zipbuzzz/widgets/custom_elevated_button.dart';
import 'package:zipbuzzz/widgets/custom_icon_button.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.lightBlue900,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildStackOne(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 17.v),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: SizedBox(
                                            width: 208.h,
                                            child: Text(
                                                "msg_a_madcap_house_party".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleMedium18
                                                    .copyWith(height: 1.56)))),
                                    SizedBox(height: 5.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(children: [
                                          _buildButtonDance(context),
                                          Container(
                                              width: 87.h,
                                              margin:
                                                  EdgeInsets.only(left: 8.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.h,
                                                  vertical: 5.v),
                                              decoration: AppDecoration
                                                  .fillBlueGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder16),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgUserBlueGray500,
                                                        height: 20.adaptSize,
                                                        width: 20.adaptSize),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: Text("lbl_18".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium)),
                                                    Text("lbl_50".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium)
                                                  ]))
                                        ])),
                                    SizedBox(height: 24.v),
                                    Divider(),
                                    SizedBox(height: 22.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("lbl_event_details".tr,
                                            style: theme.textTheme.bodySmall)),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(children: [
                                          CustomIconButton(
                                              height: 44.adaptSize,
                                              width: 44.adaptSize,
                                              padding: EdgeInsets.all(8.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillBlueGray,
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgIconWrapper)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8.h,
                                                  top: 3.v,
                                                  bottom: 2.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_december_20".tr,
                                                        style: CustomTextStyles
                                                            .titleSmallMedium),
                                                    Text("lbl_friday".tr,
                                                        style: theme.textTheme
                                                            .bodySmall)
                                                  ]))
                                        ])),
                                    SizedBox(height: 8.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 88.h),
                                            child: Row(children: [
                                              CustomIconButton(
                                                  height: 44.adaptSize,
                                                  width: 44.adaptSize,
                                                  padding: EdgeInsets.all(8.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillBlueGray,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgUserBlueGray50044x44)),
                                              Expanded(
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 8.h,
                                                          top: 3.v,
                                                          bottom: 2.v),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_gala_convention"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleSmallMedium),
                                                            Text(
                                                                "msg_420_gala_st_san"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)
                                                          ])))
                                            ]))),
                                    SizedBox(height: 8.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(children: [
                                          CustomIconButton(
                                              height: 44.adaptSize,
                                              width: 44.adaptSize,
                                              padding: EdgeInsets.all(8.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillBlueGray,
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgClose)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8.h,
                                                  top: 11.v,
                                                  bottom: 11.v),
                                              child: Text(
                                                  "msg_8_00_pm_12_00".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallMedium))
                                        ])),
                                    SizedBox(height: 24.v),
                                    Divider(),
                                    SizedBox(height: 22.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("lbl_hosts".tr,
                                            style: theme.textTheme.bodySmall)),
                                    SizedBox(height: 15.v),
                                    _buildFrameEight(context),
                                    SizedBox(height: 8.v),
                                    _buildButtonMessage2(context),
                                    SizedBox(height: 24.v),
                                    Divider(),
                                    SizedBox(height: 22.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("lbl_about".tr,
                                            style: theme.textTheme.bodySmall)),
                                    SizedBox(height: 17.v),
                                    SizedBox(
                                        width: 309.h,
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "msg_get_ready_to_turn3"
                                                      .tr,
                                                  style: theme
                                                      .textTheme.bodyMedium!
                                                      .copyWith(height: 1.71)),
                                              TextSpan(
                                                  text:
                                                      "msg_get_ready_to_groove_we_re"
                                                          .tr,
                                                  style: theme
                                                      .textTheme.titleSmall!
                                                      .copyWith(height: 1.43))
                                            ]),
                                            textAlign: TextAlign.left)),
                                    SizedBox(height: 17.v),
                                    Divider(),
                                    SizedBox(height: 24.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("lbl_sneak_peaks".tr,
                                            style: theme.textTheme.bodySmall)),
                                    SizedBox(height: 13.v),
                                    _buildRowImage1(context),
                                    SizedBox(height: 8.v),
                                    _buildRowImage2(context),
                                    SizedBox(height: 7.v),
                                    _buildRowImage3(context),
                                    SizedBox(height: 7.v)
                                  ]))))
                ])),
            bottomNavigationBar: _buildButtonsWrapper(context)));
  }

  /// Section Widget
  Widget _buildStackOne(BuildContext context) {
    return SizedBox(
        height: 290.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBannerImage,
              height: 290.v,
              width: 375.h,
              alignment: Alignment.center),
          CustomAppBar(
              height: 62.v,
              leadingWidth: 56.h,
              leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 16.h),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              actions: [
                AppbarTrailingIconbuttonOne(
                    imagePath: ImageConstant.imgHeartFillWhiteA700,
                    margin: EdgeInsets.symmetric(horizontal: 16.h))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildButtonDance(BuildContext context) {
    return CustomElevatedButton(
        height: 32.v,
        width: 94.h,
        text: "lbl_dance".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLayer1RedA100,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        buttonStyle: CustomButtonStyles.fillDeepOrange,
        buttonTextStyle: CustomTextStyles.bodyMediumRed400);
  }

  /// Section Widget
  Widget _buildButtonMessage1(BuildContext context) {
    return CustomElevatedButton(
        height: 32.v,
        width: 70.h,
        text: "lbl_message".tr,
        buttonStyle: CustomButtonStyles.fillGrayTL8,
        buttonTextStyle: CustomTextStyles.bodySmallIndigoA400_1);
  }

  /// Section Widget
  Widget _buildFrameEight(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgRectangle4194,
          height: 32.adaptSize,
          width: 32.adaptSize,
          radius: BorderRadius.circular(16.h)),
      Padding(
          padding: EdgeInsets.only(left: 8.h, top: 6.v, bottom: 7.v),
          child: Text("lbl_jennifer_cill".tr,
              style: CustomTextStyles.bodySmallGray900)),
      Spacer(),
      _buildButtonMessage1(context)
    ]);
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return CustomElevatedButton(
        height: 32.v,
        width: 70.h,
        text: "lbl_message".tr,
        buttonStyle: CustomButtonStyles.fillGrayTL8,
        buttonTextStyle: CustomTextStyles.bodySmallIndigoA400_1);
  }

  /// Section Widget
  Widget _buildButtonMessage2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgRectangle419432x32,
          height: 32.adaptSize,
          width: 32.adaptSize,
          radius: BorderRadius.circular(16.h)),
      Padding(
          padding: EdgeInsets.only(left: 8.h, top: 6.v, bottom: 7.v),
          child: Text("lbl_rachel_chu".tr,
              style: CustomTextStyles.bodySmallGray900)),
      Spacer(),
      _buildMessage(context)
    ]);
  }

  /// Section Widget
  Widget _buildRowImage1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomImageView(
          imagePath: ImageConstant.imgImage,
          height: 100.v,
          width: 200.h,
          radius: BorderRadius.circular(8.h)),
      CustomImageView(
          imagePath: ImageConstant.imgImage100x103,
          height: 100.v,
          width: 103.h,
          radius: BorderRadius.circular(8.h))
    ]);
  }

  /// Section Widget
  Widget _buildRowImage2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomImageView(
              imagePath: ImageConstant.imgImage100x98,
              height: 100.v,
              width: 98.h,
              radius: BorderRadius.circular(8.h),
              margin: EdgeInsets.only(right: 4.h))),
      Expanded(
          child: CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: 100.v,
              width: 98.h,
              radius: BorderRadius.circular(8.h),
              margin: EdgeInsets.symmetric(horizontal: 4.h))),
      Expanded(
          child: CustomImageView(
              imagePath: ImageConstant.imgImage2,
              height: 100.v,
              width: 98.h,
              radius: BorderRadius.circular(8.h),
              margin: EdgeInsets.only(left: 4.h)))
    ]);
  }

  /// Section Widget
  Widget _buildRowImage3(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomImageView(
          imagePath: ImageConstant.imgImage3,
          height: 100.v,
          width: 103.h,
          radius: BorderRadius.circular(8.h)),
      CustomImageView(
          imagePath: ImageConstant.imgImage100x200,
          height: 100.v,
          width: 200.h,
          radius: BorderRadius.circular(8.h))
    ]);
  }

  /// Section Widget
  Widget _buildButtonJoin(BuildContext context) {
    return CustomElevatedButton(
        height: 48.v,
        width: 167.h,
        text: "lbl_join".tr,
        buttonStyle: CustomButtonStyles.fillIndigoA,
        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700);
  }

  /// Section Widget
  Widget _buildButtonShare(BuildContext context) {
    return CustomElevatedButton(
        height: 48.v,
        width: 167.h,
        text: "lbl_share".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.fillIndigoA,
        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700);
  }

  /// Section Widget
  Widget _buildButtonsWrapper(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildButtonJoin(context), _buildButtonShare(context)]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
