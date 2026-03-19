# Icon Forge

A modern, browser-based icon generator that converts JPEG images into 48×48 pixel icons.

![Icon Forge](https://img.shields.io/badge/version-1.0.0-brightgreen)
![License](https://img.shields.io/badge/license-MIT-blue)

## Features

- **Simple Drag & Drop**: Drop JPEG files directly onto the interface
- **Multiple Fit Modes**:
  - **Cover**: Fills the entire 48×48 space (crops if needed)
  - **Contain**: Fits the image within 48×48 (adds background if needed)
  - **Stretch**: Stretches to fill (may distort aspect ratio)
- **Customizable Background**: Choose background color for Contain mode
- **Multiple Export Formats**:
  - PNG (with transparency support)
  - JPEG
  - ICO (native Windows icon format)
- **Live Preview**: See your icon at 1×, 2×, and 4× zoom levels
- **No Server Required**: Runs entirely in your browser

## Getting Started

### Quick Start

1. Open `index.html` in any modern web browser
2. Drag and drop a JPEG image onto the drop zone (or click to browse)
3. Adjust fit mode and background color as needed
4. Choose your export format
5. Click "Download Icon" to save

### Requirements

- Modern web browser (Chrome, Firefox, Safari, Edge)
- No installation or dependencies required
- Works completely offline

## Usage

### Fit Modes

- **Cover** (default): Best for profile pictures or images where you want to fill the entire icon space. The image will be centered and cropped to fit.
- **Contain**: Best for logos or images where you need to preserve the entire image. Adds a background color to letterbox/pillarbox the image.
- **Stretch**: Stretches the image to exactly 48×48 pixels. May distort the aspect ratio but ensures no cropping.

### Export Formats

- **PNG**: Recommended for most use cases. Supports transparency (when using Cover or Stretch modes).
- **JPEG**: Smaller file size, but no transparency support. A background color will be applied.
- **ICO**: Windows icon format. Perfect for favicons or Windows applications.

## Technical Details

- **Output Size**: 48×48 pixels
- **Input Format**: JPEG/JPG only
- **Image Processing**: High-quality canvas-based rendering
- **ICO Generation**: Creates standard 32-bit RGBA ICO files with proper BMP headers

## Browser Compatibility

- Chrome/Edge: ✅ Full support
- Firefox: ✅ Full support
- Safari: ✅ Full support
- Opera: ✅ Full support

## Project Structure

```
Icon Maker/
├── index.html              # Main application (single-file)
├── README.md               # This file
├── LICENSE                 # MIT License
│
└── Documentation/
    ├── BEGINNER_GUIDE.md       # Complete beginner's tutorial
    ├── VISUAL_GUIDE.md         # Diagrams and visual explanations
    ├── CODE_WALKTHROUGH.md     # Detailed code explanation
    └── QUICK_REFERENCE.md      # Cheat sheet for common tasks
```

## Documentation for Beginners

New to programming? We've created comprehensive documentation to help you learn:

### Learning Path

1. **[BEGINNER_GUIDE.md](BEGINNER_GUIDE.md)** - **Start here!** Complete tutorial covering:
   - How web applications work (HTML, CSS, JavaScript)
   - Understanding the code structure
   - Step-by-step explanation of each part
   - Making your first modifications
   - Common questions answered

2. **[VISUAL_GUIDE.md](VISUAL_GUIDE.md)** - Visual learner? Check this out:
   - Flowcharts and diagrams
   - Visual representation of fit modes
   - Canvas coordinate system explained
   - State machine diagrams
   - Binary file structure visualized

3. **[CODE_WALKTHROUGH.md](CODE_WALKTHROUGH.md)** - Detailed technical reference:
   - Line-by-line code explanation
   - Deep dive into image processing
   - ICO file format details
   - Performance considerations
   - Debugging tips

4. **[QUICK_REFERENCE.md](QUICK_REFERENCE.md)** - Handy cheat sheet:
   - HTML/CSS/JavaScript syntax
   - Canvas API reference
   - Common modification recipes
   - Debugging commands
   - Helpful code snippets

## Development

This is a single-file application with no build process. To modify:

1. Open `index.html` in your favorite editor
2. Make changes to the HTML, CSS, or JavaScript
3. Refresh your browser to see changes

### Key Components

- **HTML**: Semantic structure with drop zone and preview areas
- **CSS**: Modern dark theme using CSS custom properties
- **JavaScript**: Vanilla JS for image processing and canvas manipulation

## Design Philosophy

- **Single File**: Everything in one HTML file for maximum portability
- **No Dependencies**: Pure vanilla JavaScript, no frameworks or libraries
- **Offline First**: Works completely offline once loaded
- **Modern UI**: Clean, professional dark theme with yellow accent
- **Performance**: Efficient canvas rendering with high-quality image smoothing

## License

MIT License - feel free to use, modify, and distribute.

## Contributing

This is a personal project, but suggestions and improvements are welcome! Feel free to fork and customize for your needs.

## Changelog

### v1.0.0 (2026-03-19)
- Initial release
- Support for JPEG input
- Three fit modes (Cover, Contain, Stretch)
- Three export formats (PNG, JPEG, ICO)
- Live preview with zoom levels
- Custom background color selection

## Future Enhancements

Potential features for future versions:
- Support for PNG input files
- Batch processing multiple images
- Additional icon sizes (16×16, 32×32, 64×64, 256×256)
- Image filters and adjustments (brightness, contrast, saturation)
- Presets for common use cases
- Save/load settings

## Credits

Built with ❤️ using vanilla HTML, CSS, and JavaScript

**Fonts:**
- [DM Mono](https://fonts.google.com/specimen/DM+Mono) - Monospace font by Colophon Foundry
- [Syne](https://fonts.google.com/specimen/Syne) - Display font by Bonjour Monde
