import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

const String appName = "Kaiteki";
const String appWebsite = "https://craftplacer.moe/projects/kaiteki";
const String telegramChannel = "https://t.me/kaiteki_fedi";
const String githubRepository = "https://github.com/Kaiteki-Fedi/Kaiteki";
const String appDescription = "The comfy Fediverse client";
const String appRemoteIcon =
    "https://craftplacer.moe/projects/kaiteki/img/kaiteki.png";
const String userAgent =
    "Kaiteki/1.0 (+https://craftplacer.moe/projects/kaiteki)";

const String exampleAvatar = "https://craftplacer.keybase.pub/cute.jpg";

const double defaultFormWidth = 448;
const double defaultFormHeight = 592;
const dialogConstraints = BoxConstraints(minWidth: 280, maxWidth: 560);

/// Debug flag for Material 3
bool get useM3 => false;

/// Whether to use frontend login endpoints or oauth ones.
bool get useOAuth => !kIsWeb;

const List<String> defaultScopes = [
  "read",
  "write",
  "follow",
  "push",
  "admin",
];

const List<String> defaultMisskeyPermissions = [
  "read:account",
  "write:account",
  "read:pages",
  "read:notifications",
  "write:notifications",
  "read:favorites",
  "write:favorites",
];

const double defaultSplashRadius = 24.0;
