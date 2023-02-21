import 'package:flutter/material.dart';
import 'package:flutter_arch_utils/flutter_arch_utils.dart';
import 'package:sample_project/sample_widget.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  bool _isConverting = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: _isConverting ? _getWithConvertedHeight() : _getWithoutConvertedHeight(),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isConverting = !_isConverting;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(_isConverting ? "Converting" : "Not Converting"),
                      const Expanded(child: SizedBox()),
                      Icon(_isConverting ? Icons.switch_right_rounded : Icons.switch_left_rounded),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _getWithoutConvertedHeight() {
    return const [
      SampleWidget(height: 200),
      SampleWidget(height: 200),
      SampleWidget(height: 200),
      SampleWidget(height: 244),
    ];
  }

  List<Widget> _getWithConvertedHeight() {
    return [
      SampleWidget(height: 200.vdp()),
      SampleWidget(height: 200.vdp()),
      SampleWidget(height: 200.vdp()),
      SampleWidget(height: 244.vdp()),
    ];
  }
}
