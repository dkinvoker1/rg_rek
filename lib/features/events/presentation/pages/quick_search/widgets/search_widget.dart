import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rg_rek/features/events/presentation/pages/quick_search/bloc/quick_search_bloc.dart';

import '../../../../../../core/router/router.dart';
import '../../../../../../core/widgets/rounded_border_container_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RoundedBorderContainerWidget(
        radius: 8,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  context.pushRoute(
                    const MarketRoute(),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.grey.shade400,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextField(
                  autofocus: true,
                  cursorColor: Colors.black,
                  
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  onChanged: (phrase) {
                    context.read<QuickSearchBloc>().add(
                          QuickSearchEvent.searchByPhrase(phrase),
                        );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
