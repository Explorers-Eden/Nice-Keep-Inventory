$dialog show @s \
{\
  "type":"minecraft:confirmation",\
  "inputs":[\
    {\
      "type":"minecraft:single_option",\
      "key":"grave_status",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.grave_status"\
      },\
      "options":[\
        {\
          "id":"enabled",\
          "display":{\
            "translate":"option.keepinv.enabled",\
            "color":"green"\
          }\
        },\
        {\
          "id":"disabled",\
          "display":{\
            "translate":"option.keepinv.disabled",\
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
        "translate":"option.keepinv.grave_duration"\
      },\
        "start":1,\
        "end":60,\
        "step":1,\
        "initial":$(grave_duration)\
    },\
    {\
      "type":"minecraft:single_option",\
      "key":"grave_type",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.grave_type"\
      },\
      "options":[\
        {\
          "id":"random",\
          "display":{\
            "translate":"option.keepinv.grave_type.random"\
          }\
        },\
        {\
          "id":"skull",\
          "display":{\
            "translate":"option.keepinv.grave_type.skull"\
          },\
          "initial":$(grave_type_skull_initial)\
        },\
        {\
          "id":"player_head",\
          "display":{\
            "translate":"option.keepinv.grave_type.player_head"\
          },\
          "initial":$(grave_type_player_head_initial)\
        },\
        {\
          "id":"candle",\
          "display":{\
            "translate":"option.keepinv.grave_type.candle"\
          },\
          "initial":$(grave_type_candle_initial)\
        },\
        {\
          "id":"tombstone",\
          "display":{\
            "translate":"option.keepinv.grave_type.tombstone"\
          },\
          "initial":$(grave_type_tombstone_initial)\
        },\
        {\
          "id":"bundle",\
          "display":{\
            "translate":"option.keepinv.grave_type.bundle"\
          },\
          "initial":$(grave_type_bundle_initial)\
        },\
        {\
          "id":"chest",\
          "display":{\
            "translate":"option.keepinv.grave_type.chest"\
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
        "translate":"option.keepinv.player_head_drop"\
      },\
      "options":[\
        {\
          "id":"enabled",\
          "display":{\
            "translate":"option.keepinv.enabled",\
            "color":"green"\
          }\
        },\
        {\
          "id":"disabled",\
          "display":{\
            "translate":"option.keepinv.disabled",\
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
        "translate":"option.keepinv.player_head_drop_chance"\
      },\
        "label_format": "options.percent_value",\
        "start":0,\
        "end":100,\
        "step":1,\
        "initial":$(player_head_drop_chance_initial)\
    },\
    {\
      "type":"minecraft:single_option",\
      "key":"exp_loss",\
      "width": 256,\
      "label":{\
        "translate":"option.keepinv.exp_loss"\
      },\
      "options":[\
        {\
          "id":"enabled",\
          "display":{\
            "translate":"option.keepinv.enabled",\
            "color":"green"\
          }\
        },\
        {\
          "id":"disabled",\
          "display":{\
            "translate":"option.keepinv.disabled",\
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
        "translate":"option.keepinv.exp_loss_amount"\
      },\
        "label_format": "options.percent_value",\
        "start":0,\
        "end":100,\
        "step":1,\
        "initial":$(exp_loss_amount_initial)\
    },\
    {\
      "type": "minecraft:text",\
      "key": "non_droppable_tag_list",\
      "width": 256,\
      "label": {\
        "translate": "option.keepinv.non_droppable_tag_list"\
      },\
      "initial": "$(non_droppable_tag_list)",\
      "max_length": 1024\
    }\
  ],\
  "can_close_with_escape":true,\
  "pause":true,\
  "after_action":"close",\
  "external_title": {\
    "translate": "menu.keepinv.title"\
  },\
  "title": {\
    "translate": "menu.keepinv.title"\
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
  "no":{\
    "label":{\
      "translate":"mco.selectServer.close"\
    }\
  }\
}