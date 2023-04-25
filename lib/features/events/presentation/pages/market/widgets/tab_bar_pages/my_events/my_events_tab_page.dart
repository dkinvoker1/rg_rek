import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/service_locator.dart';
import 'bloc/my_events_bloc.dart';
import 'widgets/widgets.dart';

@RoutePage()
class MyEventsTabPage extends StatelessWidget {
  const MyEventsTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<MyEventsBloc>(),
        child: const MyEventsView(),
      ),
    );
  }
}

class MyEventsView extends StatefulWidget {
  const MyEventsView({Key? key}) : super(key: key);

  @override
  State<MyEventsView> createState() => _MyEventsViewState();
}

class _MyEventsViewState extends State<MyEventsView> {
  @override
  void didChangeDependencies() {
    context.read<MyEventsBloc>().add(const MyEventsEvent.load());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<MyEventsBloc, MyEventsState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<MyEventsBloc>().add(
                    const MyEventsEvent.load(),
                  );
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: state.maybeWhen(
                initial: () => const InitialWidget(),
                loading: () => const InitialWidget(),
                loaded: (eventsByCategory, filter) => LoadedWidget(
                  eventsByCategory: eventsByCategory,
                  filter: filter,
                ),
                loadedEmpty: () => const LoadedEmptyWidget(),
                error: (message) => ExceptionWidget(message: message),
                orElse: () => const SizedBox.shrink(),
              ),
            ),
          );
        },
      );
}
