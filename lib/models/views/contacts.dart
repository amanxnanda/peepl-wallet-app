import 'package:contacts_service/contacts_service.dart';
import 'package:fusecash/models/app_state.dart';
import 'package:fusecash/models/token.dart';
import 'package:fusecash/models/transaction.dart';
import 'package:fusecash/redux/actions/user_actions.dart';
import 'package:redux/redux.dart';

class ContactsViewModel {
  final List<Contact> contacts;
  final Token token;
  final bool isContactsSynced;
  final Function(List<Contact>) syncContacts;
  final Transactions transactions;
  final Map<String, String> reverseContacts;
  final String countryCode;
  // final Function(String, num, VoidCallback, VoidCallback) sendToContact;
  // final Function(String, num, VoidCallback, VoidCallback) sendToAccountAddress;

  ContactsViewModel(
      {this.contacts,
      this.token,
      this.syncContacts,
      this.isContactsSynced,
      this.transactions,
      this.reverseContacts,
      this.countryCode});

  static ContactsViewModel fromStore(Store<AppState> store) {
    return ContactsViewModel(
        isContactsSynced: store.state.userState.isContactsSynced ?? false,
        contacts: store.state.userState.contacts ?? [],
        token: store.state.cashWalletState.token,
        transactions: store.state.cashWalletState.transactions,
        reverseContacts: store.state.userState.reverseContacts,
        countryCode: store.state.userState.countryCode,
        syncContacts: (List<Contact> contacts) {
          store.dispatch(syncContactsCall(contacts));
        });
  }
}