import 'package:fluent_ui/fluent_ui.dart';
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
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DynMouseScroll(
      builder: (context, controller, physics) {
        return SingleChildScrollView(
          controller: controller,
          physics: physics,
          scrollDirection: widget.scrollDirection,
          child: widget.child,
        );
      },
    );
  }
}
