// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

import '../../../models/tokens/token.dart';
import '../../../models/transactions/transfer.dart';
import '../../backup/done_backup.dart';
import '../../backup/show_mnemonic.dart';
import '../../backup/verify_mnemonic.dart';
import '../../misc/about.dart';
import '../../misc/protect_your_wallet.dart';
import '../../misc/settings.dart';
import '../../misc/switch_commmunity.dart';
import '../../trade/review_trade.dart';
import '../../trade/trade.dart';
import '../screens/home.dart';
import '../screens/token_screen.dart';
import '../screens/transaction_details.dart';

class HomeRoutes {
  static const String mainHomeScreen = '/';
  static const String transactionDetailsScreen = '/transaction-details-screen';
  static const String tokenScreen = '/token-screen';
  static const String tradeScreen = '/trade-screen';
  static const String reviewTradeScreen = '/review-trade-screen';
  static const String aboutScreen = '/about-screen';
  static const String showMnemonic = '/show-mnemonic';
  static const String verifyMnemonic = '/verify-mnemonic';
  static const String doneBackup = '/done-backup';
  static const String settingsScreen = '/settings-screen';
  static const String switchCommunityScreen = '/switch-community-screen';
  static const String protectYourWallet = '/protect-your-wallet';
  static const all = <String>{
    mainHomeScreen,
    transactionDetailsScreen,
    tokenScreen,
    tradeScreen,
    reviewTradeScreen,
    aboutScreen,
    showMnemonic,
    verifyMnemonic,
    doneBackup,
    settingsScreen,
    switchCommunityScreen,
    protectYourWallet,
  };
}

class HomeRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(HomeRoutes.mainHomeScreen, page: MainHomeScreen),
    RouteDef(HomeRoutes.transactionDetailsScreen,
        page: TransactionDetailsScreen),
    RouteDef(HomeRoutes.tokenScreen, page: TokenScreen),
    RouteDef(HomeRoutes.tradeScreen, page: TradeScreen),
    RouteDef(HomeRoutes.reviewTradeScreen, page: ReviewTradeScreen),
    RouteDef(HomeRoutes.aboutScreen, page: AboutScreen),
    RouteDef(HomeRoutes.showMnemonic, page: ShowMnemonic),
    RouteDef(HomeRoutes.verifyMnemonic, page: VerifyMnemonic),
    RouteDef(HomeRoutes.doneBackup, page: DoneBackup),
    RouteDef(HomeRoutes.settingsScreen, page: SettingsScreen),
    RouteDef(HomeRoutes.switchCommunityScreen, page: SwitchCommunityScreen),
    RouteDef(HomeRoutes.protectYourWallet, page: ProtectYourWallet),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    MainHomeScreen: (data) {
      final args = data.getArgs<MainHomeScreenArguments>(
        orElse: () => MainHomeScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => MainHomeScreen(key: args.key),
        settings: data,
      );
    },
    TransactionDetailsScreen: (data) {
      final args = data.getArgs<TransactionDetailsScreenArguments>(
        orElse: () => TransactionDetailsScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TransactionDetailsScreen(
          image: args.image,
          from: args.from,
          status: args.status,
          token: args.token,
          contact: args.contact,
          amount: args.amount,
          transfer: args.transfer,
        ),
        settings: data,
      );
    },
    TokenScreen: (data) {
      final args = data.getArgs<TokenScreenArguments>(
        orElse: () => TokenScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TokenScreen(
          key: args.key,
          token: args.token,
          tokenPrice: args.tokenPrice,
        ),
        settings: data,
      );
    },
    TradeScreen: (data) {
      final args = data.getArgs<TradeScreenArguments>(
        orElse: () => TradeScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TradeScreen(
          key: args.key,
          primaryToken: args.primaryToken,
        ),
        settings: data,
      );
    },
    ReviewTradeScreen: (data) {
      final args = data.getArgs<ReviewTradeScreenArguments>(
        orElse: () => ReviewTradeScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReviewTradeScreen(
          key: args.key,
          exchangeSummry: args.exchangeSummry,
          fromToken: args.fromToken,
          toToken: args.toToken,
        ),
        settings: data,
      );
    },
    AboutScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AboutScreen(),
        settings: data,
      );
    },
    ShowMnemonic: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShowMnemonic(),
        settings: data,
      );
    },
    VerifyMnemonic: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VerifyMnemonic(),
        settings: data,
      );
    },
    DoneBackup: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DoneBackup(),
        settings: data,
      );
    },
    SettingsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingsScreen(),
        settings: data,
      );
    },
    SwitchCommunityScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SwitchCommunityScreen(),
        settings: data,
      );
    },
    ProtectYourWallet: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProtectYourWallet(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// MainHomeScreen arguments holder class
class MainHomeScreenArguments {
  final Key key;
  MainHomeScreenArguments({this.key});
}

/// TransactionDetailsScreen arguments holder class
class TransactionDetailsScreenArguments {
  final ImageProvider<dynamic> image;
  final String from;
  final String status;
  final Token token;
  final Contact contact;
  final List<Widget> amount;
  final Transfer transfer;
  TransactionDetailsScreenArguments(
      {this.image,
      this.from,
      this.status,
      this.token,
      this.contact,
      this.amount,
      this.transfer});
}

/// TokenScreen arguments holder class
class TokenScreenArguments {
  final Key key;
  final Token token;
  final String tokenPrice;
  TokenScreenArguments({this.key, this.token, this.tokenPrice});
}

/// TradeScreen arguments holder class
class TradeScreenArguments {
  final Key key;
  final Token primaryToken;
  TradeScreenArguments({this.key, this.primaryToken});
}

/// ReviewTradeScreen arguments holder class
class ReviewTradeScreenArguments {
  final Key key;
  final Map<dynamic, dynamic> exchangeSummry;
  final Token fromToken;
  final Token toToken;
  ReviewTradeScreenArguments(
      {this.key, this.exchangeSummry, this.fromToken, this.toToken});
}
