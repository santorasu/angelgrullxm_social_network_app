import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/side_bar/riverpod/side_bar_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sideBarProvider = StateNotifierProvider<SideBarProvider, SideBarState>((ref) {
  return SideBarProvider();
});

class SideBarProvider extends StateNotifier<SideBarState> {
  SideBarProvider() : super(SideBarState());

  void onSelectLanguage({required String selectedLanguage}) {
    state = state.copyWith(selectedLanguages: selectedLanguage);
  }

  void onVisibleLine() {
    bool visible = !state.isVisible;
    state = state.copyWith(isVisible: visible
    );
  }

  void onVisibleVolume() {
    bool visible = !state.isVisibleVolume;
    state = state.copyWith(isVisibleVolume: visible
    );
  }
}



