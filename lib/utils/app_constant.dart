class AppConstant {
  static final AppConstant _singleton = new AppConstant._internal();

  factory AppConstant() {
    return _singleton;
  }

  AppConstant._internal();

  final serverUrl = "";
  // final apiUrl = "http://atlantis.bsa.qa/api";
  final apiUrl = "https://www.amazon.com/api";
  final url = "https://www.amazon.com/";

  final companyUrl = "";

  final appTitle = 'amazon';
}
