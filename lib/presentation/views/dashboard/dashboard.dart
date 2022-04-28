import 'package:calculo_ar_condicionado/generated/l10n.dart';
import 'package:calculo_ar_condicionado/presentation/views/calculate/btu/british_terminal_unit.dart';
import 'package:calculo_ar_condicionado/presentation/views/calculate/energy/energy_calculate.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Widget> _screens = [
    const BritishTerminalUnit(),
    const EnergyCalculateView()
  ];

  int _indexBottomNavigation = 0;

  void _onClickBottomNavigation(int indexSelected) {
    setState(() {
      _indexBottomNavigation = indexSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: _screens[_indexBottomNavigation],
            bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      icon: const Icon(Icons.home),
                      label: LocaleProvider.current.btu_calculate),
                  BottomNavigationBarItem(
                      icon: const Icon(Icons.charging_station),
                      label: LocaleProvider.current.energy_calculate),
                ],
                onTap: _onClickBottomNavigation,
                currentIndex: _indexBottomNavigation)));
  }
}
