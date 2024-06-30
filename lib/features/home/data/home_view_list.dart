import 'package:quiz_app/core/resources/assets_manager.dart';
import 'package:quiz_app/features/home/models/home_model.dart';

class HomeScreenViewList {
  static List<HomeModel> homeScreenViewList = [
    HomeModel(
      image: AssetsManager.kHomeImage_1,
      title: 'Synonyms for QUIZ',
      desc: 'Synonyms for QUIZ',
    ),
    HomeModel(
      image: AssetsManager.kHomeImage_2,
      title: 'Synonyms for QUIZ',
      desc: 'Sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    HomeModel(
      image: AssetsManager.kHomeImage_3,
      title: 'Cool Quiz',
      desc: 'Culpa qui officia deserunt mollit anim id est laborum.',
    ),
  ];
}
