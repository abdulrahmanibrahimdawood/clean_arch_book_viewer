import 'package:clean_arc_bookly_app/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:clean_arc_bookly_app/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:clean_arc_bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:clean_arc_bookly_app/core/utils/api_service.dart';
import 'package:clean_arc_bookly_app/main.dart';

void setUpServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        ApiService(),
      ),
    ),
  );
}
