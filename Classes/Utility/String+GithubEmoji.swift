//
//  String+GithubEmoji.swift
//  Freetime
//
//  Created by Ehud Adler on 3/11/19.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import Foundation

private let githubEmojiMapping =
[
    ":small_red_triangle_down:": "🔻",
    ":small_red_triangle:": "🔺",
    ":small_orange_diamond:": "🔸",
    ":small_blue_diamond:": "🔹",
    ":large_orange_diamond:": "🔶",
    ":large_blue_diamond:": "🔷",
    ":large_blue_circle:": "🔵",
    ":red_circle:": "🔴",
    ":white_circle:": "⚪️",
    ":black_circle:": "⚫️",
    ":white_square_button:": "🔳",
    ":black_square_button:": "🔲",
    ":white_check_mark:": "✅",
    ":white_square:": ":white_square:",
    ":black_square:": ":black_square:",
    ":trident:": "🔱",
    ":part_alternation_mark:": "〽️",
    ":wavy_dash:": "〰️",
    ":curly_loop:": "➰",
    ":link:": "🔗",
    ":radio_button:": "🔘",
    ":ballot_box_with_check:": "☑️",
    ":heavy_check_mark:": "✔️",
    ":100:": "💯",
    ":white_flower:": "💮",
    ":heavy_division_sign:": "➗",
    ":heavy_minus_sign:": "➖",
    ":heavy_plus_sign:": "➕",
    ":heavy_multiplication_x:": "✖️",
    ":o:": "⭕️",
    ":interrobang:": "⁉️",
    ":bangbang:": "‼️",
    ":heavy_exclamation_mark:": "❗️",
    ":x:": "❌",
    ":tm:": "™️",
    ":registered:": "®️",
    ":copyright:": "©️",
    ":heavy_dollar_sign:": "💲",
    ":clock930:": "🕤",
    ":clock9:": "🕘",
    ":clock830:": "🕣",
    ":clock8:": "🕗",
    ":clock730:": "🕢",
    ":clock7:": "🕖",
    ":clock630:": "🕡",
    ":clock6:": "🕕",
    ":clock530:": "🕠",
    ":clock5:": "🕔",
    ":clock430:": "🕟",
    ":clock4:": "🕓",
    ":clock330:": "🕞",
    ":clock3:": "🕒",
    ":clock230:": "🕝",
    ":clock2:": "🕑",
    ":clock1230:": "🕧",
    ":clock12:": "🕛",
    ":clock1130:": "🕦",
    ":clock11:": "🕚",
    ":clock1030:": "🕥",
    ":clock10:": "🕙",
    ":clock130:": "🕜",
    ":clock1:": "🕐",
    ":soon:": "🔜",
    ":on:": "🔛",
    ":end:": "🔚",
    ":recycle:": "♻️",
    ":diamond_shape_with_a_dot_inside:": "💠",
    ":o2:": "🅾️",
    ":ab:": "🆎",
    ":b:": "🅱️",
    ":a:": "🅰️",
    ":negative_squared_cross_mark:": "❎",
    ":six_pointed_star:": "🔯",
    ":ophiuchus:": "⛎",
    ":pisces:": "♓️",
    ":aquarius:": "♒️",
    ":capricorn:": "♑️",
    ":sagittarius:": "♐️",
    ":scorpius:": "♏️",
    ":libra:": "♎️",
    ":virgo:": "♍️",
    ":leo:": "♌️",
    ":cancer:": "♋️",
    ":gemini:": "♊️",
    ":taurus:": "♉️",
    ":aries:": "♈️",
    ":currency_exchange:": "💱",
    ":chart:": "💹",
    ":mobile_phone_off:": "📴",
    ":vibration_mode:": "📳",
    ":vs:": "🆚",
    ":heart_decoration:": "💟",
    ":eight_pointed_black_star:": "✴️",
    ":eight_spoked_asterisk:": "✳️",
    ":no_entry:": "⛔️",
    ":children_crossing:": "🚸",
    ":no_pedestrians:": "🚷",
    ":no_bicycles:": "🚳",
    ":non-potable_water:": "🚱",
    ":do_not_litter:": "🚯",
    ":no_mobile_phones:": "📵",
    ":underage:": "🔞",
    ":no_entry_sign:": "🚫",
    ":id:": "🆔",
    ":sos:": "🆘",
    ":cl:": "🆑",
    ":ideograph_advantage:": "🉐",
    ":customs:": "🛃",
    ":left_luggage:": "🛅",
    ":passport_control:": "🛂",
    ":m:": "Ⓜ️",
    ":congratulations:": "㊗️",
    ":secret:": "㊙️",
    ":put_litter_in_its_place:": "🚮",
    ":potable_water:": "🚰",
    ":wc:": "🚾",
    ":accept:": "🉑",
    ":baggage_claim:": "🛄",
    ":metro:": "🚇",
    ":wheelchair:": "♿️",
    ":parking:": "🅿️",
    ":no_smoking:": "🚭",
    ":baby_symbol:": "🚼",
    ":womens:": "🚺",
    ":mens:": "🚹",
    ":restroom:": "🚻",
    ":sa:": "🈂️",
    ":u7981:": "🈲",
    ":u7a7a:": "🈳",
    ":u7533:": "🈸",
    ":u7121:": "🈚️",
    ":u6e80:": "🈵",
    ":u6709:": "🈶",
    ":u6708:": "🈷️",
    ":u6307:": "🈯️",
    ":u55b6:": "🈺",
    ":u5408:": "🈴",
    ":u5272:": "🈹",
    ":signal_strength:": "📶",
    ":koko:": "🈁",
    ":cinema:": "🎦",
    ":ng:": "🆖",
    ":free:": "🆓",
    ":cool:": "🆒",
    ":up:": "🆙",
    ":top:": "🔝",
    ":new:": "🆕",
    ":repeat_one:": "🔂",
    ":repeat:": "🔁",
    ":twisted_rightwards_arrows:": "🔀",
    ":ok:": "🆗",
    ":information_source:": "ℹ️",
    ":fast_forward:": "⏩",
    ":rewind:": "⏪",
    ":arrows_counterclockwise:": "🔄",
    ":arrows_clockwise:": "🔃",
    ":arrow_up_small:": "🔼",
    ":arrow_up_down:": "↕️",
    ":left_right_arrow:": "↔️",
    ":arrow_right_hook:": "↪️",
    ":leftwards_arrow_with_hook:": "↩️",
    ":arrow_heading_up:": "⤴️",
    ":arrow_heading_down:": "⤵️",
    ":arrow_down_small:": "🔽",
    ":arrow_double_up:": "⏫",
    ":arrow_double_down:": "⏬",
    ":arrow_upper_right:": "↗️",
    ":arrow_upper_left:": "↖️",
    ":arrow_up:": "⬆️",
    ":arrow_right:": "➡️",
    ":arrow_lower_right:": "↘️",
    ":arrow_lower_left:": "↙️",
    ":abc:": "🔤",
    ":abcd:": "🔡",
    ":capital_abcd:": "🔠",
    ":arrow_left:": "⬅️",
    ":arrow_forward:": "▶️",
    ":arrow_down:": "⬇️",
    ":arrow_backward:": "◀️",
    ":symbols:": "🔣",
    ":hash:": "#️⃣",
    ":zero:": "0️⃣",
    ":1234:": "🔢",
    ":keycap_ten:": "🔟",
    ":nine:": "9️⃣",
    ":eight:": "8️⃣",
    ":seven:": "7️⃣",
    ":six:": "6️⃣",
    ":five:": "5️⃣",
    ":four:": "4️⃣",
    ":three:": "3️⃣",
    ":two:": "2️⃣",
    ":one:": "1️⃣",
    ":de:": "🇩🇪",
    ":uk:": "🇬🇧",
    ":gb:": "🇬🇧",
    ":ru:": "🇷🇺",
    ":it:": "🇮🇹",
    ":es:": "🇪🇸",
    ":fr:": "🇫🇷",
    ":us:": "🇺🇸",
    ":cn:": "🇨🇳",
    ":kr:": "🇰🇷",
    ":jp:": "🇯🇵",
    ":triangular_flag_on_post:": "🚩",
    ":round_pushpin:": "📍",
    ":performing_arts:": "🎭",
    ":circus_tent:": "🎪",
    ":moyai:": "🗿",
    ":izakaya_lantern:": "🏮",
    ":crossed_flags:": "🎌",
    ":checkered_flag:": "🏁",
    ":hotsprings:": "♨️",
    ":barber:": "💈",
    ":busstop:": "🚏",
    ":slot_machine:": "🎰",
    ":atm:": "🏧",
    ":beginner:": "🔰",
    ":construction:": "🚧",
    ":warning:": "⚠️",
    ":traffic_light:": "🚥",
    ":vertical_traffic_light:": "🚦",
    ":fuelpump:": "⛽️",
    ":ticket:": "🎫",
    ":trolleybus:": "🚎",
    ":railway_car:": "🚃",
    ":monorail:": "🚝",
    ":light_rail:": "🚈",
    ":bullettrain_side:": "🚄",
    ":bullettrain_front:": "🚅",
    ":train2:": "🚆",
    ":station:": "🚉",
    ":train:": "🚋",
    ":truck:": "🚚",
    ":minibus:": "🚐",
    ":ambulance:": "🚑",
    ":fire_engine:": "🚒",
    ":oncoming_police_car:": "🚔",
    ":police_car:": "🚓",
    ":rotating_light:": "🚨",
    ":oncoming_bus:": "🚍",
    ":bus:": "🚌",
    ":articulated_lorry:": "🚛",
    ":oncoming_taxi:": "🚖",
    ":taxi:": "🚕",
    ":red_car:": "🚗",
    ":car:": "🚗",
    ":oncoming_automobile:": "🚘",
    ":blue_car:": "🚙",
    ":tractor:": "🚜",
    ":mountain_cableway:": "🚠",
    ":suspension_railway:": "🚟",
    ":aerial_tramway:": "🚡",
    ":bike:": "🚲",
    ":mountain_railway:": "🚞",
    ":tram:": "🚊",
    ":steam_locomotive:": "🚂",
    ":helicopter:": "🚁",
    ":airplane:": "✈️",
    ":rocket:": "🚀",
    ":anchor:": "⚓️",
    ":rowboat:": "🚣",
    ":sailboat:": "⛵️",
    ":boat:": "⛵️",
    ":speedboat:": "🚤",
    ":ship:": "🚢",
    ":roller_coaster:": "🎢",
    ":fountain:": "⛲️",
    ":ferris_wheel:": "🎡",
    ":rainbow:": "🌈",
    ":carousel_horse:": "🎠",
    ":bridge_at_night:": "🌉",
    ":statue_of_liberty:": "🗽",
    ":stars:": "🌠",
    ":sunrise:": "🌅",
    ":sunrise_over_mountains:": "🌄",
    ":mount_fuji:": "🗻",
    ":japan:": "🗾",
    ":tokyo_tower:": "🗼",
    ":factory:": "🏭",
    ":tent:": "⛺️",
    ":european_castle:": "🏰",
    ":japanese_castle:": "🏯",
    ":city_sunset:": "🌆",
    ":city_sunrise:": "🌇",
    ":european_post_office:": "🏤",
    ":department_store:": "🏬",
    ":church:": "⛪️",
    ":wedding:": "💒",
    ":hotel:": "🏨",
    ":love_hotel:": "🏩",
    ":convenience_store:": "🏪",
    ":bank:": "🏦",
    ":hospital:": "🏥",
    ":post_office:": "🏣",
    ":office:": "🏢",
    ":school:": "🏫",
    ":house_with_garden:": "🏡",
    ":house:": "🏠",
    ":corn:": "🌽",
    ":tomato:": "🍅",
    ":eggplant:": "🍆",
    ":sweet_potato:": "🍠",
    ":pineapple:": "🍍",
    ":pear:": "🍐",
    ":banana:": "🍌",
    ":melon:": "🍈",
    ":peach:": "🍑",
    ":strawberry:": "🍓",
    ":watermelon:": "🍉",
    ":grapes:": "🍇",
    ":cherries:": "🍒",
    ":lemon:": "🍋",
    ":tangerine:": "🍊",
    ":green_apple:": "🍏",
    ":apple:": "🍎",
    ":honey_pot:": "🍯",
    ":lollipop:": "🍭",
    ":candy:": "🍬",
    ":chocolate_bar:": "🍫",
    ":cookie:": "🍪",
    ":cake:": "🍰",
    ":birthday:": "🎂",
    ":shaved_ice:": "🍧",
    ":ice_cream:": "🍨",
    ":icecream:": "🍦",
    ":custard:": "🍮",
    ":doughnut:": "🍩",
    ":bread:": "🍞",
    ":egg:": "🥚",
    ":dango:": "🍡",
    ":oden:": "🍢",
    ":stew:": "🍲",
    ":ramen:": "🍜",
    ":rice:": "🍚",
    ":rice_cracker:": "🍘",
    ":rice_ball:": "🍙",
    ":fish_cake:": "🍥",
    ":sushi:": "🍣",
    ":bento:": "🍱",
    ":fried_shrimp:": "🍤",
    ":curry:": "🍛",
    ":spaghetti:": "🍝",
    ":meat_on_bone:": "🍖",
    ":poultry_leg:": "🍗",
    ":fries:": "🍟",
    ":hamburger:": "🍔",
    ":pizza:": "🍕",
    ":fork_and_knife:": "🍴",
    ":wine_glass:": "🍷",
    ":tropical_drink:": "🍹",
    ":cocktail:": "🍸",
    ":beers:": "🍻",
    ":beer:": "🍺",
    ":baby_bottle:": "🍼",
    ":sake:": "🍶",
    ":tea:": "🍵",
    ":coffee:": "☕️",
    ":fishing_pole_and_fish:": "🎣",
    ":eyeglasses:": "👓",
    ":purse:": "👛",
    ":pouch:": "👝",
    ":handbag:": "👜",
    ":briefcase:": "💼",
    ":closed_umbrella:": "🌂",
    ":mans_shoe:": "👞",
    ":womans_hat:": "👒",
    ":crown:": "👑",
    ":tophat:": "🎩",
    ":ribbon:": "🎀",
    ":bikini:": "👙",
    ":kimono:": "👘",
    ":jeans:": "👖",
    ":running_shirt_with_sash:": "🎽",
    ":dress:": "👗",
    ":womans_clothes:": "👚",
    ":necktie:": "👔",
    ":tshirt:": "👕",
    ":shirt:": "👕",
    ":boot:": "👢",
    ":lipstick:": "💄",
    ":high_heel:": "👠",
    ":sandal:": "👡",
    ":shoe:": "👞",
    ":guitar:": "🎸",
    ":saxophone:": "🎷",
    ":trumpet:": "🎺",
    ":headphones:": "🎧",
    ":microphone:": "🎤",
    ":art:": "🎨",
    ":book:": "📖",
    ":pencil:": "📝",
    ":memo:": "📝",
    ":clapper:": "🎬",
    ":mahjong:": "🀄️",
    ":dart:": "🎯",
    ":game_die:": "🎲",
    ":flower_playing_cards:": "🎴",
    ":black_joker:": "🃏",
    ":video_game:": "🎮",
    ":space_invader:": "👾",
    ":violin:": "🎻",
    ":musical_keyboard:": "🎹",
    ":musical_score:": "🎼",
    ":trophy:": "🏆",
    ":ring:": "💍",
    ":gem:": "💎",
    ":diamonds:": "♦️",
    ":clubs:": "♣️",
    ":hearts:": "♥️",
    ":spades:": "♠️",
    ":ski:": "🎿",
    ":surfer:": "🏄",
    ":swimmer:": "🏊",
    ":snowboarder:": "🏂",
    ":horse_racing:": "🏇",
    ":bicyclist:": "🚴",
    ":mountain_bicyclist:": "🚵",
    ":golf:": "⛳️",
    ":bowling:": "🎳",
    ":rugby_football:": "🏉",
    ":8ball:": "🎱",
    ":tennis:": "🎾",
    ":baseball:": "⚾️",
    ":soccer:": "⚽️",
    ":basketball:": "🏀",
    ":football:": "🏈",
    ":newspaper:": "📰",
    ":telescope:": "🔭",
    ":microscope:": "🔬",
    ":name_badge:": "📛",
    ":bookmark:": "🔖",
    ":books:": "📚",
    ":ledger:": "📒",
    ":notebook_with_decorative_cover:": "📔",
    ":notebook:": "📓",
    ":orange_book:": "📙",
    ":blue_book:": "📘",
    ":green_book:": "📗",
    ":closed_book:": "📕",
    ":triangular_ruler:": "📐",
    ":straight_ruler:": "📏",
    ":pencil2:": "✏️",
    ":black_nib:": "✒️",
    ":paperclip:": "📎",
    ":pushpin:": "📌",
    ":scissors:": "✂️",
    ":open_file_folder:": "📂",
    ":file_folder:": "📁",
    ":card_index:": "📇",
    ":date:": "📅",
    ":calendar:": "📆",
    ":clipboard:": "📋",
    ":scroll:": "📜",
    ":chart_with_downwards_trend:": "📉",
    ":chart_with_upwards_trend:": "📈",
    ":bar_chart:": "📊",
    ":bookmark_tabs:": "📑",
    ":page_with_curl:": "📃",
    ":page_facing_up:": "📄",
    ":syringe:": "💉",
    ":pill:": "💊",
    ":hocho:": "🔪",
    ":gun:": "🔫",
    ":bomb:": "💣",
    ":smoking:": "🚬",
    ":door:": "🚪",
    ":mailbox_with_no_mail:": "📭",
    ":mailbox_with_mail:": "📬",
    ":mailbox_closed:": "📪",
    ":postal_horn:": "📯",
    ":incoming_envelope:": "📨",
    ":envelope:": "✉️",
    ":outbox_tray:": "📤",
    ":inbox_tray:": "📥",
    ":e-mail:": "📧",
    ":money_with_wings:": "💸",
    ":credit_card:": "💳",
    ":euro:": "💶",
    ":pound:": "💷",
    ":dollar:": "💵",
    ":yen:": "💴",
    ":moneybag:": "💰",
    ":seat:": "💺",
    ":hammer:": "🔨",
    ":nut_and_bolt:": "🔩",
    ":wrench:": "🔧",
    ":toilet:": "🚽",
    ":shower:": "🚿",
    ":bathtub:": "🛁",
    ":bath:": "🛀",
    ":postbox:": "📮",
    ":mailbox:": "📫",
    ":email:": "✉️",
    ":calling:": "📲",
    ":battery:": "🔋",
    ":electric_plug:": "🔌",
    ":low_brightness:": "🔅",
    ":high_brightness:": "🔆",
    ":flashlight:": "🔦",
    ":bulb:": "💡",
    ":key:": "🔑",
    ":closed_lock_with_key:": "🔐",
    ":lock_with_ink_pen:": "🔏",
    ":lock:": "🔒",
    ":unlock:": "🔓",
    ":mag_right:": "🔎",
    ":mag:": "🔍",
    ":loop:": "➿",
    ":satellite:": "📡",
    ":radio:": "📻",
    ":watch:": "⌚️",
    ":alarm_clock:": "⏰",
    ":hourglass_flowing_sand:": "⏳",
    ":hourglass:": "⌛️",
    ":mega:": "📣",
    ":loudspeaker:": "📢",
    ":mute:": "🔇",
    ":speaker:": "🔈",
    ":sound:": "🔉",
    ":vhs:": "📼",
    ":minidisc:": "💽",
    ":fax:": "📠",
    ":pager:": "📟",
    ":telephone_receiver:": "📞",
    ":telephone:": "☎️",
    ":phone:": "☎️",
    ":iphone:": "📱",
    ":tv:": "📺",
    ":computer:": "💻",
    ":movie_camera:": "🎥",
    ":video_camera:": "📹",
    ":camera:": "📷",
    ":floppy_disk:": "💾",
    ":dvd:": "📀",
    ":cd:": "💿",
    ":crystal_ball:": "🔮",
    ":balloon:": "🎈",
    ":confetti_ball:": "🎊",
    ":tada:": "🎉",
    ":tanabata_tree:": "🎋",
    ":no_bell:": "🔕",
    ":bell:": "🔔",
    ":gift:": "🎁",
    ":christmas_tree:": "🎄",
    ":santa:": "🎅",
    ":ghost:": "👻",
    ":jack_o_lantern:": "🎃",
    ":rice_scene:": "🎑",
    ":wind_chime:": "🎐",
    ":sparkler:": "🎇",
    ":fireworks:": "🎆",
    ":flags:": "🎏",
    ":mortar_board:": "🎓",
    ":school_satchel:": "🎒",
    ":dolls:": "🎎",
    ":gift_heart:": "💝",
    ":bamboo:": "🎍",
    ":octocat:": ":octocat:",
    ":partly_sunny:": "⛅️",
    ":milky_way:": "🌌",
    ":volcano:": "🌋",
    ":earth_asia:": "🌏",
    ":earth_americas:": "🌎",
    ":earth_africa:": "🌍",
    ":moon:": "🌔",
    ":first_quarter_moon_with_face:": "🌛",
    ":last_quarter_moon_with_face:": "🌜",
    ":waning_crescent_moon:": "🌘",
    ":last_quarter_moon:": "🌗",
    ":waning_gibbous_moon:": "🌖",
    ":full_moon:": "🌕",
    ":waxing_gibbous_moon:": "🌔",
    ":first_quarter_moon:": "🌓",
    ":waxing_crescent_moon:": "🌒",
    ":new_moon:": "🌑",
    ":new_moon_with_face:": "🌚",
    ":full_moon_with_face:": "🌝",
    ":sun_with_face:": "🌞",
    ":globe_with_meridians:": "🌐",
    ":shell:": "🐚",
    ":ear_of_rice:": "🌾",
    ":blossom:": "🌼",
    ":seedling:": "🌱",
    ":chestnut:": "🌰",
    ":deciduous_tree:": "🌳",
    ":evergreen_tree:": "🌲",
    ":palm_tree:": "🌴",
    ":cactus:": "🌵",
    ":mushroom:": "🍄",
    ":herb:": "🌿",
    ":fallen_leaf:": "🍂",
    ":leaves:": "🍃",
    ":maple_leaf:": "🍁",
    ":hibiscus:": "🌺",
    ":sunflower:": "🌻",
    ":rose:": "🌹",
    ":four_leaf_clover:": "🍀",
    ":tulip:": "🌷",
    ":cherry_blossom:": "🌸",
    ":bouquet:": "💐",
    ":paw_prints:": "🐾",
    ":poodle:": "🐩",
    ":cat2:": "🐈",
    ":leopard:": "🐆",
    ":dromedary_camel:": "🐪",
    ":crocodile:": "🐊",
    ":blowfish:": "🐡",
    ":dragon_face:": "🐲",
    ":ox:": "🐂",
    ":mouse2:": "🐁",
    ":pig2:": "🐖",
    ":dog2:": "🐕",
    ":rooster:": "🐓",
    ":goat:": "🐐",
    ":dragon:": "🐉",
    ":rabbit2:": "🐇",
    ":tiger2:": "🐅",
    ":water_buffalo:": "🐃",
    ":rat:": "🐀",
    ":ram:": "🐏",
    ":cow2:": "🐄",
    ":dolphin:": "🐬",
    ":whale2:": "🐋",
    ":whale:": "🐳",
    ":fish:": "🐟",
    ":tropical_fish:": "🐠",
    ":octopus:": "🐙",
    ":snail:": "🐌",
    ":beetle:": "🐞",
    ":ant:": "🐜",
    ":honeybee:": "🐝",
    ":bug:": "🐛",
    ":turtle:": "🐢",
    ":penguin:": "🐧",
    ":chicken:": "🐔",
    ":hatching_chick:": "🐣",
    ":hatched_chick:": "🐥",
    ":baby_chick:": "🐤",
    ":bird:": "🐦",
    ":snake:": "🐍",
    ":panda_face:": "🐼",
    ":elephant:": "🐘",
    ":sheep:": "🐑",
    ":camel:": "🐫",
    ":racehorse:": "🐎",
    ":horse:": "🐴",
    ":monkey:": "🐒",
    ":monkey_face:": "🐵",
    ":boar:": "🐗",
    ":cow:": "🐮",
    ":pig_nose:": "🐽",
    ":pig:": "🐷",
    ":bear:": "🐻",
    ":koala:": "🐨",
    ":tiger:": "🐯",
    ":frog:": "🐸",
    ":wolf:": "🐺",
    ":rabbit:": "🐰",
    ":hamster:": "🐹",
    ":mouse:": "🐭",
    ":dog:": "🐶",
    ":cat:": "🐱",
    ":ocean:": "🌊",
    ":foggy:": "🌁",
    ":cyclone:": "🌀",
    ":zap:": "⚡️",
    ":snowman:": "⛄️",
    ":snowflake:": "❄️",
    ":cloud:": "☁️",
    ":umbrella:": "☔️",
    ":sunny:": "☀️",
    ":thought_balloon:": "💭",
    ":speech_balloon:": "💬",
    ":busts_in_silhouette:": "👥",
    ":bust_in_silhouette:": "👤",
    ":love_letter:": "💌",
    ":tongue:": "👅",
    ":nose:": "👃",
    ":eyes:": "👀",
    ":ear:": "👂",
    ":droplet:": "💧",
    ":kiss:": "💋",
    ":lips:": "👄",
    ":feet:": "🐾",
    ":skull:": "💀",
    ":guardsman:": "💂",
    ":speak_no_evil:": "🙊",
    ":hear_no_evil:": "🙉",
    ":see_no_evil:": "🙈",
    ":japanese_goblin:": "👺",
    ":japanese_ogre:": "👹",
    ":pouting_cat:": "😾",
    ":joy_cat:": "😹",
    ":crying_cat_face:": "😿",
    ":scream_cat:": "🙀",
    ":smirk_cat:": "😼",
    ":kissing_cat:": "😽",
    ":heart_eyes_cat:": "😻",
    ":smile_cat:": "😸",
    ":smiley_cat:": "😺",
    ":princess:": "👸",
    ":angel:": "👼",
    ":cop:": "👮",
    ":construction_worker:": "👷",
    ":man_with_turban:": "👳",
    ":man_with_gua_pi_mao:": "👲",
    ":person_with_blond_hair:": "👱",
    ":older_man:": "👴",
    ":older_woman:": "👵",
    ":baby:": "👶",
    ":man:": "👨",
    ":woman:": "👩",
    ":girl:": "👧",
    ":boy:": "👦",
    ":nail_care:": "💅",
    ":haircut:": "💇",
    ":massage:": "💆",
    ":couple_with_heart:": "💑",
    ":bow:": "🙇",
    ":person_frowning:": "🙍",
    ":person_with_pouting_face:": "🙎",
    ":bride_with_veil:": "👰",
    ":raising_hand:": "🙋",
    ":information_desk_person:": "💁",
    ":no_good:": "🙅",
    ":ok_woman:": "🙆",
    ":dancers:": "👯",
    ":dancer:": "💃",
    ":two_women_holding_hands:": "👭",
    ":two_men_holding_hands:": "👬",
    ":family:": "👪",
    ":couple:": "👫",
    ":running:": "🏃",
    ":runner:": "🏃",
    ":walking:": "🚶",
    ":fu:": "🖕",
    ":metal:": "🤘",
    ":muscle:": "💪",
    ":clap:": "👏",
    ":point_up_2:": "👆",
    ":pray:": "🙏",
    ":raised_hands:": "🙌",
    ":point_right:": "👉",
    ":point_left:": "👈",
    ":point_down:": "👇",
    ":point_up:": "☝️",
    ":open_hands:": "👐",
    ":raised_hand:": "✋",
    ":hand:": "✋",
    ":wave:": "👋",
    ":v:": "✌️",
    ":fist:": "✊",
    ":facepunch:": "👊",
    ":punch:": "👊",
    ":ok_hand:": "👌",
    ":thumbsdown:": "👎",
    ":-1:": "👎",
    ":thumbsup:": "👍",
    ":+1:": "👍",
    ":shit:": "💩",
    ":poop:": "💩",
    ":hankey:": "💩",
    ":fire:": "🔥",
    ":musical_note:": "🎵",
    ":notes:": "🎶",
    ":sweat_drops:": "💦",
    ":dash:": "💨",
    ":zzz:": "💤",
    ":grey_question:": "❔",
    ":grey_exclamation:": "❕",
    ":question:": "❓",
    ":exclamation:": "❗️",
    ":anger:": "💢",
    ":collision:": "💥",
    ":boom:": "💥",
    ":dizzy:": "💫",
    ":star2:": "🌟",
    ":star:": "⭐️",
    ":sparkles:": "✨",
    ":sparkling_heart:": "💖",
    ":cupid:": "💘",
    ":revolving_hearts:": "💞",
    ":two_hearts:": "💕",
    ":heartpulse:": "💗",
    ":heartbeat:": "💓",
    ":broken_heart:": "💔",
    ":green_heart:": "💚",
    ":heart:": "❤️",
    ":purple_heart:": "💜",
    ":blue_heart:": "💙",
    ":yellow_heart:": "💛",
    ":alien:": "👽",
    ":innocent:": "😇",
    ":no_mouth:": "😶",
    ":neutral_face:": "😐",
    ":smiling_imp:": "😈",
    ":imp:": "👿",
    ":dizzy_face:": "😵",
    ":sunglasses:": "😎",
    ":mask:": "😷",
    ":yum:": "😋",
    ":sleepy:": "😪",
    ":triumph:": "😤",
    ":rage:": "😡",
    ":angry:": "😠",
    ":tired_face:": "😫",
    ":neckbeard:": ":neckbeard:",
    ":scream:": "😱",
    ":astonished:": "😲",
    ":joy:": "😂",
    ":sob:": "😭",
    ":cry:": "😢",
    ":persevere:": "😣",
    ":cold_sweat:": "😰",
    ":fearful:": "😨",
    ":confounded:": "😖",
    ":disappointed:": "😞",
    ":pensive:": "😔",
    ":weary:": "😩",
    ":disappointed_relieved:": "😥",
    ":sweat:": "😓",
    ":sweat_smile:": "😅",
    ":unamused:": "😒",
    ":expressionless:": "😑",
    ":hushed:": "😯",
    ":confused:": "😕",
    ":grimacing:": "😬",
    ":open_mouth:": "😮",
    ":anguished:": "😧",
    ":frowning:": "😦",
    ":worried:": "😟",
    ":sleeping:": "😴",
    ":stuck_out_tongue:": "😛",
    ":kissing_smiling_eyes:": "😙",
    ":kissing:": "😗",
    ":grinning:": "😀",
    ":stuck_out_tongue_closed_eyes:": "😝",
    ":stuck_out_tongue_winking_eye:": "😜",
    ":wink:": "😉",
    ":grin:": "😁",
    ":satisfied:": "😆",
    ":relieved:": "😌",
    ":flushed:": "😳",
    ":kissing_closed_eyes:": "😚",
    ":kissing_heart:": "😘",
    ":heart_eyes:": "😍",
    ":smirk:": "😏",
    ":relaxed:": "☺️",
    ":smiley:": "😃",
    ":blush:": "😊",
    ":laughing:": "😆",
    ":smile:": "😄"
]
extension String {
    @discardableResult
    mutating func githubEmojify() -> String {
        let regex = NSRegularExpression(".*(:.*:).*")
        if let match = regex.firstMatch(in: self, range: NSMakeRange(0, self.count)) {
            var groups = match.groups(originalString: self)
            // Remove the full string
            groups.removeFirst()
            for match in Set(groups) {
                self = self.replacingOccurrences(of: match, with: githubEmojiMapping[match] ?? match)
            }
        }
        return self
    }
}
