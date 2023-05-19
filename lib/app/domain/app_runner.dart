
import 'package:dcs_43_frontend/app/domain/app_builder.dart';

abstract class AppRunner {
  Future<void> preloadData();
  Future<void> run(AppBuilder appBuilder);
}