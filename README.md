# Arduino/ESP32 Compatible OLED Icon Set

This project provides a set of icons compatible with Arduino and ESP32 devices, tailored for OLED displays. It builds upon and modifies the "IoT Icon set 16x16 bi color" by Artur Funk, enhancing it for specific use cases and adding more functionalities.

## Original Code Credit

This project uses and modifies icons from this website post [**IoT Icon set 16x16 bi color by Artur Funk**](https://engsta.net/iot-icon-set-for-i2c-oled-displays/), licensed under the **GNU General Public License v3**. Below are the details and description of the original icon set:

- **Icon Set Name**: IoT Icon set 16x16 bi color
- **Version**: 1.0.0
- **Origin URL**: [www.engsta.com](http://www.engsta.com)
- **Author**: Artur Funk
- **License**: GNU General Public License v3

### Description

The original icon set, with icons of 16x16 pixels, was specially created for low-resolution displays which are often used in display-enabled IoT projects. It supports LCD's or OLED Displays. Each icon uses 32 bytes of microcontroller flash. To conserve program space, users can delete or comment out unused icons.

### Libraries Used:

- [Adafruit_SSD1306](https://github.com/adafruit/Adafruit_SSD1306)
- [Adafruit-GFX-Library](https://github.com/adafruit/Adafruit-GFX-Library)

## Usage 

### (Optional) Installation in the Arduino IDE

1. **Download the Library**: 
   - First, download the `arduino-oled-icons.zip` file provided in the repository.

2. **Open the Arduino IDE**: 
   - Launch your Arduino IDE.

3. **Add the ZIP Library**: 
   - Navigate to **Sketch > Include Library > Add .ZIP Library...** from the Arduino IDE's main menu.
   - A file dialog will open. Locate the `arduino-oled-icons.zip` file you downloaded in step 1 and select it.

4. **Check Installation**: 
   - Restart the Arduino IDE.
   - Navigate to **Sketch > Include Library**. You should now see `arduino-oled-icons` listed among the libraries.

5. **Usage**:
   - Once installed, you can include and use the library in your projects as demonstrated in the Usage section below.

### Code Example

```cpp
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "iot_iconset_16x16.h"

// Drawing an icon
display.drawBitmap(0, 34, arrow_down_icon16x16, 16, 16, 1);
```

The original author encourages users to create cool projects, have fun with the icons, and share what they've learned with others. I have brought this project to GitHub to make it more accessible and to provide a place for community discussion.

# Modifications & Additional Features

To build a ZIP release, do the following:

```
chmod +x build_release.sh
./build_release.sh
```

Now you will have a new ZIP with your changed files & can import this into Arduino IDE

# To Do
- [ ] Provide individual icon files for slimmer imports
- [ ] Extend icon set (refresh, screen on/off, sleep/moon) & smaller icon choices

# Contributing
All contributions are welcome, this is a small part of a larger project I'm undertaking but I will always endevour to help anyone trying to add or fix parts of this project.