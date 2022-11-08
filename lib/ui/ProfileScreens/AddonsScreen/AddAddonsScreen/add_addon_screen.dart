import 'package:foodsrestaurant/utils/common_imports.dart';

import 'add_addon_controller.dart';

class AddAddonsScreen extends StatelessWidget {
  AddAddonsScreen({Key? key}) : super(key: key);

  AddAddonsController addAddonsController = Get.put(AddAddonsController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddAddonsController>(
      builder: (controller) {
        addAddonsController = controller;
        return SafeArea(
            child: Scaffold(
          appBar: appBar(),
          body: Container(
            margin: screenMargin,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Addon Name",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CommonTextfield(
                        controller: addAddonsController.nameController,
                        hintText: "Addone Name"),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Add Price",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CommonTextfield(
                        controller: addAddonsController.priceController,
                        hintText: "Rs. 00.00"),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                const Spacer(),
                CenterButton(
                    ontap: () {
                      //  Get.to(ProfileScreen());
                    },
                    text: "Submit"),
                SizedBox(
                  height: 30.h,
                ),
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
      title: const Text("Add Addons", style: TextStyle(color: colorWhite)),
    );
  }
}
