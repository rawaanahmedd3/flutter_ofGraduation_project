import 'package:untitled1/changeLanguage.dart';

class Language{
  String name;
  bool isChecked;
  Language(this.name, {this.isChecked = false});
}
final List<Language> languages = [Language('English'), Language('عربي')];