local common = require("common")

data:extend({{
    type = "int-setting",
    name = common.PERMUTATION_THRESHOLD_SETTING,
    setting_type = "startup",
    order = "b",
    default_value = 120,
    minimum_value = 4,
    maximum_value = 10000,
  },
  {
    type = "bool-setting",
    name = common.SIMPLE_MODE_SETTING,
    setting_type = "startup",
    order = "a",
    default_value = false
  },
  {
    type = "bool-setting",
    name = common.CROSS_CYCLE_SETTING,
    setting_type = "runtime-per-user",
    default_value = false
  },
  {
    type = "string-setting",
    name = common.FILL_FLUIDBOXES,
    setting_type = "startup",
    order = "c",
    default_value = "Turn Off",
    allowed_values = {"Turn Off", "Only on Result", "Only on Ingredient", "Ingredient and Result"}
  }})
