import 'package:airplane_ticket/base/res/styles/app_styles.dart';
import 'package:airplane_ticket/base/widgets/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../base/utils/all_json.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: AppStyles.bgColor,
        elevation: 0,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map(
                    (singleTicket) => Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TicketView(
                        ticket: singleTicket,
                        wholeScreen: true,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
