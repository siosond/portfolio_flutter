import 'package:fluent_ui/fluent_ui.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:smooth_scroll_multiplatform/smooth_scroll_multiplatform.dart';

class PortfolioScrollView extends StatefulWidget {
  final Axis scrollDirection;
  final Widget child;

  const PortfolioScrollView({
    required this.child,
    super.key,
    this.scrollDirection = Axis.vertical,
  });

  @override
  State<PortfolioScrollView> createState() => _PortfolioScrollViewState();
}

class _PortfolioScrollViewState extends State<PortfolioScrollView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return sizingInformation.isMobile
            ? DynMouseScroll(
                builder: (context, controller, physics) {
                  return SingleChildScrollView(
                    controller: controller,
                    physics: physics,
                    scrollDirection: widget.scrollDirection,
                    child: widget.child,
                  );
                },
              )
            : SingleChildScrollView(
                scrollDirection: widget.scrollDirection,
                child: widget.child,
              );
      },
    );
  }
}
