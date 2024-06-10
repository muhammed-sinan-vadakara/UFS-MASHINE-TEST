import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_page_constants.g.dart';

class HomePageConstants {
  final String txtHeading = "Hi , Ajay";
  final String txtSubHeading = "Recently played";
  final String txtbutton = "Explore Course";
  final String txtmockTest = "Mock Tests";
  final String txtreading = "Reading";
  final String txtwriting = "Writing";
  final String txtlistening = "Listening";
  final String txtspeaking = "Speaking";
}

@riverpod
HomePageConstants homePageConstants(HomePageConstantsRef ref) {
  return HomePageConstants();
}
