import 'package:flutter/material.dart';
import 'package:kuytrip/shared/constant.dart';

class DestinationWidget extends StatelessWidget {
  DestinationWidget({
    Key? key,
  }) : super(key: key);

  final List<DestinationModel> destinations = [
    DestinationModel(
      name: 'Pantai Ubud',
      image: 'pantai_ubud.png',
      address: 'Bali, Indonesia',
    ),
    DestinationModel(
      name: 'Gunung Fuji',
      image: 'gunung_fuji.png',
      address: 'Honsu, Jepang',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          destinations.length,
          (index) => Container(
            width: 195,
            height: 193,
            margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/images/${destinations[index].image}'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 14,
                ),
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destinations[index].name,
                          style: semiBold.copyWith(color: white, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/location.png',
                              width: 10,
                              height: 10,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              destinations[index].address,
                              style: medium.copyWith(
                                color: white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DestinationModel {
  final String name;
  final String image;
  final String address;

  DestinationModel({
    required this.name,
    required this.image,
    required this.address,
  });
}
