load("//build/kernel/kleaf:kernel.bzl", "ddk_headers")

xiaomi_common_in_tree_modules = [
    # keep sorted
    "drivers/char/xlogchar.ko",
    "drivers/media/rc/ir-spi.ko",
    "drivers/xiaomi/dump_display/dump_display.ko",
]

xiaomi_common_consolidate_in_tree_modules = [
    # keep sorted
]

def export_xiaomi_headers():
    ddk_headers(
        name = "mi_irq_headers",
        hdrs = native.glob(["kernel/irq/*.h"]),
        includes = [
            "kernel/irq",
        ],
        visibility = ["//visibility:public"],
    )
