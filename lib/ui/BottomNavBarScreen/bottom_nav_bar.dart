import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';
import 'bottom_nav_bar_controller.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  final PageStorageBucket bucket = PageStorageBucket();

  BottomNavBarController bottomNavBarController =
      Get.put(BottomNavBarController());

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(
      reverse: true,
    );

  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.slowMiddle,
      reverseCurve: Curves.easeInCirc);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(builder: (controller) {
      bottomNavBarController = controller;
      return Scaffold(
        backgroundColor: bgColor,
        body: PageStorage(
          bucket: bucket,
          child:
              bottomNavBarController.screens[bottomNavBarController.currentTab],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: colorWhite,
          child: RotationTransition(
            turns: _animation,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                bottomNavBarController.currentTab == 2
                    ? "assets/icons/pinfood_color.svg"
                    : "assets/icons/pinfood.svg",
                height: 30,
              ),
            ),
          ),
          onPressed: () {
            bottomNavBarController.onPressIndex(index: 2);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: appColor,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 1 Tabbar
                Expanded(
                  child: bottomBarItem(icon: "assets/icons/home.svg", index: 0),
                ),

                // 2 Tabbar
                Expanded(
                  child:
                      bottomBarItem(icon: "assets/icons/order.svg", index: 1),
                ),

                const Spacer(),

                // 3 Tabbar
                Expanded(
                  child:
                      bottomBarItem(icon: "assets/icons/wallet.svg", index: 3),
                ),

                // 4 Tabbar
                Expanded(
                  child:
                      bottomBarItem(icon: "assets/icons/profile.svg", index: 4),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget bottomBarItem({required int index, required String icon}) {
    return MaterialButton(
        minWidth: 20,
        onPressed: () {
          bottomNavBarController.onPressIndex(index: index);
        },
        child: SvgPicture.asset(
          icon,
          height: 25.sp,
          color: bottomNavBarController.currentTab == index
              ? colorWhite
              : Colors.white38,
        ));
  }
}
