# Scoreboard: A demonstration of RTL support on macOS using NSStackView and localizedStringWithFormat

This sample project illustrates the usage of AppKit controls and Auto Layout constraints in a macOS project. By using standard AppKit controls such as NSTableView and NStackView and laying out the views with Auto Layout, the UI automatically adapt to Right-to-Left languages, without adding special logic to mirror the UI for these languages.
This sample also shows how to render bidirectional text (mixed directionality scripts) correctly without adding logic to your variables.

To test Right-to-left UI without adding a localization: 

1. Open the Scheme editor in Xcode
2. Select 'Run'
3. Select the tab 'Options'
4. Override the 'Applicaton Language' setting to use 'Right-to-left pseudolanguage'

To test bidirectional text behavior, you can run your app in your application language, add a new player and type the player name with an Arabic or Hebrew keyboard.  


## Requirements

### Build

Xcode 8.0 or later; macOS 10.12 SDK or later

### Runtime

macOS 10.12 or later

Copyright (C) 2016 Apple Inc. All rights reserved.
