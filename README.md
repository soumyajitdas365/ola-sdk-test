<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# OLA_Maps_Places_Autocomplete_SearchText

The ola_sdk_test package provides a customizable search field component for Flutter applications. It leverages the capabilities of the OLA Maps API to deliver location-based search suggestions and results. This package integrates seamlessly with the animated_custom_dropdown package by abdullahchauhan.com to offer a dropdown menu for displaying and selecting search options.

## Features

- Autocomplete: Gain real-time suggestions as you type in the search field, powered by the OLA Maps API.
- Search: The user can perform a search based on their input and retrieve a list of results provided by the OLA Maps API.
- Customization: You can customize the appearance and behavior of the search field through various properties.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

Import necessary packages:

```dart
import 'package:flutter/material.dart';
import 'package:ola_sdk_test/search_field.dart';
```

**Obtain your OLA Maps API Key:**

- Create an OLA Maps developer account and acquire your API key.
- Store the API key securely within your application.

```
SearchField(
  apiKey: yourOlaMapsApiKey,
  // Other properties (optional)
  hintText: "Search for places...",
  onChanged: (address) {
    // Handle address selection
    if (address != null) {
      print("Selected address: ${address.description}");
    }
  },
);
```

## Additional information

**Available Properties:**

- `apiKey`: (Required) Your Ola API key.
- `apiType`: (Optional) Choose between `AutoComplete` and `SearchText`. Defaults to `AutoComplete`.
  - `AutoComplete`: Used for basic autocomplete suggestions.
  - `SearchText`: Used for advanced search with additional parameters like location, radius, size, and types. You can configure these parameters on the `SearchText` object.
- `closedHeaderPadding`: Padding for the closed state of the search field.
- `controller`: (Optional) A controller to manage the selected address.
- `decoration`: Customize the appearance of the search field.
- `disabledDecoration`: Decoration for the disabled state of the search field (optional).
- `enabled`: Control if the search field is enabled (default: true).
- `excludeSelected`: Hide the selected item from the suggestion list (default: true).
- `expandedHeaderPadding`: Padding for the expanded state of the search field.
- `futureRequestDelay`: Delay before executing the API request (optional).
- `headerBuilder`: Build a custom header for the search field (optional).
- `hideSelectedFieldWhenExpanded`: Hide the selected item when the suggestion list is open (optional).
- `hintText`: Placeholder text for the search field.
- `itemsListPadding`: Padding for the suggestion list.
- `listItemPadding`: Padding for each suggestion item.
- `maxlines`: Maximum number of lines for text display.
- `noResultFoundBuilder`: Build a custom widget for the case where no search results are found (optional).
- `noResultFoundText`: Text displayed when no search results are found (default: "No result found.").
- `onChanged`: Callback function triggered when an address is selected.
- `overlayController`: (Optional) Control the visibility of the suggestion list overlay.
- `overlayHeight`: Height of the suggestion list overlay (optional).
- `searchHintText`: Placeholder text for the search input (optional).
- `searchRequestLoadingIndicator`: Widget to display while loading search results (optional).
- `visibility`: (Optional) Callback function to control the visibility of the search field.
- `canCloseOutsideBounds`: (Optional) Control if the suggestion list closes when tapping outside (default: true).
- `closeDropDownOnClearFilterSearch`: (Optional) Close the suggestion list when clearing the search text.

**SearchText Parameters:**

- `location`: (Optional) Specify a location for the search.
- `radius`: (Optional) Define a search radius in meters.
- `size`: (Optional) Limit the number of search results returned.
- `types`: (Optional) Filter search results by place type (e.g., "restaurant", "atm").

```
SearchField(
  apiKey: apiKey,
  apiType: SearchText(
    location: "Kolkata, India",
    radius: 5000,
    types: ["restaurant"],
  ),
  hintText: "Search for restaurants...",
  onChanged: (address) {
    // Handle address
}

```
