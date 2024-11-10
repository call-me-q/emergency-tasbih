import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part './drag_box.dart';
part './app_bar.dart';
part './setting_list.dart';

class SettingSheet extends HookWidget {
  const SettingSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final draggableScrollController = DraggableScrollableController();
    final isMinimized = useState(false);
    const double minSize = 0.1;
    const double maxSize = 0.9;

    useEffect(() {
      void checkIfAtMaxSize() {
        isMinimized.value = draggableScrollController.size >= maxSize / 2;
      }

      draggableScrollController.addListener(checkIfAtMaxSize);
      return () => draggableScrollController.removeListener(checkIfAtMaxSize);
    }, [draggableScrollController]);

    return DraggableScrollableSheet(
      controller: draggableScrollController,
      maxChildSize: maxSize,
      initialChildSize: minSize,
      snap: true,
      snapSizes: const [minSize, maxSize],
      minChildSize: minSize,
      builder: (BuildContext context, ScrollController scrollController) {
        return ValueListenableBuilder<bool>(
            valueListenable: isMinimized,
            builder: (BuildContext context, bool value, Widget? child) {
              return Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 10, 10, 10),
                  border: BorderDirectional(
                      top: BorderSide(
                          width: 1,
                          color: value ? Colors.white24 : Colors.white70)),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    DragBox(
                      isMinimized: value,
                    ),
                    AppBar(isMinimized: value),
                    const SettingList()
                  ],
                ),
              );
            });
      },
    );
  }
}
