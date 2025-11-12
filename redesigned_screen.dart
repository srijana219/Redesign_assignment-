import 'package:flutter/material.dart';
import '../utils/responsive.dart';
import '../widgets/header.dart';
import '../widgets/boost.dart';
import '../widgets/content_card.dart';
import '../widgets/action_row.dart';

class RedesignedScreen extends StatelessWidget {
  const RedesignedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizing = s(context);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 700) {
            return _buildWide(context, sizing);
          } else {
            return _buildCompact(context, sizing);
          }
        },
      ),
    );
  }

  Widget _buildCompact(BuildContext context, Sizing sizing) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Header(),
          Boost(height: sizing.hp(20)),
          const ContentCard(),
          const ActionRow(),
        ],
      ),
    );
  }

  Widget _buildWide(BuildContext context, Sizing sizing) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: const [
              Header(),
              Boost(),
              ContentCard(),
            ],
          ),
        ),
        const Expanded(flex: 1, child: ActionRow()),
      ],
    );
  }
}