import 'package:flutter/material.dart';
import 'package:marble_fan_app/teams.dart';
import 'team_pick.dart';
import 'models/team_model.dart';

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
  TeamModel choosenTeam = null;
  int _currentPanel = 0;
  final List<Widget> _panels = [
    Expanded(child: Center(child: Text('panel 1'))),
    Teams(),
    Expanded(child: Center(child: Text('panel 3'))),
  ];

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
        title: this.choosenTeam == null
          ? Text('Choose your favorite team')
          : Text(this.choosenTeam.name),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPanel,
        onTap: _onTabTapped,
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.style),
            title: Text('Teams'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio),
            title: Text('Events'),
          ),
        ],
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
            child: this.choosenTeam == null
              ? TeamPick()
              : Text('Infos about your team'),
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
                  _panels[_currentPanel],
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

  void _onTabTapped(int index) {
    setState(() {
      _currentPanel = index;
    });
  }
 }