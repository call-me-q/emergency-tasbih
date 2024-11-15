import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zikr/const.dart';

class OrganizationHref extends StatelessWidget {
  const OrganizationHref({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () async {
          if (await canLaunchUrl(organizationURL)) {
            launchUrl(organizationURL);
          }
        },
        child: const Text(organizationName));
  }
}
