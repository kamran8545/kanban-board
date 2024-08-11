import 'package:mockito/annotations.dart';
import 'package:time_tracking_app/core/network_info.dart';
import 'package:time_tracking_app/data/remote_data_source/remote_data_source.dart';
import 'package:time_tracking_app/domain/repository/repository.dart';

@GenerateMocks(
  [NetworkInfo, Repository, RemoteDataSource],
)
void main() {}
