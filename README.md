<div align="center">

# 🪟 Windows Rice Configuration

### *A Beautiful & Productive Windows Desktop Environment*

[![Windows](https://img.shields.io/badge/Windows-11-0078D6?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/windows)
[![AutoHotkey](https://img.shields.io/badge/AutoHotkey-v2-334455?style=for-the-badge&logo=autohotkey&logoColor=white)](https://www.autohotkey.com/)
[![Komorebi](https://img.shields.io/badge/Komorebi-Tiling%20WM-89b4fa?style=for-the-badge)](https://github.com/LGUG2Z/komorebi)

*Transform your Windows experience with tiling window management, virtual desktop enhancements, and a sleek status bar.*

</div>

---

## 📋 Table of Contents

- [✨ Features](#-features)
- [📦 What's Included](#-whats-included)
- [🚀 Quick Start](#-quick-start)
- [⚙️ Configuration](#️-configuration)
- [⌨️ Keyboard Shortcuts](#️-keyboard-shortcuts)
- [🎨 Customization](#-customization)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)

---

## ✨ Features

- **🗂️ Tiling Window Management** - Automatic window organization with Komorebi
- **📊 Custom Status Bar** - Beautiful and functional status bar with YASB
- **🖥️ Enhanced Virtual Desktops** - Advanced virtual desktop management with AutoHotkey
- **⌨️ Keyboard-Driven Workflow** - Comprehensive keyboard shortcuts for maximum productivity
- **🎨 Customizable Aesthetics** - Easily adjustable colors, borders, and themes
- **🔄 Auto-reload Configuration** - Changes apply automatically without restart

---

## 📦 What's Included

### 🪟 Komorebi + YASB Configuration

Located in `komorebi_yasb/`

#### **Komorebi** - Tiling Window Manager
- **File**: `komorebi/komorebi.json`
- Automatic window tiling and stacking
- Custom workspace layouts
- Smart window borders with color indicators
- Application-specific rules
- Multi-monitor support

#### **YASB** - Yet Another Status Bar
- **Files**: `yasb/config.yaml`, `yasb/styles.css`
- Workspace indicators
- Active window display
- Volume control
- Notification center
- Power menu
- Pomodoro timer
- And more widgets!

#### **WHKD** - Windows Hotkey Daemon
- **File**: `komorebi/whkdrc`
- System-wide keyboard shortcuts
- Window management hotkeys

### 🖱️ Virtual Desktop Manager

Located in `multiple-native-desktop/`

#### **VD.ah2** - Virtual Desktop Library
- **File**: `VD.ah2`
- Advanced virtual desktop API
- Cross-version Windows compatibility (Win10/Win11)
- Programmatic desktop switching and window management

#### **VDSwitch.ahk** - Desktop Switcher Script
- **File**: `VDSwitch.ahk`
- Quick desktop switching with Alt+1-7
- Move windows between desktops with Alt+Shift+1-7
- Cycle through desktops with Ctrl+Shift+Win+Arrow
- Pin/unpin windows across desktops
- Launch common applications

---

## 🚀 Quick Start

### Prerequisites

- Windows 10 (version 1809+) or Windows 11
- [Komorebi](https://github.com/LGUG2Z/komorebi) - Tiling window manager
- [YASB](https://github.com/amnweb/yasb) - Status bar
- [AutoHotkey v2](https://www.autohotkey.com/) - For virtual desktop enhancements

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/nquangit/windows-rice.git
   cd windows-rice
   ```

2. **Install Komorebi**
   ```powershell
   # Using winget
   winget install LGUG2Z.komorebi
   
   # Or using scoop
   scoop install komorebi
   ```

3. **Install YASB**
   ```powershell
   # Using pip
   pip install yasb
   ```

4. **Install AutoHotkey v2**
   ```powershell
   # Using winget
   winget install AutoHotkey.AutoHotkey
   ```

5. **Copy configuration files**

   **For Komorebi + YASB:**
   ```powershell
   # Copy Komorebi config
   Copy-Item -Path ".\komorebi_yasb\komorebi\*" -Destination "$env:USERPROFILE\.config\komorebi\" -Recurse -Force
   
   # Copy YASB config
   Copy-Item -Path ".\komorebi_yasb\yasb\*" -Destination "$env:USERPROFILE\.config\yasb\" -Recurse -Force
   ```

   **For Virtual Desktop Manager:**
   - The scripts are ready to use from the `multiple-native-desktop/` folder
   - Simply run `VDSwitch.ahk` to start using enhanced virtual desktop features

6. **Start your new environment**
   ```powershell
   # Start Komorebi
   komorebic start --ahk
   
   # Start YASB
   yasb
   
   # Run Virtual Desktop Manager (optional)
   # Navigate to multiple-native-desktop/ and run VDSwitch.ahk
   ```

---

## ⚙️ Configuration

### Komorebi Settings

Edit `~/.config/komorebi/komorebi.json` to customize:

- **Window Padding**: Adjust `default_workspace_padding` and `default_container_padding`
- **Border Colors**: Modify the `border_colours` section
- **Animation**: Enable/disable window animations
- **Transparency**: Control window transparency effects

### YASB Settings

Edit `~/.config/yasb/config.yaml` to customize:

- **Widgets**: Add/remove widgets in the `widgets` section
- **Bar Position**: Change `alignment.position` (top/bottom)
- **Dimensions**: Adjust bar height and padding
- **Komorebi Integration**: Modify komorebi commands

Edit `~/.config/yasb/styles.css` for visual customization:
- Colors and fonts
- Widget styling
- Animations and transitions

### Virtual Desktop Manager

Edit `multiple-native-desktop/VDSwitch.ahk` to:
- Modify keyboard shortcuts
- Change the number of virtual desktops
- Customize window movement behavior
- Add custom hotkeys for applications

---

## ⌨️ Keyboard Shortcuts

### Virtual Desktop Management (VDSwitch.ahk)

| Shortcut | Action |
|----------|--------|
| `Alt + 1-7` | Switch to virtual desktop 1-7 |
| `Alt + Shift + 1-7` | Move active window to desktop 1-7 and follow |
| `Ctrl + Shift + Win + Left/Right` | Cycle through desktops |
| `Win + Alt + Left/Right` | Move window to adjacent desktop and follow |
| `Alt + NumpadAdd` | Create new desktop and switch to it |
| `Win + NumpadAdd` | Create new desktop (without switching) |

### Application Launchers

| Shortcut | Action |
|----------|--------|
| `Ctrl + Alt + T` | Open Windows Terminal |
| `Alt + E` | Open File Explorer |
| `Alt + I` | Open Settings |
| `Alt + R` | Open Run dialog |
| `Alt + C` | Open Control Center |

### Window Management

| Shortcut | Action |
|----------|--------|
| `Alt + M` | Minimize active window |
| `Alt + N` | Restore active window |
| `Alt + Q` | Close active window |

### System

| Shortcut | Action |
|----------|--------|
| `Ctrl + Alt + R` | Reload AutoHotkey script |
| `Alt + Esc` | Exit script |

### Komorebi Shortcuts

Refer to `komorebi/whkdrc` for the complete list of Komorebi window management shortcuts.

---

## 🎨 Customization

### Themes

The configuration uses a **Catppuccin-inspired** color scheme by default:

- **Focused window border**: `#89b4fa` (Sapphire blue)
- **Stack indicator**: `#00ff99` (Mint green)
- **Monocle mode**: `#f38ba8` (Pink)
- **Unfocused**: `#303030` (Dark gray)

### Modifying Colors

**Komorebi borders** (`komorebi.json`):
```json
"border_colours": {
  "single": "#89b4fa",
  "stack": "#00ff99",
  "floating": "#00ff99",
  "monocle": "#f38ba8",
  "unfocused": "#303030"
}
```

**YASB styling** (`styles.css`):
- Customize widget colors
- Adjust fonts and sizes
- Modify spacing and padding

### Adding Custom Widgets to YASB

Edit `config.yaml` under the `widgets` section to add more functionality:
- System monitors (CPU, RAM, Network)
- Weather information
- Calendar and time
- Media controls
- And more!

Check the [YASB Wiki](https://github.com/amnweb/yasb/wiki) for available widgets.

---

## 🛠️ Troubleshooting

### Komorebi not starting?
- Ensure you have the latest version installed
- Check logs at `~/.config/komorebi/komorebi.log`
- Try running `komorebic stop` then `komorebic start --ahk`

### YASB not showing?
- Make sure Python and pip are properly installed
- Check if YASB is running in Task Manager
- Verify configuration files are in the correct location

### Virtual Desktop scripts not working?
- Ensure AutoHotkey v2 is installed (not v1)
- Run the script as administrator if needed
- Check Windows version compatibility

---

## 🤝 Contributing

Contributions are welcome! Feel free to:

- Report bugs
- Suggest new features
- Submit pull requests
- Share your configurations

---

## 📄 License

This configuration is provided as-is. Feel free to use and modify as you wish for your own setup.

---

## 🙏 Acknowledgments

- [Komorebi](https://github.com/LGUG2Z/komorebi) - Tiling window manager for Windows
- [YASB](https://github.com/amnweb/yasb) - Status bar application
- [VD.ahk](https://github.com/FuPeiJiang/VD.ahk) - Virtual Desktop library for AutoHotkey
- The r/unixporn community for inspiration

---

<div align="center">

### ⭐ If you find this useful, please consider giving it a star!

Made with ❤️ for Windows productivity enthusiasts

</div>
