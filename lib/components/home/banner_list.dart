import 'package:flutter/material.dart';
import 'package:app_shop/service/api_home.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getBanners(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List _banners = snapshot.data['data'];
            return Container(
              height: 200.0,
              width: double.infinity,
              margin: EdgeInsets.all(8.0),
              child: Swiper(
                autoplay: true,
                containerHeight: 200.0,
                pagination: new SwiperPagination(),
                itemCount: _banners.length,
                viewportFraction: 0.85,
                scale: 0.9,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: new BorderRadius.circular(8.0),
                    child: Image.network(_banners[index]['url'], fit: BoxFit.fill,),
                  );
                },
              ),
            );
          }
          return Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey[200]),
          );
        },
      ),
    );
  }
}
