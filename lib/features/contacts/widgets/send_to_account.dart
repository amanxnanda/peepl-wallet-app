import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:peepl/features/shared/dialogs/warn_send.dart';
import 'package:peepl/generated/l10n.dart';
import 'package:peepl/features/contacts/widgets/contact_tile.dart';
import 'package:peepl/models/app_state.dart';
import 'package:peepl/models/tokens/token.dart';
import 'package:peepl/redux/viewsmodels/warn_send.dart';
import 'package:peepl/utils/format.dart';
import 'package:peepl/utils/send.dart';

class SendToAccount extends StatelessWidget {
  final String accountAddress;
  final Token? token;
  final VoidCallback? resetSearch;
  const SendToAccount({
    Key? key,
    required this.accountAddress,
    this.resetSearch,
    this.token,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        StoreConnector<AppState, WarnSendDialogViewModel>(
          distinct: true,
          converter: WarnSendDialogViewModel.fromStore,
          builder: (_, viewModel) {
            void handleTap() async {
              if (viewModel.warnSendDialogShowed) {
                resetSearch!();
                sendToPastedAddress(
                  context,
                  accountAddress,
                  token: token,
                );
              } else {
                final bool? isAccepted = await showDialog<bool>(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => WarnSendDialog(),
                );
                if (isAccepted != null && isAccepted) {
                  resetSearch!();
                  sendToPastedAddress(
                    context,
                    accountAddress,
                    token: token,
                  );
                }
              }
            }

            return ContactTile(
              displayName: formatAddress(accountAddress),
              onTap: handleTap,
              trailing: InkWell(
                focusColor: Theme.of(context).canvasColor,
                highlightColor: Theme.of(context).canvasColor,
                child: Text(
                  I10n.of(context).next_button,
                  style: TextStyle(color: Color(0xFF0377FF)),
                ),
                onTap: handleTap,
              ),
            );
          },
        ),
      ]),
    );
  }
}
