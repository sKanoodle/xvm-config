/**
 * Normal carousel cells settings
 * Настройки ячеек карусели обычного размера
 */
{
  // Definitions
  // Шаблоны
  "def": {
    // Text fields shadow.
    // Тень текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2, "distance": 0, "angle": 0 }
  },
  "normal": {
    // Cell width
    // Ширина ячейки
    "width": 128,
    // Cell height
    // Высота ячейки
    "height": 80,
    // Spacing between carousel cells.
    // Отступ между ячейками карусели.
    "gap": 0,
    // Standard cell elements.
    // Стандартные элементы ячеек.
    "fields": {
      // "enabled"  - the visibility of the element / видимость элемента
      // "dx"       - horizontal shift              / смещение по горизонтали
      // "dy"       - vertical shift                / смещение по вертикали
      // "alpha"    - transparency                  / прозрачность
      // "scale"    - scale                         / масштаб
      //
      // Nation flag.
      // Флаг нации.
      "flag": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 0.8 },
      // Vehicle icon.
      // Иконка танка.
      "tankIcon": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 0.8 },
      // Vehicle class icon.
      // Иконка типа техники.
      "tankType": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 0.8 },
      // Vehicle level.
      // Уровень техники
      "level":    { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 0.8 },
      // Double XP icon
      // Иконка не сбитого опыта за первую победу в день.
      "xp":       { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 0.8 },
      // Vehicle name.
      // Название танка.
      "tankName": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 0.8 },
      // Vehicle rent info text.
      // Инфо текст аренды танка.
      "rentInfo": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 0.8 },
      // Info image
      // Инфо иконка
      "infoImg":  { "enabled": true, "dx": 50, "dy": -10, "alpha": 100, "scale": 1 },
      // Info text (Crew incomplete, Repairs required)
      // Инфо текст (Неполный экипаж, Требуется ремонт).
      "info":     { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 0.8 },
      // Info text for "Buy vehicle" and "Buy slot" slots.
      // Инфо текст для слотов "Купить машину" и "Купить слот".
      "infoBuy":  { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 0.8 },
      // Clan lock timer
      // Таймер блокировки танка
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Price
      // Цена
      "price":    { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Action price
      // Акционная цена
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 }
    },
    // Extra cell fields (see playersPanel.xc).
    // Дополнительные поля ячеек (см. playersPanel.xc).
    "extraFields": [
	  // Подложка слота
      // Slot background
      { "x": 1, "y": 1, "layer": "substrate", "width": 128, "height": 80, "bgColor": "0x0A0A0A" },
      // Sign of mastery.
      // Знак мастерства.
      { "x": -1, "y": 10, "format": "<img src='img://gui/maps/icons/library/proficiency/class_icons_{{v.mastery}}.png' width='23' height='23'>" },
	  // Winrate + battles
	  { "x": 2, "y": 44, "align": "left", "alpha": 100, "format": "<font size='10' face='$FieldFont' color='{{v.c_winrate}}'>{{v.winrate%02d~%}}</font> <font size='10' face='$FieldFont' color='#D9D900'>{{v.battles}}</font>", //#e3dfc6
                  "shadow": { "distance": 0,  "angle": 0,  "color": "0x000000", "alpha": 80, "blur": 6, "strength": 4 } },
      // avg dmg /  exp. dmg
	  { "x": 2, "y": 56, "align": "left", "alpha": 100, "format": "<font size='10' color='#e3dfc6'>{{v.tdb%00d}}</font> <font size='10' color='#D9D900'>{{v.wn8expd%00d}}</font>",
                  "shadow": { "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 6, "strength": 4 } },
	  // damageRating (gunmarks)
      { "x": 2, "y": 32, "format": "<font face='$FieldFont' size='10' color='{{v.c_damageRating}}'>{{v.damageRating%4.2f~%}}</font>", "shadow": { "alpha": 80, "angle": 45, "blur": 2, "color": "0x000000", "distance": 0, "enabled": true, "strength": 2}}
    ]
  }
}
