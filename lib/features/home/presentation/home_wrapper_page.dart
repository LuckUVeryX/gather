import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/utils.dart';
import '../../../router/router.dart';
import 'widgets/widgets.dart';

class HomeWrapperPage extends StatelessWidget {
  const HomeWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [HomeRouter(), NearbyRouter(), CreateRouter(), FeedRouter(), ProfileRouter()],
      appBarBuilder: (context, tabsRouter) {
        return const HomeAppBar();
      },
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.place_outlined),
              activeIcon: Icon(Icons.place),
              label: 'Nearby',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              activeIcon: Icon(Icons.add_box),
              label: 'Create',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_drive_file_outlined),
              activeIcon: Icon(Icons.insert_drive_file),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(radius: 12.0, backgroundImage: AssetImage(ImagePath.tempProfile)),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
