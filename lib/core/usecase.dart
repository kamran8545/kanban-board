import '../domain/entities/custom_failures.dart';
import '../domain/entities/result.dart';

abstract class UseCase<Type, Params> {
  Future<Result<CustomFailure, Type>> call(Params params);
}
