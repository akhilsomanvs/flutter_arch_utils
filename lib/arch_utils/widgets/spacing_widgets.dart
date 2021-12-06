part of flutter_arch_utils;

class VSpace extends StatelessWidget {
  double height = 0;

  VSpace(this.height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: (height).vdp());
  }
}

class HSpace extends StatelessWidget {
  double width = 0;

  HSpace(this.width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: (width).hdp());
  }
}
