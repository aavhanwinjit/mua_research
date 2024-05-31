import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_page_number_notifier.g.dart';

@Riverpod(keepAlive: true)
class DashboardPageNumberNotifier extends _$DashboardPageNumberNotifier {
  @override
  int build() {
    return 1;
  }

  void resetPageNumber() {
    state = 1;
  }

  void incrementPageNumber() {
    state = state + 1;
  }

  bool get isFirstPage => state == 1;
}
