import 'package:news/service.dart';
import 'package:http/http.dart' as http;

import 'util.dart';

class URLCollection {
  NetworkUtil _netUtil = new NetworkUtil();
  Future<MappedNetworkServiceResponse> dingCountry() async {
    var request = http.Request(
      'GET',
      Uri.parse(
          'https://newsapi.org/v2/everything?q=tesla&from=2022-09-19&sortBy=publishedAt&apiKey=d8ed0710ca6f4ea1bf309143a261cd37'),
    );

    // print(request);
    var headers = {
      'apiKey': '',
    };

    request.headers.addAll(headers);
    return _netUtil.get(request).then((MappedNetworkServiceResponse res) {
      return res;
    });
  }
}
