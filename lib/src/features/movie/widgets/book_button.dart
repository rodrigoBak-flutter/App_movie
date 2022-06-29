import 'package:flutter/material.dart';

import 'package:movie_ticket_app/src/core/constants/constants.dart';
import 'package:movie_ticket_app/src/core/data/models/movies.dart';
import 'package:movie_ticket_app/src/features/booking/booking_page.dart';

class BookButton extends StatelessWidget {
  const BookButton({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const transitionDuration = Duration(milliseconds: 200);

        Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: transitionDuration,
            reverseTransitionDuration: transitionDuration,
            pageBuilder: (_, animation, ___) {
              return FadeTransition(
                opacity: animation,
                child: BookingPage(movie: movie),
              );
            },
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
