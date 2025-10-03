# DarkMirrorClassicUI Library Documentation

A modern Roblox UI library designed for plug-and-play usage in your games.  
Provides: draggable main UI, sidebar tab navigation, section headings, rows, toggles, sliders, dropdowns, textboxes, buttons, and show/hide toggle.

---

## Features
- **Draggable UI:** Both the main frame and the show/hide button can be dragged.
- **Sidebar Tabs:** Easily create and switch between multiple tabs.
- **Section Headings:** Use section headings to organize UI content with custom text size.
- **Rows:** Add labeled rows with any Roblox UI element.
- **Show/Hide Button:** Toggle visibility of the UI for convenience.

---

## Loader Usage

To use this library via a loader:

```lua
local Synix = loadstring(game:HttpGet("URL_TO_RAW_SCRIPT"))()
```

This loads and initializes the UI, returning an API table for further usage.

---

## API Reference

### `Synix.createTab(name: string): ScrollingFrame`
Creates a new tab (ScrollingFrame) with the given name and returns the frame for further customization.

### `Synix.createSidebarButton(text: string, tabName: string)`
Creates a sidebar button labeled `text` that, when clicked, shows the tab named `tabName`.

### `Synix.createSection(tab: Instance, sectionTitle: string)`
Adds a section heading (TextLabel) with text size 20 and custom color to the specified tab.

### `Synix.createRow(tab: Instance, label: string, element: Instance)`
Adds a row to the specified tab, consisting of a label and an element (e.g., button, slider, etc.).

### Properties

- `Synix.mainFrame` — The main UI frame, for parenting or styling.
- `Synix.screenGui` — The parent ScreenGui.
- `Synix.tabFrames` — Table of tab frames for direct access.
- `Synix.sidebarButtons` — Table of sidebar buttons for direct access.

---

## Example

```lua
local Synix = loadstring(game:HttpGet("URL_TO_RAW_SCRIPT"))()
local myTab = Synix.createTab("MyTab")
Synix.createSidebarButton("My Tab", "MyTab")
Synix.createSection(myTab, "Custom Section")
local myButton = Instance.new("TextButton")
myButton.Size = UDim2.new(0, 100, 0, 32)
myButton.Text = "Click Me!"
Synix.createRow(myTab, "Button Row:", myButton)
```

---

## Customization

- All UI elements are created with Roblox Instances, so you can further style, modify, or extend as needed.
- Add more tabs, sections, rows, or custom UI elements using the API.
- The library does not restrict your UI style — feel free to change colors, fonts, sizes, etc.

---

## License

MIT License

---

**Author:** SAixShi  
**Version:** 1.0.0
