class AppConstant {
  static final AppConstant _singleton = new AppConstant._internal();

  factory AppConstant() {
    return _singleton;
  }

  AppConstant._internal();

  final serverUrl = "";
  // final apiUrl = "http://atlantis.bsa.qa/api";
  final apiUrl = "https://amazon-products1.p.rapidapi.com";
  final url = "https://amazon-products1.p.rapidapi.com";

  final companyUrl = "";

  final appTitle = 'amazon';
}
