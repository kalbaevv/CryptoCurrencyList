import 'package:crypto_coins_list/features/crypto_coin/crypto_coin.dart';

import '../features/crypto_list/crypto_list.dart';

final routes = {
  "/": (context) => const CryptoListScreen(
        title: "some title",
      ),
  '/coin': (context) => const CryptoCoinScreen()
};
