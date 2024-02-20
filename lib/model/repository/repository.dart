import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';

part 'repository.g.dart';

@freezed
class Repository with _$Repository {

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Repository({
    required String fullName,
    required String? description,
    required String? language,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);
}
