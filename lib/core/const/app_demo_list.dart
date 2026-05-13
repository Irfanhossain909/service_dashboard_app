class AppDemoList {
  AppDemoList._();
  static final AppDemoList _instance = AppDemoList._();
  static AppDemoList get instance => _instance;

  static const Map<String, String> categories = {
    "legal_and_corporate": "Legal & Corporate",
    "finance_and_investment": "Finance & Investment",
    "hr_and_operations": "HR & Operations",
    "technology_and_digital": "Technology & Digital",
    "growth_and_strategy": "Growth & Strategy",
  };
}
