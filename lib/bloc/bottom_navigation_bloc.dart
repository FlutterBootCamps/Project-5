import 'bottom_navigation_event.dart';
import 'bottom_navigation_state.dart';

class BottomNavigationBloc {
  BottomNavigationState currentState = BottomNavigationState(0);

  void mapEventToState(BottomNavigationEvent event) {
    switch (event) {
      case BottomNavigationEvent.home:
        currentState = BottomNavigationState(0);
        break;
      case BottomNavigationEvent.catalogue:
        currentState = BottomNavigationState(1);
        break;
      case BottomNavigationEvent.cart:
        currentState = BottomNavigationState(2);
        break;
      case BottomNavigationEvent.account:
        currentState = BottomNavigationState(3);
        break;
      default:
        currentState = BottomNavigationState(0);
    }
  }
}
