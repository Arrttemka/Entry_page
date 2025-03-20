import '../repositories/navigation_repository.dart';

class NavigateToAuthUseCase {
  final NavigationRepository repository;

  NavigateToAuthUseCase(this.repository);

  Future<void> execute() async {
    await repository.navigateToAuth();
  }
}

class CheckFirstLaunchUseCase {
  final NavigationRepository repository;

  CheckFirstLaunchUseCase(this.repository);

  Future<bool> execute() async {
    return await repository.isFirstLaunch();
  }
}