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

  static const Map<String, String> experienceLevels = {
    "entry": "Entry Level",
    "mid": "Mid Level",
    "senior": "Senior Level",
    "expert": "Expert",
  };

  static const Map<String, String> languages = {
    "en": "English",
    "bn": "Bengali",
    "hi": "Hindi",
    "ar": "Arabic",
    "es": "Spanish",
  };

  static const Map<String, String> availabilityOptions = {
    "full_time": "Full Time",
    "part_time": "Part Time",
    "weekends": "Weekends Only",
    "flexible": "Flexible",
  };

  static const Map<String, String> countries = {
    "us": "United States",
    "uk": "United Kingdom",
    "bd": "Bangladesh",
    "in": "India",
    "ca": "Canada",
  };
}
