import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation/bottom_navigation_design.dart';
import 'bottom_navigation/profile_design_page.dart';
import 'design_page/card_details_design.dart';
import 'design_page/concert_list_design.dart';
import 'design_page/concert_screen_1_design.dart';
import 'design_page/concert_screen_2_design.dart';
import 'design_page/concert_screen_3_design.dart';
import 'design_page/movie_list_screen_design.dart';
import 'design_page/movie_screen_1.dart';
import 'design_page/movie_screen_2.dart';
import 'design_page/movie_screen_3.dart';
import 'design_page/movie_screen_4.dart';
import 'design_page/movie_screen_5.dart';
import 'design_page/movie_screen_6.dart';
import 'design_page/movie_screen_7.dart';
import 'design_page/movie_screen_8.dart';
import 'design_page/payment_method_page_design.dart';
import 'design_page/print_ticket_format_page_design.dart';
import 'design_page/select_seat_date_design.dart';
import 'design_page/seat_selecting_design.dart';
import 'design_page/teaser_list_design.dart';
import 'design_page/teaser_screen_1_design.dart';
import 'design_page/teaser_screen_2_design.dart';
import 'design_page/teaser_screen_3_design.dart';
import 'design_page/theatre_list_design.dart';
import 'design_page/theatre_list_design1.dart';
import 'design_page/theatre_list_design2.dart';
import 'design_page/theatre_list_design3.dart';
import 'design_page/theatre_list_design4.dart';
import 'design_page/trailer_list_design.dart';
import 'design_page/trailer_screen_1_design.dart';
import 'design_page/trailer_screen_2_design.dart';
import 'design_page/trailer_screen_3_design.dart';
import 'design_page/upi_payment_design.dart';
import 'login_to_dashboard/login_to_dashboard_design/dashboard_design.dart';
import 'login_to_dashboard/login_to_dashboard_design/login_page_design.dart';
import 'login_to_dashboard/login_to_dashboard_design/sign_in_design.dart';
import 'login_to_dashboard/login_to_dashboard_design/splash_screen_design.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'login_page_design',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: 'sign_in_design',
          builder: (BuildContext context, GoRouterState state) {
            return const SignIn();
          },
        ),
        // GoRoute(
        //   path: 'dashboard_design',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const DashBoardPageMovieApp();
        //   },
        // ),
        GoRoute(
          path: 'dashboard_design',
          builder: (BuildContext context, GoRouterState state) {
            return const BottomNavigationMovieApp();
          },
        ),


        GoRoute(
          path: 'movie_list_screen_design',
          builder: (BuildContext context, GoRouterState state) {
            return const MovieListScreenDesign();
          },
        ),
        GoRoute(
          path: 'movie_screen_1',
          builder: (BuildContext context, GoRouterState state) {
            return const MovieScreenOne();
          },
        ),
        GoRoute(
          path: 'movie_screen_2',
          builder: (BuildContext context, GoRouterState state) {
            return const MovieScreenTwo();
          },
        ),
        GoRoute(
          path: 'movie_screen_3',
          builder: (BuildContext context, GoRouterState state) {
            return const MovieScreenThree();
          },
        ),
        GoRoute(
          path: 'movie_screen_4',
          builder: (BuildContext context, GoRouterState state) {
            return const MovieScreenFour();
          },
        ),
        GoRoute(
          path: 'movie_screen_5',
          builder: (BuildContext context, GoRouterState state) {
            return const MovieScreenFive();
          },
        ),
        GoRoute(
          path: 'movie_screen_6',
          builder: (BuildContext context, GoRouterState state) {
            return const MoviesScreenSix();
          },
        ),
        GoRoute(
          path: 'movie_screen_7',
          builder: (BuildContext context, GoRouterState state) {
            return const MovieScreenSeven();
          },
        ),
        GoRoute(
          path: 'movie_screen_8',
          builder: (BuildContext context, GoRouterState state) {
            return const MovieScreenEight();
          },
        ),
        GoRoute(
          path: 'concert_list_design',
          builder: (BuildContext context, GoRouterState state) {
            return const ConcertListDesign();
          },
        ),
        GoRoute(
          path: 'concert_screen_1_design',
          builder: (BuildContext context, GoRouterState state) {
            return const ConcertScreenOneDesign();
          },
        ),
        GoRoute(
          path: 'concert_screen_2_design',
          builder: (BuildContext context, GoRouterState state) {
            return const ConcertListTwoDesign();
          },
        ),
        GoRoute(
          path: 'concert_screen_3_design',
          builder: (BuildContext context, GoRouterState state) {
            return const ConcertScreenTheeDesign();
          },
        ),
        GoRoute(
          path: 'teaser_list_design',
          builder: (BuildContext context, GoRouterState state) {
            return const TeaserListDesign();
          },
        ),
        GoRoute(
          path: 'teaser_screen_1_design',
          builder: (BuildContext context, GoRouterState state) {
            return const TeaserScreenOneDesign();
          },
        ),
        GoRoute(
          path: 'teaser_screen_2_design',
          builder: (BuildContext context, GoRouterState state) {
            return const TeaserScreenTwoDesign();
          },
        ),
        GoRoute(
          path: 'teaser_screen_3_design',
          builder: (BuildContext context, GoRouterState state) {
            return const TeaserScreenThreeDesign();
          },
        ),
        GoRoute(
          path: 'trailer_list_design',
          builder: (BuildContext context, GoRouterState state) {
            return const TrailerListDesign();
          },
        ),
        GoRoute(
          path: 'trailer_screen_1_design',
          builder: (BuildContext context, GoRouterState state) {
            return const TrailerScreenOneDesign();
          },
        ),
        GoRoute(
          path: 'trailer_screen_2_design',
          builder: (BuildContext context, GoRouterState state) {
            return const TrailerScreenTwoDesign();
          },
        ),
        GoRoute(
          path: 'trailer_screen_3_design',
          builder: (BuildContext context, GoRouterState state) {
            return const TrailerScreenThreeDesign();
          },
        ),



        GoRoute(
          path: 'theatre_list_design',
          builder: (BuildContext context, GoRouterState state) {
            return TheatreListScreen(
              isSelected: true,
            );
          },
        ),
        GoRoute(
          path: 'theatre_list_design1',
          builder: (BuildContext context, GoRouterState state) {
            return const TheatreListDesignOne();
          },
        ),
        GoRoute(
          path: 'theatre_list_design2',
          builder: (BuildContext context, GoRouterState state) {
            return const TheatreListDesignTwo();
          },
        ),
        GoRoute(
          path: 'theatre_list_design3',
          builder: (BuildContext context, GoRouterState state) {
            return const TheatreListDesignThree();
          },
        ),
        GoRoute(
          path: 'theatre_list_design4',
          builder: (BuildContext context, GoRouterState state) {
            return const TheatreListDesignFour();
          },
        ),
        GoRoute(
          path: 'select_seat_date_design',
          builder: (BuildContext context, GoRouterState state) {
            return  SelectSeatDateDesign(
            );
          },
        ),

        GoRoute(
          path: 'seat_selecting_design',
          builder: (BuildContext context, GoRouterState state) {
            return const SeatSelectingDesign();
          },
        ),
        GoRoute(
          path: 'payment_method_page_design',
          builder: (BuildContext context, GoRouterState state) {
            return const PaymentMethodPageDesign();
          },
        ),
        GoRoute(
          path: 'upi_payment_design',
          builder: (BuildContext context, GoRouterState state) {
            return const UpiPaymentDesign();
          },
        ),
        GoRoute(
          path: 'card_details_design',
          builder: (BuildContext context, GoRouterState state) {
            return const CardDeatilsDesign();
          },
        ),
        GoRoute(
          path: 'print_ticket_format_page_dummy',
          builder: (BuildContext context, GoRouterState state) {
            return const PrintTicketFormatDesign();
          },
        ),
        GoRoute(
          path: 'profile_design_page',
          builder: (BuildContext context, GoRouterState state) {
            return const ProfileDesignPage();
          },
        ),

      ],
    ),
  ],
);
