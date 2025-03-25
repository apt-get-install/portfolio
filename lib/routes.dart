import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/mobile/about_mobile.dart';
import 'package:portfolio/mobile/blog_mobile.dart';
import 'package:portfolio/mobile/contact_mobile.dart';
import 'package:portfolio/mobile/landing_page_mobile.dart';
import 'package:portfolio/mobile/projects_mobile.dart';
import 'package:portfolio/mobile/works_mobile.dart';
import 'package:portfolio/web/about_web.dart';
import 'package:portfolio/web/blog_web.dart';
import 'package:portfolio/web/contact_web.dart';
import 'package:portfolio/web/landing_page_web.dart';
import 'package:portfolio/web/projects_web.dart';
import 'package:portfolio/web/works_web.dart';

class Routes {
  static Route<dynamic> generatesRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const LandingPageWeb();
              } else {
                return const LandingPageMobile();
              }
            },
          ),
        );
      case '/contact':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const ContactWeb();
              } else {
                return const ContactMobile();
              }
            },
          ),
        );
      case '/about':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const AboutWeb();
              } else {
                return const AboutMobile();
              }
            },
          ),
        );
      case '/blog':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const BlogWeb();
              } else {
                return const BlogMobile();
              }
            },
          ),
        );
      case '/works':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const WorksWeb();
              } else {
                return const WorksMobile();
              }
            },
          ),
        );
      case '/projects':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const ProjectsWeb();
              } else {
                return const ProjectsMobile();
              }
            },
          ),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const LandingPageWeb();
              } else {
                return const LandingPageMobile();
              }
            },
          ),
        );
    }
  }
}
