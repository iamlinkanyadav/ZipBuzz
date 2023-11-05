import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:zipbuzzz/core/app_export.dart';
import 'package:zipbuzzz/widgets/custom_elevated_button.dart';
import 'package:zipbuzzz/widgets/custom_icon_button.dart';
import 'package:zipbuzzz/widgets/custom_outlined_button.dart';
import 'package:zipbuzzz/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomepageOnePage extends StatelessWidget {
  HomepageOnePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime focusedDay = DateTime.now();

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildCategorySlider(context),
                  SizedBox(height: 24.v),
                  _buildCategoryBlock4(context),
                  SizedBox(height: 29.v),
                  _buildCategoryBlock8(context),
                  SizedBox(height: 23.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgIndicatorWrapper,
                    height: 10.v,
                    width: 20.h,
                  ),
                  SizedBox(height: 18.v),
                  _buildCalendarWidget(context),
                  SizedBox(height: 25.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_upcoming_events".tr,
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildUpcomingEventCard1(context),
                  SizedBox(height: 16.v),
                  _buildUpcomingEventCard2(context),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildUpcomingEventCard(
                      context,
                      monthBlock: "lbl_dec".tr,
                      textDate: "lbl_20".tr,
                      fri: "lbl_fri".tr,
                      eventImage: ImageConstant.imgEventImage1,
                      eventTitleName: "lbl_8".tr,
                      eventTitleName1: "lbl_10".tr,
                      eventTitleName2: "msg_wild_with_the_nature".tr,
                      johnSmith: "lbl_john_smith".tr,
                      galaStSanJose: "msg_420_gala_st_san".tr,
                      time: "lbl_8_00_pm".tr,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildUpcomingEventCard(
                      context,
                      monthBlock: "lbl_dec".tr,
                      textDate: "lbl_20".tr,
                      fri: "lbl_fri".tr,
                      eventImage: ImageConstant.imgEventImage2,
                      eventTitleName: "lbl_8".tr,
                      eventTitleName1: "lbl_10".tr,
                      eventTitleName2: "msg_dazzling_of_evermore".tr,
                      johnSmith: "lbl_john_smith".tr,
                      galaStSanJose: "msg_420_gala_st_san".tr,
                      time: "lbl_8_00_pm".tr,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildUpcomingEventCard5(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategorySlider(BuildContext context) {
    return SizedBox(
      height: 126.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCategorySlider,
            height: 72.v,
            width: 375.h,
            radius: BorderRadius.vertical(
              bottom: Radius.circular(24.h),
            ),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 2.v),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillIndigoA.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 4.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 4.v,
                          bottom: 4.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_san_jose_usa".tr,
                              style: CustomTextStyles.bodySmallWhiteA700_1,
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                "lbl_94088".tr,
                                style: CustomTextStyles.bodySmallWhiteA700_2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillWhiteA,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgNotification,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.v),
                  CustomSearchView(
                    controller: searchController,
                    hintText: "msg_search_for_an_event".tr,
                  ),
                  SizedBox(height: 4.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 14.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.indigoA400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryBlock4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildCategoryBlock(
            context,
            userImage: ImageConstant.imgLayer1Red200,
            userSports: "lbl_hiking".tr,
          ),
          Spacer(
            flex: 37,
          ),
          _buildCategoryBlock(
            context,
            userImage: ImageConstant.imgArt,
            userSports: "lbl_sports".tr,
          ),
          Spacer(
            flex: 37,
          ),
          _buildCategoryBlock(
            context,
            userImage: ImageConstant.imgCapa1,
            userSports: "lbl_music".tr,
          ),
          Spacer(
            flex: 24,
          ),
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLayer1Indigo100,
                height: 40.adaptSize,
                width: 40.adaptSize,
              ),
              SizedBox(height: 6.v),
              Text(
                "lbl_movie_clubs".tr,
                style: CustomTextStyles.bodySmallGray900,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryBlock8(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCategoryBlock(
            context,
            userImage: ImageConstant.imgLayer1RedA100,
            userSports: "lbl_dance".tr,
          ),
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLayer1,
                height: 40.adaptSize,
                width: 40.adaptSize,
              ),
              SizedBox(height: 6.v),
              Text(
                "lbl_fitness".tr,
                style: CustomTextStyles.bodySmallGray900,
              ),
            ],
          ),
          _buildCategoryBlock(
            context,
            userImage: ImageConstant.imgTrophy,
            userSports: "lbl_parties".tr,
          ),
          _buildCategoryBlock(
            context,
            userImage: ImageConstant.imgLayer1Teal300,
            userSports: "lbl_book".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendarWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_my_calendar_events".tr,
            style: CustomTextStyles.titleMedium18,
          ),
          SizedBox(height: 6.v),
          SizedBox(
            height: 265.v,
            width: 343.h,
            child: TableCalendar(
              locale: 'en_US',
              firstDay: DateTime(DateTime.now().year - 5),
              lastDay: DateTime(DateTime.now().year + 5),
              calendarFormat: CalendarFormat.month,
              rangeSelectionMode: rangeSelectionMode,
              startingDayOfWeek: StartingDayOfWeek.monday,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              calendarStyle: CalendarStyle(
                outsideDaysVisible: false,
                isTodayHighlighted: true,
                todayTextStyle: TextStyle(
                  color: appTheme.blueGray800,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
                todayDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      appTheme.indigoA400.withOpacity(0.2),
                      appTheme.indigoA400.withOpacity(0),
                    ],
                  ),
                ),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  color: appTheme.blueGray800,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              headerVisible: false,
              rowHeight: 32.v,
              focusedDay: focusedDay,
              rangeStartDay: rangeStart,
              rangeEndDay: rangeEnd,
              onDaySelected: (selectedDay, focusedDay) {},
              onRangeSelected: (start, end, focusedDay) {},
              onPageChanged: (focusedDay) {},
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpcomingEventCard1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 146.v),
            child: _buildFrameEighteen(
              context,
              monthBlock: "lbl_dec".tr,
              date: "lbl_20".tr,
              day: "lbl_fri".tr,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.h),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildImageWrapper(
                    context,
                    eventImage: ImageConstant.imgEventImage,
                    eventTitleName: "lbl_8".tr,
                    eventTitleName1: "lbl_10".tr,
                  ),
                  Container(
                    width: 307.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomElevatedButton(
                          width: 84.h,
                          text: "lbl_john_smith".tr,
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 2.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUser,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                            ),
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "msg_international_band".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 3.v),
                        _buildDetailsRow(
                          context,
                          locationText: "msg_420_gala_st_san".tr,
                        ),
                        SizedBox(height: 1.v),
                        _buildDetailsRow1(
                          context,
                          timeText: "lbl_8_00_pm".tr,
                        ),
                        SizedBox(height: 3.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpcomingEventCard2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 198.v),
            child: _buildEventDateWrapper(
              context,
              monthText: "lbl_dec".tr,
              dateText: "lbl_22".tr,
              dayText: "lbl_sun".tr,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.h),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildImageWrapper(
                    context,
                    eventImage: ImageConstant.imgEventImage154x307,
                    eventTitleName: "lbl_8".tr,
                    eventTitleName1: "lbl_10".tr,
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration: IconButtonStyleHelper.fillPink,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgInfo,
                          ),
                        ),
                        CustomElevatedButton(
                          height: 24.v,
                          width: 84.h,
                          text: "lbl_john_smith".tr,
                          margin: EdgeInsets.only(left: 8.h),
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 2.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEmojiwinkfill,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_i_m_going_to_shake".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildDetailsRow(
                      context,
                      locationText: "msg_420_gala_st_san".tr,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildDetailsRow1(
                      context,
                      timeText: "lbl_8_00_pm".tr,
                    ),
                  ),
                  SizedBox(height: 11.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpcomingEventCard5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 208.v),
            child: _buildFrameEighteen(
              context,
              monthBlock: "lbl_dec".tr,
              date: "lbl_20".tr,
              day: "lbl_fri".tr,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.h),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildImageWrapper(
                    context,
                    eventImage: ImageConstant.imgEventImage3,
                    eventTitleName: "lbl_8".tr,
                    eventTitleName1: "lbl_10".tr,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.h),
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomOutlinedButton(
                          width: 96.h,
                          text: "lbl_jennifer_cill".tr,
                          margin: EdgeInsets.only(left: 8.h),
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 2.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgAvatarsWrapper,
                              height: 18.v,
                              width: 28.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "msg_a_madcap_house_party".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Container(
                          width: 283.h,
                          margin: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "msg_get_ready_to_turn".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallGray600.copyWith(
                              height: 1.33,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 16.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: appTheme.gray300,
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: _buildDetailsRow(
                            context,
                            locationText: "msg_420_gala_st_san".tr,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: _buildDetailsRow1(
                            context,
                            timeText: "lbl_8_00_pm".tr,
                          ),
                        ),
                        SizedBox(height: 3.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCategoryBlock(
    BuildContext context, {
    required String userImage,
    required String userSports,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 40.adaptSize,
          width: 40.adaptSize,
        ),
        SizedBox(height: 8.v),
        Text(
          userSports,
          style: CustomTextStyles.bodySmallGray900.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildEventDateWrapper(
    BuildContext context, {
    required String monthText,
    required String dateText,
    required String dayText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40.h,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL6,
            ),
            child: Text(
              monthText,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray500,
              ),
            ),
          ),
          Text(
            dateText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.gray900,
            ),
          ),
          Text(
            dayText,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildImageWrapper(
    BuildContext context, {
    required String eventImage,
    required String eventTitleName,
    required String eventTitleName1,
  }) {
    return SizedBox(
      height: 154.v,
      width: 307.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          CustomImageView(
            imagePath: eventImage,
            height: 154.v,
            width: 307.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHeartFill,
                    ),
                  ),
                  SizedBox(height: 82.v),
                  Container(
                    width: 58.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPeopleFill,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                        ),
                        Text(
                          eventTitleName,
                          style: CustomTextStyles.bodySmallGray900.copyWith(
                            color: appTheme.gray900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            eventTitleName1,
                            style: CustomTextStyles.bodySmallGray900.copyWith(
                              color: appTheme.gray900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDetailsRow(
    BuildContext context, {
    required String locationText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUserGray600,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(bottom: 1.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            locationText,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildDetailsRow1(
    BuildContext context, {
    required String timeText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgClock,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(top: 1.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            timeText,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameEighteen(
    BuildContext context, {
    required String monthBlock,
    required String date,
    required String day,
  }) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 2.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL6,
                ),
                child: Text(
                  monthBlock,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.gray500,
                  ),
                ),
              ),
              Text(
                date,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: appTheme.gray900,
                ),
              ),
              Text(
                day,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.gray500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.v),
        CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.fillDeepPurpleA,
          child: CustomImageView(
            imagePath: ImageConstant.imgLayer1Indigo100,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildUpcomingEventCard(
    BuildContext context, {
    required String monthBlock,
    required String textDate,
    required String fri,
    required String eventImage,
    required String eventTitleName,
    required String eventTitleName1,
    required String eventTitleName2,
    required String johnSmith,
    required String galaStSanJose,
    required String time,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 142.v),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 2.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 40.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL6,
                      ),
                      child: Text(
                        monthBlock,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: appTheme.gray500,
                        ),
                      ),
                    ),
                    Text(
                      textDate,
                      style: theme.textTheme.titleMedium!.copyWith(
                        color: appTheme.gray900,
                      ),
                    ),
                    Text(
                      fri,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: appTheme.gray500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillPinkTL20,
                child: CustomImageView(
                  imagePath: ImageConstant.imgInfo,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 8.h),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 154.v,
                  width: 307.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CustomImageView(
                        imagePath: eventImage,
                        height: 154.v,
                        width: 307.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomIconButton(
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                padding: EdgeInsets.all(6.h),
                                alignment: Alignment.centerRight,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgHeartFill,
                                ),
                              ),
                              SizedBox(height: 82.v),
                              Container(
                                width: 58.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 2.v,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPeopleFill,
                                      height: 14.adaptSize,
                                      width: 14.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 2.v),
                                    ),
                                    Text(
                                      eventTitleName,
                                      style: CustomTextStyles.bodySmallGray900
                                          .copyWith(
                                        color: appTheme.gray900,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text(
                                        eventTitleName1,
                                        style: CustomTextStyles.bodySmallGray900
                                            .copyWith(
                                          color: appTheme.gray900,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    eventTitleName2,
                    style: theme.textTheme.titleSmall!.copyWith(
                      color: appTheme.gray900,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEmojiWink,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          johnSmith,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.gray500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUserGray600,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          galaStSanJose,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.gray500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          time,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.gray500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11.v),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
