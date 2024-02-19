import 'package:freezed_annotation/freezed_annotation.dart';

part 'pull_request.freezed.dart';

part 'pull_request.g.dart';

@freezed
class PullRequest with _$PullRequest {
  PullRequest._();

  factory PullRequest({
    required String title,
    required int number,
  }) = _PullRequest;

  factory PullRequest.fromJson(Map<String, dynamic> json) => _$PullRequestFromJson(json);
}
