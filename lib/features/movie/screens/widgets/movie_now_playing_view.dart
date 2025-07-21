import 'package:bloc_app_template/widgets/app_card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:bloc_app_template/features/movie/screens/blocs/movie_now_playing_cubit.dart';
import 'package:bloc_app_template/features/movie/screens/pages/movie_detail_page.dart';
// import 'package:bloc_app_template/features/utilities/poster_value_controller.dart';

class NowPlayingMoviesView extends StatelessWidget {
  const NowPlayingMoviesView({
    super.key,
    // required this.posterValueController,
  });

  // final PosterValueController posterValueController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieNowPlayingCubit, MovieNowPlayingState>(
      builder: (_, state) {
        if (state is SuccessMovieNowPlayingState) {
          return AppCardSwiper(
            title: 'Now Playing',
            data: state.movies,
            // posterValueController: posterValueController,
            onItemTap: (movie) => context.pushNamed(MovieDetailPage.name,
                pathParameters: {'id': movie.id.toString()}),
          );
        }
        return AppCardSwiper.shimmer(context);
      },
    );
  }
}
