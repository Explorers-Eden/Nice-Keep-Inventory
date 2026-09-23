$dialog show @s \
{\
  "type":"minecraft:confirmation",\
  "inputs":[\
    {\
      "type":"minecraft:single_option",\
      "key":"grave_status",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.grave_status",\
        "fallback":"Graves"\
      },\
      "options":[\
        {\
          "id":"enabled",\
          "display":{\
            "translate":"option.keepinv.enabled",\
            "fallback":"Enabled",\
            "color":"green"\
          }\
        },\
        {\
          "id":"disabled",\
          "display":{\
            "translate":"option.keepinv.disabled",\
            "fallback":"Disabled",\
            "color":"red"\
          },\
          "initial":$(grave_status_initial)\
        }\
      ]\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"grave_duration",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.grave_duration",\
        "fallback":"Grave Duration (Minutes)"\
      },\
        "start":0,\
        "end":180,\
        "step":1,\
        "initial":$(grave_duration)\
    },\
    {\
      "type":"minecraft:single_option",\
      "key":"grave_type",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.grave_type",\
        "fallback":"Grave Appearance"\
      },\
      "options":[\
        {\
          "id":"random",\
          "display":{\
            "translate":"option.keepinv.grave_type.random",\
            "fallback":"Random"\
          }\
        },\
        {\
          "id":"skull",\
          "display":{\
            "translate":"option.keepinv.grave_type.skull",\
            "fallback":"Skull"\
          },\
          "initial":$(grave_type_skull_initial)\
        },\
        {\
          "id":"player_head",\
          "display":{\
            "translate":"option.keepinv.grave_type.player_head",\
            "fallback":"Player Head"\
          },\
          "initial":$(grave_type_player_head_initial)\
        },\
        {\
          "id":"candle",\
          "display":{\
            "translate":"option.keepinv.grave_type.candle",\
            "fallback":"Candle"\
          },\
          "initial":$(grave_type_candle_initial)\
        },\
        {\
          "id":"tombstone",\
          "display":{\
            "translate":"option.keepinv.grave_type.tombstone",\
            "fallback":"Tombstone"\
          },\
          "initial":$(grave_type_tombstone_initial)\
        },\
        {\
          "id":"bundle",\
          "display":{\
            "translate":"option.keepinv.grave_type.bundle",\
            "fallback":"Bundle"\
          },\
          "initial":$(grave_type_bundle_initial)\
        },\
        {\
          "id":"chest",\
          "display":{\
            "translate":"option.keepinv.grave_type.chest",\
            "fallback":"Chest"\
          },\
          "initial":$(grave_type_chest_initial)\
        }\
      ]\
    },\
    {\
      "type":"minecraft:single_option",\
      "key":"player_head_drop",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.player_head_drop",\
        "fallback":"Player Head Drop On Death"\
      },\
      "options":[\
        {\
          "id":"enabled",\
          "display":{\
            "translate":"option.keepinv.enabled",\
            "fallback":"Enabled",\
            "color":"green"\
          }\
        },\
        {\
          "id":"disabled",\
          "display":{\
            "translate":"option.keepinv.disabled",\
            "fallback":"Disabled",\
            "color":"red"\
          },\
          "initial":$(player_head_drop_initial)\
        }\
      ]\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"player_head_drop_chance",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.player_head_drop_chance",\
        "fallback":"Player Head Drop Chance"\
      },\
        "label_format": "options.percent_value",\
        "start":1,\
        "end":100,\
        "step":1,\
        "initial":$(player_head_drop_chance_initial)\
    },\
    {\
      "type":"minecraft:single_option",\
      "key":"exp_loss",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.exp_loss",\
        "fallback":"Exp Loss"\
      },\
      "options":[\
        {\
          "id":"enabled",\
          "display":{\
            "translate":"option.keepinv.enabled",\
            "fallback":"Enabled",\
            "color":"green"\
          }\
        },\
        {\
          "id":"disabled",\
          "display":{\
            "translate":"option.keepinv.disabled",\
            "fallback":"Disabled",\
            "color":"red"\
          },\
          "initial":$(exp_loss_initial)\
        }\
      ]\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"exp_loss_amount",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.exp_loss_amount",\
        "fallback":"Exp Loss Amount"\
      },\
        "label_format": "options.percent_value",\
        "start":1,\
        "end":100,\
        "step":1,\
        "initial":$(exp_loss_amount_initial)\
    },\
    {\
      "type":"minecraft:single_option",\
      "key":"equip_dmg",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.equip_dmg",\
        "fallback":"Equipment Damage"\
      },\
      "options":[\
        {\
          "id":"enabled",\
          "display":{\
            "translate":"option.keepinv.enabled",\
            "fallback":"Enabled",\
            "color":"green"\
          }\
        },\
        {\
          "id":"disabled",\
          "display":{\
            "translate":"option.keepinv.disabled",\
            "fallback":"Disabled",\
            "color":"red"\
          },\
          "initial":$(equip_dmg_initial)\
        }\
      ]\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"equip_dmg_amount",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.equip_dmg_amount",\
        "fallback":"Equipment Damage Amount"\
      },\
        "label_format": "options.percent_value",\
        "start":1,\
        "end":100,\
        "step":1,\
        "initial":$(equip_dmg_amount_initial)\
    },\
    {\
      "type":"minecraft:single_option",\
      "key":"keepinv_type",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.keepinv_type",\
        "fallback":"Keep Inventory Type"\
      },\
      "options":[\
        {\
          "id":"hotbar",\
          "display":{\
            "translate":"option.keepinv.keepinv_type.hotbar",\
            "fallback":"Hotbar"\
          },\
          "initial":$(keepinv_type_hotbar_initial)\
        },\
        {\
          "id":"none",\
          "display":{\
            "translate":"option.keepinv.keepinv_type.none",\
            "fallback":"None"\
          },\
          "initial":$(keepinv_type_none_initial)\
        },\
        {\
          "id":"taglist",\
          "display":{\
            "translate":"option.keepinv.keepinv_type.taglist",\
            "fallback":"Tag List"\
          },\
          "initial":$(keepinv_type_taglist_initial)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:text",\
      "key": "non_droppable_tag_list",\
      "width": 256,\
      "label": {\
        "translate": "option.keepinv.non_droppable_tag_list",\
        "fallback":"Non-droppable Item Tag List"\
      },\
      "initial": "$(non_droppable_tag_list)",\
      "max_length": 1024\
    }\
  ],\
  "can_close_with_escape":true,\
  "pause":true,\
  "after_action":"close",\
  "external_title": {\
    "translate": "menu.keepinv.title",\
    "fallback":"Nice Keep Inventory: Settings"\
  },\
  "title": {\
    "translate": "menu.keepinv.title",\
    "fallback":"Nice Keep Inventory: Settings"\
  },\
  "yes":{\
    "label":{\
      "translate":"option.keepinv.confirm",\
      "fallback":"Confirm"\
    },\
    "action":{\
      "type":"minecraft:dynamic/run_command",\
      "template":"$(command_template)"\
    }\
  },\
  "no": {\
    "label": {\
      "translate": "option.keepinv.back",\
      "fallback":"Back"\
    },\
    "action": {\
      "type": "minecraft:show_dialog",\
      "dialog": "keepinv:config/main"\
    }\
  }\
}