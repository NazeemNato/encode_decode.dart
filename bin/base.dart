import 'dart:io';
import 'dart:convert';

void main() {
  //Encode image
  final bytes = File('home.jpg').readAsBytesSync();
  var img64 = base64.encode(bytes);
  //Decode image
  final decode = base64.decode(img64);
  final file = File('home_decoded.jpg');
  file.writeAsBytesSync(decode);
  print('done');
}
