import 'package:traveling/core/data/repository/post_repository.dart';
import 'package:traveling/core/data/repository/prodcut_repository.dart';
import 'package:traveling/core/data/repository/shared_prefrence_repository.dart';
import 'package:traveling/core/services/connectivity_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:traveling/ui/views/hotel_views/booking_summary_view/bookingSummaryScreen.dart';
import 'package:traveling/ui/views/hotel_views/hotel_details_view/hotelDetailsScreen.dart';
import 'package:traveling/ui/views/hotel_views/hotel_Info_view/hotelInfoScreen.dart';

import 'app/my_app.dart';

late SharedPreferences prefs;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.lazyPut(() => SharedPrefrenceRepository());
  Get.lazyPut(() => PostRepository());
  Get.lazyPut(() => ProductRepository());

  await Get.putAsync(() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  });

  // Get.put(ConnectivityService());
  // Get.put(Connectivity());

  runApp(MyApp());
}
