import 'package:dio/dio.dart';

Future getBanners() async {
  try {
    Response response = await Dio().get(
        "https://easy-mock.com/mock/5d63843e268ca1676b34bda8/flutter/newsfeed/banners");
    return response.data;
  } catch (e) {
    throw new Exception('Error');
  }
}

Future getCategory() async {
  try {
    Response response = await Dio().get('https://easy-mock.com/mock/5d63843e268ca1676b34bda8/flutter/newsfeed/category');
    return response.data;
  } catch (e) {
    throw new Exception('Error');
  }
}
Future getGoods() async {
  try {
    Response response = await Dio().get('https://easy-mock.com/mock/5d63843e268ca1676b34bda8/flutter/newsfeed/goods');
    return response.data;
  } catch (e) {
    throw new Exception('Error');
  }
}