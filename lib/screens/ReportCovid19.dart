import 'dart:convert';

List<ReportCovid19> reportCovid19FromJson(String str) => List<ReportCovid19>.from(json.decode(str).map((x) => ReportCovid19.fromJson(x)));

String reportCovid19ToJson(List<ReportCovid19> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ReportCovid19 {
  ReportCovid19({
    required this.txnDate,
    required this.newCase,
    required this.totalCase,
    required this.newCaseExcludeabroad,
    required this.totalCaseExcludeabroad,
    required this.newDeath,
    required this.totalDeath,
    required this.newRecovered,
    required this.totalRecovered,
    required this.updateDate,
  });

  DateTime txnDate;
  int newCase;
  int totalCase;
  int newCaseExcludeabroad;
  int totalCaseExcludeabroad;
  int newDeath;
  int totalDeath;
  int newRecovered;
  int totalRecovered;
  DateTime updateDate;

  factory ReportCovid19.fromJson(Map<String, dynamic> json) => ReportCovid19(
    txnDate: DateTime.parse(json["txn_date"]),
    newCase: json["new_case"] == null ? null : json["new_case"],
    totalCase: json["total_case"] == null ? null : json["total_case"],
    newCaseExcludeabroad: json["new_case_excludeabroad"] == null ? null : json["new_case_excludeabroad"],
    totalCaseExcludeabroad: json["total_case_excludeabroad"] == null ? null : json["total_case_excludeabroad"],
    newDeath: json["new_death"] == null ? null : json["new_death"],
    totalDeath: json["total_death"] == null ? null : json["total_death"],
    newRecovered: json["new_recovered"] == null ? null : json["new_recovered"],
    totalRecovered: json["total_recovered"] == null ? null : json["total_recovered"],
    updateDate: DateTime.parse(json["update_date"]),
  );

  Map<String, dynamic> toJson() => {
    "txn_date": txnDate == null ? null : "${txnDate.year.toString().padLeft(4, '0')}-${txnDate.month.toString().padLeft(2, '0')}-${txnDate.day.toString().padLeft(2, '0')}",
    "new_case": newCase == null ? null : newCase,
    "total_case": totalCase == null ? null : totalCase,
    "new_case_excludeabroad": newCaseExcludeabroad == null ? null : newCaseExcludeabroad,
    "total_case_excludeabroad": totalCaseExcludeabroad == null ? null : totalCaseExcludeabroad,
    "new_death": newDeath == null ? null : newDeath,
    "total_death": totalDeath == null ? null : totalDeath,
    "new_recovered": newRecovered == null ? null : newRecovered,
    "total_recovered": totalRecovered == null ? null : totalRecovered,
    "update_date": updateDate == null ? null : updateDate.toIso8601String(),
  };
}