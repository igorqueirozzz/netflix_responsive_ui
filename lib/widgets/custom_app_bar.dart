import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import '../assets.dart';
import 'widgets.dart';
import 'package:netflix_responsive_ui/store/app_bar_store.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    super.key,
    this.scrollOffset = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 24,
        ),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(
          (GetIt.I.get<AppBarStore>().scrollOffset / 350)
              .clamp(0, 1)
              .toDouble(),
        )),
        child: Responsive(
          mobile: _CustomAppBarMobile(),
          desktop: _CustomAppBarDesktop(),
        ),
      );
    });
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  const _CustomAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(title: 'TV Shows', onTap: () {}),
                _AppBarButton(title: 'Movies', onTap: () {}),
                _AppBarButton(title: 'My List', onTap: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  const _CustomAppBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(title: 'Home', onTap: () {}),
                _AppBarButton(title: 'TV Shows', onTap: () {}),
                _AppBarButton(title: 'Movies', onTap: () {}),
                _AppBarButton(title: 'Latest', onTap: () {}),
                _AppBarButton(title: 'My List', onTap: () {}),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(icon: const Icon(Icons.search, color: Colors.white,), onPressed: () {}),
                _AppBarButton(title: 'KIDS', onTap: () {}),
                _AppBarButton(title: 'DVD', onTap: () {}),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.card_giftcard, color: Colors.white,)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notifications, color: Colors.white,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const _AppBarButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
