# Icon Forge

A browser-based icon generator that converts JPEG, PNG, and AVIF images into 124×124 pixel icons.

![Icon Forge](https://img.shields.io/badge/version-1.1.0-brightgreen)
![License](https://img.shields.io/badge/license-MIT-blue)

## Features

- **Simple Drag & Drop**: Drop a JPEG, PNG, or AVIF file onto the interface, or click to browse
- **Multiple Fit Modes**:
  - **Cover**: Fills the entire 124×124 space (crops if needed)
  - **Contain**: Fits the image within 124×124 (adds background if needed)
  - **Stretch**: Stretches to fill (may distort aspect ratio)
- **Customizable Background**: Choose a background color (or transparent) for Contain mode
- **Multiple Export Formats**:
  - ICO (default): Windows icon file containing a PNG-encoded image
  - PNG (with transparency support)
  - JPEG (no transparency; the background color is applied)
- **Live Preview**: See your icon at 2× and 4× zoom
- **No Server Required**: Runs entirely in your browser

## Getting Started

### Quick Start

1. Open `index.html` in any modern web browser (on Windows you can also use `IconForge_Start.bat`, see below)
2. Drag and drop an image onto the drop zone (or click to browse)
3. Adjust fit mode and background color as needed
4. Choose your export format
5. Click "Download Icon" to save

### Requirements

- Modern web browser (Chrome, Firefox, Safari, Edge)
- No installation or dependencies required
- Works offline, apart from the two Google Fonts (DM Mono, Syne), which fall back to system fonts if unavailable

### Windows launcher

`IconForge_Start.bat` opens `index.html` in your default browser. It contains a hard-coded path (`D:\Documents\Software_Projects\Icon Maker\index.html`), so edit the `HTML` line at the top if your copy lives somewhere else.

## Usage

### Fit Modes

- **Cover** (default): Best for profile pictures or images where you want to fill the entire icon space. The image is centered and cropped to fit.
- **Contain**: Best for logos or images where you need to preserve the entire image. Adds a background color to letterbox/pillarbox the image.
- **Stretch**: Stretches the image to exactly 124×124 pixels. May distort the aspect ratio but ensures no cropping.

### Export Formats

- **ICO** (default): Windows icon format, good for application icons and favicons. The file holds a single 124×124 PNG-encoded image, which Windows Vista and later support. Older software that expects the classic BMP-style ICO may not read it.
- **PNG**: Recommended for most other uses. Supports transparency (in Cover or Stretch modes, or Contain with a transparent background).
- **JPEG**: Smaller file size, but no transparency. The background color is applied.

## Technical Details

- **Output Size**: 124×124 pixels (a single `SIZE` constant in `index.html` controls this)
- **Input Formats**: JPEG, PNG, AVIF. AVIF decoding depends on your browser; if it can't decode the file you'll see an error in the status line.
- **Image Processing**: High-quality canvas-based rendering
- **ICO Generation**: Writes an ICO header and directory entry followed by the PNG data from the canvas

## Browser Compatibility

Icon Forge uses standard Canvas, File, and Drag and Drop APIs and should run in current versions of Chrome, Edge, Firefox, Safari, and Opera. AVIF input needs a browser with AVIF support. This has not been tested across every browser.

## Project Structure

```
Icon Maker/
├── index.html              # Main application (single-file)
├── IconForge_Start.bat     # Windows launcher
├── README.md               # This file
├── LICENSE                 # MIT License
├── BEGINNER_GUIDE.md       # Beginner's tutorial
├── VISUAL_GUIDE.md         # Diagrams and visual explanations
├── CODE_WALKTHROUGH.md     # Detailed code explanation
└── QUICK_REFERENCE.md      # Cheat sheet for common tasks
```

## Documentation for Beginners

> **Note:** these guides were written for v1.0.0 (48×48 output, JPEG-only input, hand-built BMP ICO export). The general HTML/CSS/JavaScript and canvas explanations still apply, but sizes, accepted file types, and the ICO export code in the guides no longer match `index.html`.

- **[BEGINNER_GUIDE.md](BEGINNER_GUIDE.md)**: How web applications work, the code structure, and first modifications
- **[VISUAL_GUIDE.md](VISUAL_GUIDE.md)**: Flowcharts and diagrams of the app flow and fit modes
- **[CODE_WALKTHROUGH.md](CODE_WALKTHROUGH.md)**: Detailed technical reference
- **[QUICK_REFERENCE.md](QUICK_REFERENCE.md)**: Cheat sheet of HTML/CSS/JavaScript and Canvas snippets

## Development

This is a single-file application with no build process. To modify:

1. Open `index.html` in your favorite editor
2. Make changes to the HTML, CSS, or JavaScript
3. Refresh your browser to see changes

### Key Components

- **HTML**: Semantic structure with drop zone and preview areas
- **CSS**: Dark theme using CSS custom properties
- **JavaScript**: Vanilla JS for image processing and canvas manipulation

## Design Philosophy

- **Single File**: Everything in one HTML file for maximum portability
- **No Dependencies**: Pure vanilla JavaScript, no frameworks or libraries
- **Local Processing**: Images never leave your browser
- **Performance**: Efficient canvas rendering with high-quality image smoothing

## License

MIT License - feel free to use, modify, and distribute.

## Contributing

This is a personal project, but suggestions and improvements are welcome! Feel free to fork and customize for your needs.

## Changelog

### v1.1.0
- Output size changed from 48×48 to 124×124
- Added PNG and AVIF input support (previously JPEG only)
- ICO is now the default export format
- ICO export now embeds a PNG-encoded image instead of hand-built BMP pixel data
- Zoom previews are now 2× and 4×

### v1.0.0 (2026-03-19)
- Initial release
- Support for JPEG input
- Three fit modes (Cover, Contain, Stretch)
- Three export formats (PNG, JPEG, ICO)
- Live preview with zoom levels
- Custom background color selection

## Future Enhancements

Potential features for future versions:
- Batch processing multiple images
- Additional icon sizes (16×16, 32×32, 64×64, 256×256) and multi-size ICO files
- Image filters and adjustments (brightness, contrast, saturation)
- Presets for common use cases
- Save/load settings
- Update the beginner guides to match the current code

## Credits

**Fonts:**
- [DM Mono](https://fonts.google.com/specimen/DM+Mono) - Monospace font by Colophon Foundry
- [Syne](https://fonts.google.com/specimen/Syne) - Display font by Bonjour Monde
