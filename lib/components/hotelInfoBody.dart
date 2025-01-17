import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveling/ui/shared/colors.dart';
import '../components/amenitiesCard.dart';
import '../components/reviewsCard.dart';
import '../ui/views/hotel_views/models/amenitiesModel.dart';
import '../ui/views/hotel_views/models/reviewsModel.dart';
// import 'package:readmore/readmore.dart';

class HotelInfoBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/png/hotel.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 270,
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/png/background1.png'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    ImageIcon(
                      AssetImage('assets/image/png/favorite.png'),
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 165,
                ),
                Center(
                  child: Container(
                    width: size.width - 140,
                    height: 55,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(7),
                                    topLeft: Radius.circular(7)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/image/png/room1.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/image/png/room2.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/image/png/room3.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/image/png/room4.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(7),
                                    topRight: Radius.circular(7)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/image/png/room1.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                const Text(
                  'Shangri-La Bosphorus, Istanbul',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage('assets/image/png/location_icon.png'),
                          color: AppColors.mainColorBlue,
                        ),
                        Text(
                          '4 Star hotel - King fahd Rd',
                          style: TextStyle(
                            color: AppColors.TextgrayColor,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          '7.1',
                          style: TextStyle(
                            color: AppColors.TextgrayColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // const Text(
                //   "Shangri-La Bosporus, Istanbil is set in the hear of Istanbul near to Taksim Square and Maiden's Tower and all this icon sites of the city. A stay at this property is worthy of remebering...",
                //   style: TextStyle(color: TextgrayColor),
                // ),
                // const ReadMoreText(
                //   "Shangri-La Bosporus, Istanbil is set in the hear of Istanbul near to Taksim Square and Maiden's Tower and all this icon sites of the city. A stay at this property is worthy of remebering",
                //   trimLines: 2,
                //   colorClickableText: Colors.pink,
                //   trimMode: TrimMode.Line,
                //   trimCollapsedText: 'Show more',
                //   trimExpandedText: '..Show less',
                //   style: TextStyle(color: TextgrayColor),
                //   moreStyle:
                //       TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: StatusBarColor),
                //       lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: StatusBarColor),
                // ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Amenities",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 85,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: Amenities.length,
                    itemBuilder: (context, index) => AmenitiesCard(
                      itemIndex: index,
                      amenitiesModel: Amenities[index],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Reviews",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: reviewsList.length,
                    itemBuilder: (context, index) => ReviewCard(
                      itemIndex: index,
                      reviewList: reviewsList[index],
                    ),
                  ),
                ),

                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.maxFinite, 50),
                        backgroundColor: AppColors.mainColorBlue,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text('Select Room'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
