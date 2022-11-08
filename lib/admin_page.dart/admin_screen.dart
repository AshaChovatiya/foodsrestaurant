import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodsrestaurant/admin_page.dart/admin_controller.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';

class AdminScreen extends StatefulWidget {
  AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  AdminController adminController = Get.put(AdminController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminController>(
      builder: (controller) {
        adminController = controller;
        return SafeArea(
            child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 100.sp,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/webbar.png"),
                        fit: BoxFit.cover)),
                child: Row(
                  children: [
                    SizedBox(width: 10.w),
                    Image.asset(
                      "assets/icons/foodzone.png",
                      height: 60.h,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Foodzone",
                      style: regular18.copyWith(
                          fontSize: 26.sp, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(
                      "Home",
                      style: regular18.copyWith(fontSize: 26.sp),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "Broese Web",
                      style: regular18.copyWith(fontSize: 26.sp),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "About Us",
                      style: regular18.copyWith(fontSize: 26.sp),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "Contact Us",
                      style: regular18.copyWith(fontSize: 26.sp),
                    ),
                    SizedBox(width: 10.w),
                    SvgPicture.asset(
                      "assets/icons/menu.svg",
                      height: 30.sp,
                      width: 30.sp,
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ),
              Container(
                margin: screenMargin,
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    SizedBox(height: 50.h),
                    Text(
                      "Reastuarant Application",
                      style: regular18.copyWith(
                          fontSize: 40.sp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      "Owner Information",
                      style: regular18.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: appColor),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10.h),
                          child: CommonTextfield(
                            controller: adminController.fnameController,
                            hintText: "First Name",
                            prefixWidget: const Icon(
                              Icons.person,
                              color: colorWhite,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
      },
    );
  }
}
