/**
 * Color settings.
 * Настройки цветов.
 */
{
  // Color values for substitutions.
  // Значения цветов для подстановок.
  "def": {
    "al": "0x96FF00", // ally       / союзник
    "sq": "0xFFB964", // squadman   / взводный
    "tk": "0x00EAFF", // teamKiller / тимкиллер
    "en": "0xF50800", // enemy      / противник
    "pl": "0xFFDD33", // player     / игрок
    // Dynamic color by various statistical parameters.
    // Динамический цвет по различным статистическим показателям.
    "colorRating": {
      "very_bad":     "0xFE0E00",   // very bad   / очень плохо
      "bad":          "0xFE7903",   // bad        / плохо
      "normal":       "0xF8F400",   // normal     / средне
      "good":         "0x60FF00",   // good       / хорошо
      "very_good":    "0x02C9B3",   // very good  / очень хорошо
      "unique":       "0xD042F3"    // unique     / уникально
    },
    // Dynamic color by remaining health points.
    // Динамический цвет по оставшемуся запасу прочности.
    "colorHP": {
      "very_low":         "0xFF0000",   // very low       / очень низкий
      "low":              "0xDD4444",   // low            / низкий
      "average":          "0xFFCC22",   // average        / средний
      "above_average":    "0xFCFCFC"    // above-average  / выше среднего
    }
  },
  "colors": {
    // System colors.
    // Системные цвета.
    "system": {
      // Format: object_state
      // Object:      ally, squadman, teamKiller, enemy
      // State:       alive, dead, blowedup
      // ----
      // Формат: объект_состояние
      // Объект:      ally - союзник, squadman - взводный, teamKiller - тимкиллер, enemy - противник
      // Состояние:   alive - живой, dead - мертвый, blowedup - взорвана боеукладка
      "ally_alive":          ${"def.al"},
      "ally_dead":           "0x009900",
      "ally_blowedup":       "0x007700",
      "squadman_alive":      ${"def.sq"},
      "squadman_dead":       "0xCA7000",
      "squadman_blowedup":   "0xA45A00",
      "teamKiller_alive":    ${"def.tk"},
      "teamKiller_dead":     "0x097783",
      "teamKiller_blowedup": "0x096A75",
      "enemy_alive":         ${"def.en"},
      "enemy_dead":          "0x840500",
      "enemy_blowedup":      "0x5A0401",
      "ally_base":           ${"def.al"},
      "enemy_base":          ${"def.en"}
    },
    // Dynamic color by damage kind.
    // Динамический цвет по типу урона.
    "dmg_kind": {
      "shot": "0xFFAA55",            // shot / попадание
      "fire": "0xFF6655",            // fire / пожар
      "ramming": "0x998855",         // ramming / таран
      "world_collision": "0x228855", // world collision / столкновение с объектами, падение
      "death_zone": "0xCCCCCC",      // TODO: value, description
      "drowning": "0xCCCCCC",        // TODO: value, description
      "other": "0xCCCCCC"            // other / другое
    },
    // Dynamic color by vehicle type.
    // Динамический цвет по типу техники.
    "vtype": {
      // Цвет для легких танков.
      "LT":  "0xA2FF9A",
      // Цвет для средних танков.
      "MT":  "0xFFF198",
      // Цвет для тяжелых танков.
      "HT":  "0xFFACAC",
      // Цвет для арты.
      "SPG": "0xEFAEFF",
      // Цвет для ПТ.
      "TD":  "0xA0CFFF",
      // Цвет для премиумной техники.
      "premium": "0xFFCC66",
      // Включить/выключить использование премиумного цвета.
      "usePremiumColor": false
    },
    // Dynamic color by spotted status
    // Динамический цвет по статусу засвета
    "spotted": {
      "neverSeen":      "0x000000",
      "lost":           "0xD9D9D9",
      "spotted":        "0xFFBB00",
      "dead":           "0xFFFFFF",
      "neverSeen_arty": "0x000000",
      "lost_arty":      "0xD9D9D9",
      "spotted_arty":   "0xFFBB00",
      "dead_arty":      "0xFFFFFF"
    },
    // HP color depending on the ratio of ally and enemy teams hp.
    // Цвет ХП в зависимости от отношения хп союзной и вражеской команд.
    "totalHP": {
      "bad":     "0xFF0000",
      "neutral": "0xFFFFFF",
      "good":    "0x00FF00"
    },
    // Color settings for damage.
    // Настройки цвета для урона.
    "damage": {
      // Format: src_dst_type.
      // Src:  ally, squadman, enemy, unknown, player.
      // Dst:  ally, squadman, allytk, enemytk, enemy.
      // Type: hit, kill, blowup.
      // ----
      // Формат: источник_получатель_тип.
      // Источник:   ally - союзник, squadman - взводный, enemy - противник, unknown - неизвестный (не виден игроку), player - игрок.
      // Получатель: ally, squadman, enemy, allytk - союзник тимкиллер, enemytk - противник тимкиллер.
      // Тип:        hit - попадание, kill - убийство, blowup - боеукладка.
      "ally_ally_hit":              ${"def.tk"},
      "ally_ally_kill":             ${"def.tk"},
      "ally_ally_blowup":           ${"def.tk"},
      "ally_squadman_hit":          ${"def.tk"},
      "ally_squadman_kill":         ${"def.tk"},
      "ally_squadman_blowup":       ${"def.tk"},
      "ally_enemy_hit":             ${"def.en"},
      "ally_enemy_kill":            ${"def.en"},
      "ally_enemy_blowup":          ${"def.en"},
      "ally_allytk_hit":            ${"def.tk"},
      "ally_allytk_kill":           ${"def.tk"},
      "ally_allytk_blowup":         ${"def.tk"},
      "ally_enemytk_hit":           ${"def.en"},
      "ally_enemytk_kill":          ${"def.en"},
      "ally_enemytk_blowup":        ${"def.en"},
      "enemy_ally_hit":             ${"def.al"},
      "enemy_ally_kill":            ${"def.al"},
      "enemy_ally_blowup":          ${"def.al"},
      "enemy_squadman_hit":         ${"def.al"},
      "enemy_squadman_kill":        ${"def.al"},
      "enemy_squadman_blowup":      ${"def.al"},
      "enemy_enemy_hit":            ${"def.en"},
      "enemy_enemy_kill":           ${"def.en"},
      "enemy_enemy_blowup":         ${"def.en"},
      "enemy_allytk_hit":           ${"def.al"},
      "enemy_allytk_kill":          ${"def.al"},
      "enemy_allytk_blowup":        ${"def.al"},
      "enemy_enemytk_hit":          ${"def.en"},
      "enemy_enemytk_kill":         ${"def.en"},
      "enemy_enemytk_blowup":       ${"def.en"},
      "unknown_ally_hit":           ${"def.al"},
      "unknown_ally_kill":          ${"def.al"},
      "unknown_ally_blowup":        ${"def.al"},
      "unknown_squadman_hit":       ${"def.al"},
      "unknown_squadman_kill":      ${"def.al"},
      "unknown_squadman_blowup":    ${"def.al"},
      "unknown_enemy_hit":          ${"def.en"},
      "unknown_enemy_kill":         ${"def.en"},
      "unknown_enemy_blowup":       ${"def.en"},
      "unknown_allytk_hit":         ${"def.al"},
      "unknown_allytk_kill":        ${"def.al"},
      "unknown_allytk_blowup":      ${"def.al"},
      "unknown_enemytk_hit":        ${"def.en"},
      "unknown_enemytk_kill":       ${"def.en"},
      "unknown_enemytk_blowup":     ${"def.en"},
      "squadman_ally_hit":          ${"def.sq"},
      "squadman_ally_kill":         ${"def.sq"},
      "squadman_ally_blowup":       ${"def.sq"},
      "squadman_squadman_hit":      ${"def.sq"},
      "squadman_squadman_kill":     ${"def.sq"},
      "squadman_squadman_blowup":   ${"def.sq"},
      "squadman_enemy_hit":         ${"def.sq"},
      "squadman_enemy_kill":        ${"def.sq"},
      "squadman_enemy_blowup":      ${"def.sq"},
      "squadman_allytk_hit":        ${"def.sq"},
      "squadman_allytk_kill":       ${"def.sq"},
      "squadman_allytk_blowup":     ${"def.sq"},
      "squadman_enemytk_hit":       ${"def.sq"},
      "squadman_enemytk_kill":      ${"def.sq"},
      "squadman_enemytk_blowup":    ${"def.sq"},
      "player_ally_hit":            ${"def.pl"},
      "player_ally_kill":           ${"def.pl"},
      "player_ally_blowup":         ${"def.pl"},
      "player_squadman_hit":        ${"def.pl"},
      "player_squadman_kill":       ${"def.pl"},
      "player_squadman_blowup":     ${"def.pl"},
      "player_enemy_hit":           ${"def.pl"},
      "player_enemy_kill":          ${"def.pl"},
      "player_enemy_blowup":        ${"def.pl"},
      "player_allytk_hit":          ${"def.pl"},
      "player_allytk_kill":         ${"def.pl"},
      "player_allytk_blowup":       ${"def.pl"},
      "player_enemytk_hit":         ${"def.pl"},
      "player_enemytk_kill":        ${"def.pl"},
      "player_enemytk_blowup":      ${"def.pl"}
    },
    // Values below should be from smaller to larger.
    // Значения ниже должны быть от меньшего к большему.
    // ----
    // Dynamic color by remaining absolute health.
    // Динамический цвет по оставшемуся здоровью.
    "hp": [
      { "value": 201,  "color": ${"def.colorHP.very_low"     } },      // Цвет для значений менее 201
      { "value": 401,  "color": ${"def.colorHP.low"          } },      // Цвет для значений менее 401
      { "value": 1001, "color": ${"def.colorHP.average"      } },      // Цвет для значений менее 1001
      { "value": 9999, "color": ${"def.colorHP.above_average"} }       // Цвет для остальных значений
    ],
    // Dynamic color by remaining health percent.
    // Динамический цвет по проценту оставшегося здоровья.
    "hp_ratio": [
      { "value": 10,  "color": ${"def.colorHP.very_low"     } },       // Цвет для значений менее 10 проц
      { "value": 25,  "color": ${"def.colorHP.low"          } },       // Цвет для значений менее 25 проц
      { "value": 50,  "color": ${"def.colorHP.average"      } },       // Цвет для значений менее 50 проц
      { "value": 101, "color": ${"def.colorHP.above_average"} }        // Цвет для остальных значений
    ],
    // Dynamic color for XVM Scale
    // Динамический цвет по шкале XVM
    // http://www.koreanrandom.com/forum/topic/2625-/
    "x": [
      { "value": 16.5, "color": ${"def.colorRating.very_bad" } },   // 00   - 16.5 - very bad   (20% of players)
      { "value": 33.5, "color": ${"def.colorRating.bad"      } },   // 16.5 - 33.5 - bad        (better than 20% of players)
      { "value": 52.5, "color": ${"def.colorRating.normal"   } },   // 33.5 - 52.5 - normal     (better than 60% of players)
      { "value": 75.5, "color": ${"def.colorRating.good"     } },   // 52.5 - 75.5 - good       (better than 90% of players)
      { "value": 92.5, "color": ${"def.colorRating.very_good"} },   // 75.5 - 92.5 - very good  (better than 99% of players)
      { "value": 999,  "color": ${"def.colorRating.unique"   } }    // 92.5 - XX   - unique     (better than 99.9% of players)
    ],
    // Dynamic color by efficiency
    // Динамический цвет по эффективности
    "eff": [
      { "value": 610,  "color": ${"def.colorRating.very_bad" } },  //    0 - 609  - very bad   (20% of players)
      { "value": 875,  "color": ${"def.colorRating.bad"      } },  //  610 - 874  - bad        (better than 20% of players)
      { "value": 1175, "color": ${"def.colorRating.normal"   } },  //  875 - 1174 - normal     (better than 60% of players)
      { "value": 1540, "color": ${"def.colorRating.good"     } },  // 1175 - 1539 - good       (better than 90% of players)
      { "value": 1880, "color": ${"def.colorRating.very_good"} },  // 1540 - 1879 - very good  (better than 99% of players)
      { "value": 9999, "color": ${"def.colorRating.unique"   } }   // 1880 - *    - unique     (better than 99.9% of players)
    ],
    // Dynamic color by WN6 rating
    // Динамический цвет по рейтингу WN6
    "wn6": [
      { "value": 470,  "color": ${"def.colorRating.very_bad" } },  //    0 - 469  - very bad   (20% of players)
      { "value": 860,  "color": ${"def.colorRating.bad"      } },  //  470 - 859  - bad        (better than 20% of players)
      { "value": 1225, "color": ${"def.colorRating.normal"   } },  //  860 - 1224 - normal     (better than 60% of players)
      { "value": 1635, "color": ${"def.colorRating.good"     } },  // 1225 - 1634 - good       (better than 90% of players)
      { "value": 1990, "color": ${"def.colorRating.very_good"} },  // 1635 - 1989 - very good  (better than 99% of players)
      { "value": 9999, "color": ${"def.colorRating.unique"   } }   // 1990 - *    - unique     (better than 99.9% of players)
    ],
    // Dynamic color by WN8 rating
    // Динамический цвет по рейтингу WN8
    //"wn8": [
    //  { "value": 400,  "color": ${"def.colorRating.very_bad" } },  //    0 - 399  - very bad   (20% of players)
    //  { "value": 900,  "color": ${"def.colorRating.bad"      } },  //  400 - 899  - bad        (better than 20% of players)
    //  { "value": 1470, "color": ${"def.colorRating.normal"   } },  //  900 - 1469 - normal     (better than 60% of players)
    //  { "value": 2180, "color": ${"def.colorRating.good"     } },  // 1470 - 2179 - good       (better than 90% of players)
    //  { "value": 2880, "color": ${"def.colorRating.very_good"} },  // 2180 - 2879 - very good  (better than 99% of players)
    //  { "value": 9999, "color": ${"def.colorRating.unique"   } }   // 2880 - *    - unique     (better than 99.9% of players)
    //],
	"wn8": [
      { "value": 5, "color": "0x990000" },
		{ "value": 10, "color": "0x9B0400" },
		{ "value": 20, "color": "0x9D0800" },
		{ "value": 30, "color": "0x9F0C00" },
		{ "value": 40, "color": "0xA11000" },
		{ "value": 50, "color": "0xA31400" },
		{ "value": 60, "color": "0xA51800" },
		{ "value": 70, "color": "0xA71D00" },
		{ "value": 80, "color": "0xA92100" },
		{ "value": 90, "color": "0xAB2500" },
		{ "value": 100, "color": "0xAD2900" },
		{ "value": 110, "color": "0xAF2D00" },
		{ "value": 120, "color": "0xB13100" },
		{ "value": 130, "color": "0xB43500" },
		{ "value": 140, "color": "0xB63900" },
		{ "value": 150, "color": "0xB83D00" },
		{ "value": 160, "color": "0xBA4100" },
		{ "value": 170, "color": "0xBC4500" },
		{ "value": 180, "color": "0xBE4900" },
		{ "value": 190, "color": "0xC04E00" },
		{ "value": 200, "color": "0xC25200" },
		{ "value": 210, "color": "0xC45600" },
		{ "value": 220, "color": "0xC65A00" },
		{ "value": 230, "color": "0xC85E00" },
		{ "value": 240, "color": "0xCA6200" },
		{ "value": 250, "color": "0xCC6600" },
		{ "value": 250, "color": "0xCC6600" },
		{ "value": 268, "color": "0xCC6A00" },
		{ "value": 286, "color": "0xCC6E00" },
		{ "value": 304, "color": "0xCC7200" },
		{ "value": 322, "color": "0xCC7600" },
		{ "value": 340, "color": "0xCC7A00" },
		{ "value": 358, "color": "0xCC7E00" },
		{ "value": 376, "color": "0xCC8300" },
		{ "value": 394, "color": "0xCC8700" },
		{ "value": 412, "color": "0xCC8B00" },
		{ "value": 430, "color": "0xCC8F00" },
		{ "value": 448, "color": "0xCC9300" },
		{ "value": 466, "color": "0xCC9700" },
		{ "value": 484, "color": "0xCC9B00" },
		{ "value": 502, "color": "0xCC9F00" },
		{ "value": 520, "color": "0xCCA300" },
		{ "value": 538, "color": "0xCCA700" },
		{ "value": 556, "color": "0xCCAB00" },
		{ "value": 574, "color": "0xCCAF00" },
		{ "value": 592, "color": "0xCCB400" },
		{ "value": 610, "color": "0xCCB800" },
		{ "value": 628, "color": "0xCCBC00" },
		{ "value": 646, "color": "0xCCC000" },
		{ "value": 664, "color": "0xCCC400" },
		{ "value": 682, "color": "0xCCC800" },
		{ "value": 700, "color": "0xCCCC00" },
		{ "value": 700, "color": "0xCCCC00" },
		{ "value": 722, "color": "0xC4CE00" },
		{ "value": 744, "color": "0xBCD000" },
		{ "value": 766, "color": "0xB4D200" },
		{ "value": 788, "color": "0xABD400" },
		{ "value": 810, "color": "0xA3D600" },
		{ "value": 832, "color": "0x9BD800" },
		{ "value": 854, "color": "0x93DA00" },
		{ "value": 876, "color": "0x8BDC00" },
		{ "value": 898, "color": "0x83DE00" },
		{ "value": 920, "color": "0x7AE000" },
		{ "value": 942, "color": "0x72E200" },
		{ "value": 964, "color": "0x6AE400" },
		{ "value": 986, "color": "0x62E700" },
		{ "value": 1008, "color": "0x5AE900" },
		{ "value": 1030, "color": "0x52EB00" },
		{ "value": 1052, "color": "0x49ED00" },
		{ "value": 1074, "color": "0x41EF00" },
		{ "value": 1096, "color": "0x39F100" },
		{ "value": 1118, "color": "0x31F300" },
		{ "value": 1140, "color": "0x29F500" },
		{ "value": 1162, "color": "0x21F700" },
		{ "value": 1184, "color": "0x18F900" },
		{ "value": 1206, "color": "0x10FB00" },
		{ "value": 1228, "color": "0x08FD00" },
		{ "value": 1250, "color": "0x00FF00" },
		{ "value": 1250, "color": "0x00FF00" },
		{ "value": 1268, "color": "0x00FB02" },
		{ "value": 1286, "color": "0x00F704" },
		{ "value": 1304, "color": "0x00F306" },
		{ "value": 1322, "color": "0x00EF08" },
		{ "value": 1340, "color": "0x00EB0A" },
		{ "value": 1358, "color": "0x00E70C" },
		{ "value": 1376, "color": "0x00E20E" },
		{ "value": 1394, "color": "0x00DE10" },
		{ "value": 1412, "color": "0x00DA12" },
		{ "value": 1430, "color": "0x00D614" },
		{ "value": 1448, "color": "0x00D216" },
		{ "value": 1466, "color": "0x00CE18" },
		{ "value": 1484, "color": "0x00CA1B" },
		{ "value": 1502, "color": "0x00C61D" },
		{ "value": 1520, "color": "0x00C21F" },
		{ "value": 1538, "color": "0x00BE21" },
		{ "value": 1556, "color": "0x00BA23" },
		{ "value": 1574, "color": "0x00B625" },
		{ "value": 1592, "color": "0x00B127" },
		{ "value": 1610, "color": "0x00AD29" },
		{ "value": 1628, "color": "0x00A92B" },
		{ "value": 1646, "color": "0x00A52D" },
		{ "value": 1664, "color": "0x00A12F" },
		{ "value": 1682, "color": "0x009D31" },
		{ "value": 1700, "color": "0x009933" },
		{ "value": 1700, "color": "0x009933" },
		{ "value": 1712, "color": "0x009539" },
		{ "value": 1724, "color": "0x00913F" },
		{ "value": 1736, "color": "0x008D45" },
		{ "value": 1748, "color": "0x00894B" },
		{ "value": 1760, "color": "0x008552" },
		{ "value": 1772, "color": "0x008158" },
		{ "value": 1784, "color": "0x007C5E" },
		{ "value": 1796, "color": "0x007864" },
		{ "value": 1808, "color": "0x00746A" },
		{ "value": 1820, "color": "0x007070" },
		{ "value": 1832, "color": "0x006C76" },
		{ "value": 1844, "color": "0x00687C" },
		{ "value": 1856, "color": "0x006483" },
		{ "value": 1868, "color": "0x006089" },
		{ "value": 1880, "color": "0x005C8F" },
		{ "value": 1892, "color": "0x005895" },
		{ "value": 1904, "color": "0x00549B" },
		{ "value": 1916, "color": "0x0050A1" },
		{ "value": 1928, "color": "0x004BA7" },
		{ "value": 1940, "color": "0x0047AD" },
		{ "value": 1952, "color": "0x0043B4" },
		{ "value": 1964, "color": "0x003FBA" },
		{ "value": 1976, "color": "0x003BC0" },
		{ "value": 1988, "color": "0x0037C6" },
		{ "value": 2000, "color": "0x0033CC" },
		{ "value": 2000, "color": "0x0033CC" },
		{ "value": 2016, "color": "0x0631CE" },
		{ "value": 2032, "color": "0x0C2FD0" },
		{ "value": 2048, "color": "0x122DD2" },
		{ "value": 2064, "color": "0x182BD4" },
		{ "value": 2080, "color": "0x1F29D6" },
		{ "value": 2096, "color": "0x2527D8" },
		{ "value": 2112, "color": "0x2B25DA" },
		{ "value": 2128, "color": "0x3123DC" },
		{ "value": 2144, "color": "0x3721DE" },
		{ "value": 2160, "color": "0x3D1FE0" },
		{ "value": 2176, "color": "0x431DE2" },
		{ "value": 2192, "color": "0x491BE4" },
		{ "value": 2208, "color": "0x5018E7" },
		{ "value": 2224, "color": "0x5616E9" },
		{ "value": 2240, "color": "0x5C14EB" },
		{ "value": 2256, "color": "0x6212ED" },
		{ "value": 2272, "color": "0x6810EF" },
		{ "value": 2288, "color": "0x6E0EF1" },
		{ "value": 2304, "color": "0x740CF3" },
		{ "value": 2320, "color": "0x7A0AF5" },
		{ "value": 2336, "color": "0x8108F7" },
		{ "value": 2352, "color": "0x8706F9" },
		{ "value": 2368, "color": "0x8D04FB" },
		{ "value": 2384, "color": "0x9302FD" },
		{ "value": 2400, "color": "0x9900FF" },
		{ "value": 2400, "color": "0x9900FF" },
		{ "value": 2464, "color": "0x9800FC" },
		{ "value": 2528, "color": "0x9700F9" },
		{ "value": 2592, "color": "0x9500F6" },
		{ "value": 2656, "color": "0x9400F3" },
		{ "value": 2720, "color": "0x9300F0" },
		{ "value": 2784, "color": "0x9200ED" },
		{ "value": 2848, "color": "0x9100EA" },
		{ "value": 2912, "color": "0x8F00E7" },
		{ "value": 2976, "color": "0x8E00E4" },
		{ "value": 3040, "color": "0x8D00E1" },
		{ "value": 3104, "color": "0x8C00DE" },
		{ "value": 3168, "color": "0x8B00DB" },
		{ "value": 3232, "color": "0x8900D9" },
		{ "value": 3296, "color": "0x8800D6" },
		{ "value": 3360, "color": "0x8700D3" },
		{ "value": 3424, "color": "0x8600D0" },
		{ "value": 3488, "color": "0x8500CD" },
		{ "value": 3552, "color": "0x8300CA" },
		{ "value": 3616, "color": "0x8200C7" },
		{ "value": 3680, "color": "0x8100C4" },
		{ "value": 3744, "color": "0x8000C1" },
		{ "value": 3808, "color": "0x7F00BE" },
		{ "value": 3872, "color": "0x7D00BB" },
		{ "value": 3936, "color": "0x7C00B8" },
		{ "value": 99999, "color": "0x7B00B5" }
    ],
    // Dynamic color by WG rating
    // Динамический цвет по рейтингу WG
    "wgr": [
      { "value": 2555,  "color": ${"def.colorRating.very_bad" } },  //    0 - 2554 - very bad   (20% of players)
      { "value": 4435,  "color": ${"def.colorRating.bad"      } },  // 2555 - 4434 - bad        (better than 20% of players)
      { "value": 6515,  "color": ${"def.colorRating.normal"   } },  // 4435 - 6514 - normal     (better than 60% of players)
      { "value": 8730,  "color": ${"def.colorRating.good"     } },  // 6515 - 8729 - good       (better than 90% of players)
      { "value": 10175, "color": ${"def.colorRating.very_good"} },  // 8730 -10174 - very good  (better than 99% of players)
      { "value": 99999, "color": ${"def.colorRating.unique"   } }   //10175 - *    - unique     (better than 99.9% of players)
    ],
    // Dynamic color for win chance
    // Динамический цвет для шанса на победу
    "winChance": [
      { "value": 24.5, "color": ${"def.colorRating.very_bad" } },
      { "value": 39.5, "color": ${"def.colorRating.bad"      } },
      { "value": 59.5, "color": ${"def.colorRating.normal"   } },
      { "value": 74.5, "color": ${"def.colorRating.good"     } },
      { "value": 89.5, "color": ${"def.colorRating.very_good"} },
      { "value": 101,  "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by win percent
    // Динамический цвет по проценту побед
    "winrate": [
      { "value": 46.5, "color": ${"def.colorRating.very_bad" } },   //  0   - 46.5  - very bad   (20% of players)
      { "value": 48.5, "color": ${"def.colorRating.bad"      } },   // 46.5 - 48.5  - bad        (better than 20% of players)
      { "value": 52.5, "color": ${"def.colorRating.normal"   } },   // 48.5 - 52.5  - normal     (better than 60% of players)
      { "value": 57.5, "color": ${"def.colorRating.good"     } },   // 52.5 - 57.5  - good       (better than 90% of players)
      { "value": 64.5, "color": ${"def.colorRating.very_good"} },   // 57.5 - 64.5  - very good  (better than 99% of players)
      { "value": 101,  "color": ${"def.colorRating.unique"   } }    // 64.5 - 100   - unique     (better than 99.9% of players)
    ],
    // Dynamic color by kilo-battles
    // Динамический цвет по количеству кило-боев
    "kb": [
      { "value": 2,   "color": ${"def.colorRating.very_bad" } },   //  0 - 2
      { "value": 6,   "color": ${"def.colorRating.bad"      } },   //  2 - 6
      { "value": 16,  "color": ${"def.colorRating.normal"   } },   //  6 - 16
      { "value": 30,  "color": ${"def.colorRating.good"     } },   // 16 - 30
      { "value": 43,  "color": ${"def.colorRating.very_good"} },   // 30 - 43
      { "value": 999, "color": ${"def.colorRating.unique"   } }    // 43 - *
    ],
    // Dynamic color by average level of player tanks
    // Динамический цвет по среднему уровню танков игрока
    "avglvl": [
      { "value": 2,  "color": ${"def.colorRating.very_bad" } },
      { "value": 3,  "color": ${"def.colorRating.bad"      } },
      { "value": 5,  "color": ${"def.colorRating.normal"   } },
      { "value": 7,  "color": ${"def.colorRating.good"     } },
      { "value": 9,  "color": ${"def.colorRating.very_good"} },
      { "value": 11, "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by battles on current tank
    // Динамический цвет по количеству боев на текущем танке
    "t_battles": [
      { "value": 100,   "color": ${"def.colorRating.very_bad" } }, //    0 - 99
      { "value": 250,   "color": ${"def.colorRating.bad"      } }, //  100 - 249
      { "value": 500,   "color": ${"def.colorRating.normal"   } }, //  250 - 499
      { "value": 1000,  "color": ${"def.colorRating.good"     } }, //  500 - 999
      { "value": 1800,  "color": ${"def.colorRating.very_good"} }, // 1000 - 1799
      { "value": 99999, "color": ${"def.colorRating.unique"   } }  // 1800 - *
    ],
    // Dynamic color by average damage on current tank
    // Динамический цвет по среднему урону за бой на текущем танке
    "tdb": [
      { "value": 500,  "color": ${"def.colorRating.very_bad" } },
      { "value": 750,  "color": ${"def.colorRating.bad"      } },
      { "value": 1000, "color": ${"def.colorRating.normal"   } },
      { "value": 1800, "color": ${"def.colorRating.good"     } },
      { "value": 2500, "color": ${"def.colorRating.very_good"} },
      { "value": 9999, "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by average damage efficiency on current tank
    // Динамический цвет по эффективности урона за бой на текущем танке
    "tdv": [
      { "value": 0.6,  "color": ${"def.colorRating.very_bad" } },
      { "value": 0.8,  "color": ${"def.colorRating.bad"      } },
      { "value": 1.0,  "color": ${"def.colorRating.normal"   } },
      { "value": 1.3,  "color": ${"def.colorRating.good"     } },
      { "value": 2.0,  "color": ${"def.colorRating.very_good"} },
      { "value": 15,   "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by average frags per battle on current tank
    // Динамический цвет по среднему количеству фрагов за бой на текущем танке
    "tfb": [
      { "value": 0.6,  "color": ${"def.colorRating.very_bad" } },
      { "value": 0.8,  "color": ${"def.colorRating.bad"      } },
      { "value": 1.0,  "color": ${"def.colorRating.normal"   } },
      { "value": 1.3,  "color": ${"def.colorRating.good"     } },
      { "value": 2.0,  "color": ${"def.colorRating.very_good"} },
      { "value": 15,   "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by average number of spotted enemies per battle on current tank
    // Динамический цвет по среднему количеству засвеченных врагов за бой на текущем танке
    "tsb": [
      { "value": 0.6,  "color": ${"def.colorRating.very_bad" } },
      { "value": 0.8,  "color": ${"def.colorRating.bad"      } },
      { "value": 1.0,  "color": ${"def.colorRating.normal"   } },
      { "value": 1.3,  "color": ${"def.colorRating.good"     } },
      { "value": 2.0,  "color": ${"def.colorRating.very_good"} },
      { "value": 15,   "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by WN8 effective damage
    // Динамический цвет по эффективному урону по WN8
    "wn8effd": [
      { "value": 0.6,  "color": ${"def.colorRating.very_bad" } },
      { "value": 0.8,  "color": ${"def.colorRating.bad"      } },
      { "value": 1.0,  "color": ${"def.colorRating.normal"   } },
      { "value": 1.3,  "color": ${"def.colorRating.good"     } },
      { "value": 2.0,  "color": ${"def.colorRating.very_good"} },
      { "value": 15,   "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by damage rating (percents for marks on gun)
    // Динамический цвет по рейтингу урона (процент для отметок на стволе)
    "damageRating": [
      { "value": 20,    "color": ${"def.colorRating.very_bad" } },  // 20% of players
      { "value": 50,    "color": ${"def.colorRating.bad"      } },  // better than 20% of players
      { "value": 65,    "color": ${"def.colorRating.normal"   } },  // better than 60% of players
      { "value": 85,    "color": ${"def.colorRating.good"     } },  // better than 90% of players
      { "value": 95,  "color": ${"def.colorRating.very_good"} },  // better than 99% of players
      { "value": 101,   "color": ${"def.colorRating.unique"   } }   // better than 99.9% of players
    ],
    // Dynamic color by hit ratio (percents of hits)
    // Динамический цвет по проценту попаданий
    "hitsRatio": [
      { "value": 47.5,  "color": ${"def.colorRating.very_bad" } },
      { "value": 60.5,  "color": ${"def.colorRating.bad"      } },
      { "value": 68.5,  "color": ${"def.colorRating.normal"   } },
      { "value": 74.5,  "color": ${"def.colorRating.good"     } },
      { "value": 78.5,  "color": ${"def.colorRating.very_good"} },
      { "value": 101,   "color": ${"def.colorRating.unique"   } }
    ]
  }
}
