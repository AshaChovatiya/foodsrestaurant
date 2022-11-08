import 'package:foodsrestaurant/utils/common_imports.dart';

import 'AddAddonsScreen/add_addon_screen.dart';
import 'addons_controller.dart';

class AddonsScreen extends StatelessWidget {
  AddonsScreen({Key? key}) : super(key: key);

  AddonsController addonsController = Get.put(AddonsController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddonsController>(
      builder: (controller) {
        addonsController = controller;
        return SafeArea(
            child: Scaffold(
          appBar: appBar(),
          body: Container(
              margin: screenMargin,
              child: Center(
                child: Text(
                  "No addons found ",
                  style: regular14.copyWith(color: colorGrey),
                ),
              )),
          floatingActionButton: FloatingActionButton(
              focusColor: appColor,
              elevation: 10,
              onPressed: () {
                Get.to(() => AddAddonsScreen());
              },
              backgroundColor: colorWhite,
              child: const Icon(
                Icons.add_circle_outline_outlined,
                color: appColor,
              )),
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
      title: const Text("Addons", style: TextStyle(color: colorWhite)),
    );
  }
}
