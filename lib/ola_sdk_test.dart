library ola_sdk_text;

import 'package:ola_sdk_test/const.dart';
export 'search_field.dart';

/// A Calculator.
class OlaSdkTest {
  final String apiKey;

  OlaSdkTest({
    required this.apiKey,
  }) {
    kApiKey = apiKey;
  }

  // Widget autofillTextField({
  //   Key? key,
  //   final ScrollController? itemsScrollController,
  //   final Widget Function(BuildContext, String)? noResultFoundBuilder,
  //   final String? hintText,
  //   final String? searchHintText,
  //   final Function(AutoCompleteResponseModel?)? onChanged,
  //   final bool excludeSelected = true,
  //   final bool canCloseOutsideBounds = true,
  //   final bool hideSelectedFieldWhenExpanded = false,
  //   final String? noResultFoundText,
  //   final Duration? futureRequestDelay,
  //   final int maxlines = 1,
  //   final EdgeInsets? closedHeaderPadding,
  //   final EdgeInsets? expandedHeaderPadding,
  //   final EdgeInsets? itemsListPadding,
  //   final EdgeInsets? listItemPadding,
  //   final Widget? searchRequestLoadingIndicator,
  //   final double? overlayHeight,
  //   final Widget Function(BuildContext, AutoCompleteResponseModel, bool)?
  //       headerBuilder,
  //   final CustomDropdownDecoration? decoration,
  //   final bool enabled = true,
  //   final CustomDropdownDisabledDecoration? disabledDecoration,
  //   final bool closeDropDownOnClearFilterSearch = false,
  //   final OverlayPortalController? overlayController,
  //   final SingleSelectController<AutoCompleteResponseModel?>? controller,
  //   final Function(bool)? visibility,
  // }) {
  //   return SearchField(
  //     closedHeaderPadding: closedHeaderPadding,
  //     controller: controller,
  //     decoration: decoration,
  //     disabledDecoration: disabledDecoration,
  //     enabled: enabled,
  //     excludeSelected: excludeSelected,
  //     expandedHeaderPadding: expandedHeaderPadding,
  //     futureRequestDelay: futureRequestDelay,
  //     headerBuilder: headerBuilder,
  //     hideSelectedFieldWhenExpanded: hideSelectedFieldWhenExpanded,
  //     hintText: hintText,
  //     itemsListPadding: itemsListPadding,
  //     listItemPadding: listItemPadding,
  //     overlayController: overlayController,
  //     searchRequestLoadingIndicator: searchRequestLoadingIndicator,
  //     noResultFoundBuilder: noResultFoundBuilder,
  //     searchHintText: searchHintText,
  //     key: key,
  //     visibility: visibility,
  //     maxlines: maxlines,
  //     overlayHeight: overlayHeight,
  //     closeDropDownOnClearFilterSearch: closeDropDownOnClearFilterSearch,
  //     canCloseOutsideBounds: canCloseOutsideBounds,
  //   );
  // }
}
