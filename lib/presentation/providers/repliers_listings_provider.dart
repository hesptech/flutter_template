import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../api/client_api.dart';
import '../../models/models.dart'; 


final repliersListingsProvider = StateNotifierProvider< RepliersListingsNotifier, List<Listing>>((ref) {
  return RepliersListingsNotifier();
});


class RepliersListingsNotifier extends StateNotifier<List<Listing>> {

  RepliersListingsNotifier(): super([]);

  bool isLoadingHouse = false;
  int displayPageHouses = 0;
  List<Listing> onDisplayHouses = [];

  getDisplayHouses() async {

    if (isLoadingHouse) return;
    isLoadingHouse = true;
    final Map<String, dynamic> queryParameters = {
      'pageNum': '1',
      'resultsPerPage': '15',
      'maxPrice': '2000000',
      'minPrice': '1500000',
      'type': 'sale',
      'hasImages': 'true',        
      };

    displayPageHouses++;
    final jsonData = await ClientApi.httpGet('/listings', queryParameters); 

    final nowPlayingResponse = ResponseBody.fromMap(jsonData);

    onDisplayHouses = [ ...onDisplayHouses, ...nowPlayingResponse.listings];
    state = onDisplayHouses;
    //notifyListeners();
    isLoadingHouse = false;
    print(onDisplayHouses);
  }
}