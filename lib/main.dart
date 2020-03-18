import 'package:flutter/material.dart';
import 'team_pick.dart';

void main() => runApp(MarbleFanApp());

class MarbleFanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marble Fan App',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      debugLabel: 'preview banner',
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Choose your favorite team'),
        leading: IconButton(
          icon: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: _controller.view
          ),
          onPressed: () {
            _controller.fling(velocity: _isPanelVisible ? -1.0 : 1.0);
          },
        ),
      ),
      body: LayoutBuilder(
        builder: _buildStack,
      ),
    );
  }

  bool get _isPanelVisible {
    final AnimationStatus status = _controller.status;

    return status == AnimationStatus.completed || status == AnimationStatus.forward;
  }

  static const _PANEL_HEADER_HEIGHT = 32.0;

  Widget _buildStack(BuildContext context, BoxConstraints constraints) {
    final Animation<RelativeRect> animation = _getPanelAnimation(constraints);
    final ThemeData theme = Theme.of(context);

    return Container(
      color: theme.primaryColor,
      child: Stack(
        children: [
          Center(
            child: TeamPick(),
          ),
          PositionedTransition(
            rect: animation,
            child: Material(
              borderRadius: const BorderRadius.only(
                topLeft: const Radius.circular(32.0),
                topRight: const Radius.circular(32.0),
              ),
              elevation: 12.0,
              child: Column(
                children: [
                  Container(
                    height: _PANEL_HEADER_HEIGHT,
                    // child: Center(child: Text('panel')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Animation<RelativeRect> _getPanelAnimation(BoxConstraints constraints) {
    final double height = constraints.biggest.height;
    final double top = height - _PANEL_HEADER_HEIGHT;
    final double bottom = -_PANEL_HEADER_HEIGHT;
    return RelativeRectTween(
      begin: RelativeRect.fromLTRB(0.0, top, 0.0, bottom),
      end: RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));
  }
}