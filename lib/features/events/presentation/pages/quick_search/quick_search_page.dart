import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/service_locator.dart';
import 'bloc/quick_search_bloc.dart';
// import 'widgets/widgets.dart';

@RoutePage()
class QuickSearchPage extends StatelessWidget {
  const QuickSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<QuickSearchBloc>(),
        child: const QuickSearchView(),
      ),
    );
  }
}

class QuickSearchView extends StatefulWidget {
  const QuickSearchView({Key? key}) : super(key: key);

  @override
  State<QuickSearchView> createState() => _QuickSearchViewState();
}

class _QuickSearchViewState extends State<QuickSearchView> {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<QuickSearchBloc, QuickSearchState>(
        builder: (context, state) {
          return const Text('data');

          // state.maybeWhen(
          //   initial: () => const LoadingWidget(),
          //   loading: () => const LoadingWidget(),
          //   loaded: (strangeMindsList) => StrangeMindsListWidget(
          //     strangeMindsList: strangeMindsList,
          //   ),
          //   loadedEmpty: () => const LoadedEmptyWidget(),
          //   error: (errorMessage) => ErrorDisplayWidget(
          //     message: errorMessage,
          //   ),
          //   orElse: () => const SizedBox.shrink(),
          // );
        },
      );
}
