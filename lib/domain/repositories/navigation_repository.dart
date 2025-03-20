abstract class NavigationRepository {
  Future<void> navigateToAuth();
  Future<bool> isFirstLaunch();
}