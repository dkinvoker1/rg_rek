import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/service_locator.dart';
import '../../../../../core/widgets/loading_widget.dart.dart';
import '../market/widgets/tab_bar_pages/my_events/widgets/exception_widget.dart';
import 'bloc/quick_search_bloc.dart';
import 'widgets/widgets.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderWidget(),
          const SearchWidget(),
          Expanded(
            child: BlocBuilder<QuickSearchBloc, QuickSearchState>(
              builder: (context, state) {
                return state.maybeWhen(
                  initial: () => const InitialWidget(),
                  loading: () => const LoadingWidget(),
                  loaded: (games) => LoadedWidget(
                    games: games,
                  ),
                  loadedEmpty: () => const LoadedEmptyWidget(),
                  error: (errorMessage) => ExceptionWidget(
                    message: errorMessage,
                  ),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
