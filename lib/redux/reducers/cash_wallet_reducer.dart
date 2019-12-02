import 'package:fusecash/redux/actions/cash_wallet_actions.dart';
import 'package:fusecash/models/cash_wallet_state.dart';
import 'package:redux/redux.dart';

final cashWalletReducers = combineReducers<CashWalletState>([
  TypedReducer<CashWalletState, InitWeb3Success>(_initWeb3Success),
  TypedReducer<CashWalletState, GetPublicKeySuccess>(_getPublicKeySuccess),
  TypedReducer<CashWalletState, GetWalletAddressSuccess>(
      _getWalletAddressSuccess),
  TypedReducer<CashWalletState, CreateAccountWalletRequest>(
      _createAccountWalletRequest),
  TypedReducer<CashWalletState, CreateAccountWalletSuccess>(
      _createAccountWalletSuccess),
  TypedReducer<CashWalletState, GetTokenBalanceSuccess>(
      _getTokenBalanceSuccess),
  TypedReducer<CashWalletState, SendTokenSuccess>(_sendTokenSuccess),
  TypedReducer<CashWalletState, JoinCommunitySuccess>(_joinCommunitySuccess),
  TypedReducer<CashWalletState, AlreadyJoinedCommunity>(
      _alreadyJoinedCommunity),
  TypedReducer<CashWalletState, SwitchCommunitySuccess>(
      _switchCommunitySuccess),
  TypedReducer<CashWalletState, GetJoinBonusSuccess>(_getJoinBonusSuccess),
  TypedReducer<CashWalletState, GetBusinessListSuccess>(
      _getBusinessListSuccess),
  TypedReducer<CashWalletState, GetTokenTransfersListSuccess>(_getTokenTransfersListSuccess)
]);

CashWalletState _initWeb3Success(
    CashWalletState state, InitWeb3Success action) {
  return state.copyWith(web3: action.web3);
}

CashWalletState _getPublicKeySuccess(
    CashWalletState state, GetPublicKeySuccess action) {
  return state.copyWith(publicKey: action.publicKey);
}

CashWalletState _getWalletAddressSuccess(
    CashWalletState state, GetWalletAddressSuccess action) {
  return state.copyWith(walletAddress: action.walletAddress, walletStatus: 'created');
}

CashWalletState _createAccountWalletRequest(
    CashWalletState state, CreateAccountWalletRequest action) {
      return state.copyWith(walletStatus: 'requested');
  }

CashWalletState _createAccountWalletSuccess(
    CashWalletState state, CreateAccountWalletSuccess action) {
          return state.copyWith(walletStatus: 'deploying');
  }


CashWalletState _getTokenBalanceSuccess(
    CashWalletState state, GetTokenBalanceSuccess action) {
          return state.copyWith(tokenBalance: action.tokenBalance);
}

CashWalletState _sendTokenSuccess(
    CashWalletState state, SendTokenSuccess action) {
  print('send token - ${action.txHash} sent');
  return state;
}

CashWalletState _joinCommunitySuccess(
    CashWalletState state, JoinCommunitySuccess action) {
  print('join community ${action.communityAddress} - ${action.txHash} sent');
  return state.copyWith(
      communityAddress: action.communityAddress,
      communityName: action.communityName,
      tokenAddress: action.tokenAddress,
      tokenName: action.tokenName,
      tokenSymbol: action.tokenSymbol,
      tokenDecimals: action.tokenDecimals);
}

CashWalletState _alreadyJoinedCommunity(
    CashWalletState state, AlreadyJoinedCommunity action) {
  return state.copyWith(
      communityAddress: action.communityAddress,
      communityName: action.communityName,
      tokenAddress: action.tokenAddress,
      tokenName: action.tokenName,
      tokenSymbol: action.tokenSymbol,
      tokenDecimals: action.tokenDecimals);
}

CashWalletState _switchCommunitySuccess(
    CashWalletState state, SwitchCommunitySuccess action) {
  // TODO
}

CashWalletState _getJoinBonusSuccess(
    CashWalletState state, GetJoinBonusSuccess action) {
  // TODO
}

CashWalletState _getBusinessListSuccess(
    CashWalletState state, GetBusinessListSuccess action) {
  // TODO
}

CashWalletState _getTokenTransfersListSuccess(
    CashWalletState state, GetTokenTransfersListSuccess action) {
  print('Found ${action.tokenTransfersList.length} token transfers');
  return state.copyWith(tokenTransfersList: action.tokenTransfersList);    
}