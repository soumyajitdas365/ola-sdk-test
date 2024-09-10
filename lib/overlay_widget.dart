library google_places_flutter;

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ola_sdk_test/api.dart';

// ignore: must_be_immutable
class OLAMapPlaceAutoCompleteTextField extends StatefulWidget {
  InputDecoration inputDecoration;
  // ItemClick? itemClick;
  // GetPlaceDetailswWithLatLng? getPlaceDetailWithLatLng;
  bool isLatLngRequired = true;

  TextStyle textStyle;

  int debounceTime = 600;
  List<String>? countries = [];
  TextEditingController textEditingController = TextEditingController();
  // ListItemBuilder? itemBuilder;
  Widget? seperatedBuilder;
  void clearData;
  BoxDecoration? boxDecoration;
  bool isCrossBtnShown;
  bool showError;
  double? containerHorizontalPadding;
  double? containerVerticalPadding;
  FocusNode? focusNode;
  // PlaceType? placeType;
  String? language;

  OLAMapPlaceAutoCompleteTextField(
      {super.key,
      required this.textEditingController,
      this.debounceTime = 600,
      this.inputDecoration = const InputDecoration(),
      // this.itemClick,
      this.isLatLngRequired = true,
      this.textStyle = const TextStyle(),
      this.countries,
      // this.getPlaceDetailWithLatLng,
      // this.itemBuilder,
      this.boxDecoration,
      this.isCrossBtnShown = true,
      this.seperatedBuilder,
      this.showError = true,
      this.containerHorizontalPadding,
      this.containerVerticalPadding,
      this.focusNode,
      // this.placeType,
      this.language = 'en'});

  @override
  _OLAMapPlaceAutoCompleteTextFieldState createState() =>
      _OLAMapPlaceAutoCompleteTextFieldState();
}

class _OLAMapPlaceAutoCompleteTextFieldState
    extends State<OLAMapPlaceAutoCompleteTextField> {
  OverlayEntry? _overlayEntry;

  TextEditingController controller = TextEditingController();
  final LayerLink _layerLink = LayerLink();
  bool isSearched = false;

  bool isCrossBtn = true;

  // CancelToken? _cancelToken = CancelToken();

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: widget.containerHorizontalPadding ?? 0,
            vertical: widget.containerVerticalPadding ?? 0),
        alignment: Alignment.centerLeft,
        decoration: widget.boxDecoration ??
            BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.grey, width: 0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextFormField(
                decoration: widget.inputDecoration,
                style: widget.textStyle,
                controller: widget.textEditingController,
                focusNode: widget.focusNode ?? FocusNode(),
                onChanged: (string) {
                  // subject.add(string);

                  if (string.length > 3) {
                    Api.autoComplete(string).then((value) {
                      log(value.body);
                    });
                  }
                  // if (widget.isCrossBtnShown) {
                  //   isCrossBtn = string.isNotEmpty ? true : false;
                  //   setState(() {});
                  // }
                },
              ),
            ),
            (!widget.isCrossBtnShown)
                ? const SizedBox()
                : isCrossBtn && _showCrossIconWidget()
                    ? IconButton(
                        onPressed: clearData, icon: const Icon(Icons.close))
                    : const SizedBox()
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // subject.stream
    //     .distinct()
    //     .debounceTime(Duration(milliseconds: widget.debounceTime))
    //     .listen(textChanged);
  }

  textChanged(String text) async {
    // getLocation(text);
  }

  OverlayEntry? _createOverlayEntry() {
    if (context.findRenderObject() != null) {
      RenderBox renderBox = context.findRenderObject() as RenderBox;
      var size = renderBox.size;
      var offset = renderBox.localToGlobal(Offset.zero);
      return OverlayEntry(
          builder: (context) => Positioned(
                left: offset.dx,
                top: size.height + offset.dy,
                width: size.width,
                child: CompositedTransformFollower(
                  showWhenUnlinked: false,
                  link: _layerLink,
                  offset: Offset(0.0, size.height + 5.0),
                  child: Material(
                      child: ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 2,
                    separatorBuilder: (context, pos) =>
                        widget.seperatedBuilder ?? const SizedBox(),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                          onTap: () {
                            // var selectedData = alPredictions[index];
                            // if (index < alPredictions.length) {
                            //   widget.itemClick!(selectedData);

                            //   if (widget.isLatLngRequired) {
                            //     // getPlaceDetailsFromPlaceId(selectedData);
                            //   }
                            //   removeOverlay();
                            // }
                          },
                          child:

                              //  widget.itemBuilder != null
                              //     ? widget.itemBuilder!(
                              //         context, index, alPredictions[index])
                              //     :

                              Container(
                            padding: const EdgeInsets.all(10),
                            child: const Text(""),
                          ));
                    },
                  )),
                ),
              ));
    }
    return null;
  }

  removeOverlay() {
    // alPredictions.clear();
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
    _overlayEntry!.markNeedsBuild();
  }

  void clearData() {
    // widget.textEditingController.clear();
    // if (_cancelToken?.isCancelled == false) {
    //   _cancelToken?.cancel();
    // }

    setState(() {
      // alPredictions.clear();
      isCrossBtn = false;
    });

    if (_overlayEntry != null) {
      try {
        _overlayEntry?.remove();
      } catch (e) {
        log(e.toString());
      }
    }
  }

  _showCrossIconWidget() {
    return (widget.textEditingController.text.isNotEmpty);
  }

  // ignore: unused_element
  _showSnackBar(String errorData) {
    if (widget.showError) {
      final snackBar = SnackBar(
        content: Text(errorData),
      );

      // Find the ScaffoldMessenger in the widget tree
      // and use it to show a SnackBar.
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
