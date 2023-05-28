import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constans {
  static String apiKey = dotenv.get("API_KEY");
  static String appleUrl =
      "https://newsapi.org/v2/everything?q=apple&from=2023-04-23&to=2023-04-23&sortBy=popularity&apiKey=$apiKey";

 static String teslaUrrl =
      "https://newsapi.org/v2/everything?q=tesla&from=2023-03-24&sortBy=publishedAt&apiKey=$apiKey";
      
 static String businessUrrl =
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=$apiKey"; 

 static String technologyUrl =
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$apiKey";

  static String articleUrl =
      "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=$apiKey";      
}
