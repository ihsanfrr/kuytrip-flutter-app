import 'package:flutter/material.dart';
import 'package:kuytrip/shared/constant.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 10,
                          ),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Details',
                        style: semiBold.copyWith(
                          color: white,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                        width: 40,
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 16,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: white.withOpacity(0.1),
                        offset: const Offset(0, 0),
                        blurRadius: 16,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Pantai Ubud',
                            style: bold.copyWith(
                              color: white,
                              fontSize: 20,
                            ),
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 24,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Pariwisata Ubud juga di dukung dengan lengkapnya sarana akomodasi, tersedia dari hotel murah sampai resort mewah. Mencari tempat makan juga sangat mudah di Ubud, dan saat ini area pariwisata Ubud sangat terkenal menjadi destinasi wisata Kuliner di Bali.',
                        style: regular.copyWith(
                          color: white,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Distance',
                                style: semiBold.copyWith(
                                  color: white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                '105 ml',
                                style: regular.copyWith(
                                  color: const Color(0xFFC8C8C8),
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Elevation',
                                style: semiBold.copyWith(
                                  color: white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                '3.872',
                                style: regular.copyWith(
                                  color: const Color(0xFFC8C8C8),
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Difficulty',
                                style: semiBold.copyWith(
                                  color: white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Easy',
                                style: regular.copyWith(
                                  color: const Color(0xFFC8C8C8),
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Join',
                            style: semiBold.copyWith(
                              color: black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
