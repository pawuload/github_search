import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue.freezed.dart';

part 'issue.g.dart';

@freezed
class Issue with _$Issue {
  Issue._();

  factory Issue({
    required String title,
    required int number,
  }) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
