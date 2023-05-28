import 'package:dio/dio.dart';
import 'package:newsapikey/model/news_model.dart';

class NewsService {
  static Future<dynamic> getNews(String url) async {
    try {
      Response response = await Dio().get(url);
      if (response.statusCode == 200) {
        print(response.data);
        return NewsModel.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.error.toString();
    }
  }
}
