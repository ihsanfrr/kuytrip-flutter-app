import 'package:flutter/material.dart';
import 'package:kuytrip/screens/detail_screen.dart';
import 'package:kuytrip/shared/constant.dart';
import 'package:kuytrip/widgets/category_widget.dart';
import 'package:kuytrip/widgets/destination_widget.dart';
import 'package:kuytrip/widgets/tab_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/menu.png',
                          height: 24,
                          width: 24,
                        ),
                        Container(
                          width: 52,
                          height: 52,
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: black,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/ihsanfrr.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Hey Ihsan',
                      style: semiBold.copyWith(
                        color: greey,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Jelajahi dan Temukan\nTempat Favorit mu Di Dunia',
                      style: bold.copyWith(
                        color: black,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 48,
                            child: TextField(
                              cursorColor: black,
                              style: regular.copyWith(
                                color: black,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: grey,
                                ),
                                hintText: 'Search',
                                hintStyle: const TextStyle(
                                  color: grey,
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: grey,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 56,
                          height: 48,
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icons/filter.png',
                              width: 24,
                              height: 24,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                    child: TabWidget(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories',
                          style: semiBold.copyWith(color: black, fontSize: 16),
                        ),
                        Text(
                          'Lihat Semua',
                          style: regular.copyWith(color: grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CategoryWidget(),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Destinasi',
                          style: semiBold.copyWith(color: black, fontSize: 16),
                        ),
                        Text(
                          'Lihat Semua',
                          style: regular.copyWith(color: grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const DetailScreen(),
                            ),
                          ),
                      child: DestinationWidget()),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
