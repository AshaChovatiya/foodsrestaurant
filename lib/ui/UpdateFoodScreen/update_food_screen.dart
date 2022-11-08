import 'package:foodsrestaurant/ui/UpdateFoodScreen/update_food_controller.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';

import '../UpdateFoodDetail/update_food_detail_screen.dart';

class UpdateFoodScreen extends StatelessWidget {
  UpdateFoodScreen({Key? key}) : super(key: key);

  UpdateFoodController updateFoodController = Get.put(UpdateFoodController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UpdateFoodController>(
      builder: (controller) {
        updateFoodController = controller;
        return SafeArea(
            child: Scaffold(
          appBar: appBar(),
          body: Container(
            margin: screenMargin,
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20.h),
                  child: Image.asset(
                    "assets/images/addImage.png",
                    height: 130.sp,
                    width: 130.sp,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Food Name",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CommonTextfield(
                        controller: updateFoodController.foodNameController,
                        hintText: "Meringue"),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CommonTextfield(
                        controller: updateFoodController.foodDesController,
                        maxLine: 6,
                        hintText:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add Language",
                      style: regular14,
                    ),
                    const Icon(
                      Icons.add_circle_outline,
                      color: colorWhite,
                    )
                  ],
                ),
                SizedBox(height: 100.h),
                CenterButton(
                    ontap: () {
                      Get.to(UpdateFoodDetailScreen());
                    },
                    text: "Next Step"),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ));
      },
    );
  }

  AppBar appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: colorWhite,
        ),
      ),
      title: const Text("Update Food", style: TextStyle(color: colorWhite)),
    );
  }
}
