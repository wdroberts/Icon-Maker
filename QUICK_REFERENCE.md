# Quick Reference Guide

A cheat sheet for common tasks and code patterns in Icon Forge.

## Table of Contents

- [HTML Quick Reference](#html-quick-reference)
- [CSS Quick Reference](#css-quick-reference)
- [JavaScript Quick Reference](#javascript-quick-reference)
- [Canvas API Quick Reference](#canvas-api-quick-reference)
- [Common Modifications](#common-modifications)
- [Debugging Commands](#debugging-commands)

---

## HTML Quick Reference

### Creating Elements

```html
<!-- Container -->
<div class="my-class" id="my-id">Content</div>

<!-- Button -->
<button class="btn" id="my-btn">Click Me</button>

<!-- Image -->
<img src="path/to/image.jpg" alt="description">

<!-- Canvas -->
<canvas id="my-canvas" width="100" height="100"></canvas>

<!-- File input -->
<input type="file" id="file-input" accept="image/jpeg">

<!-- Color picker -->
<input type="color" id="color-picker" value="#ff0000">

<!-- Text input -->
<input type="text" placeholder="Enter text">
```

### HTML Attributes

```html
<!-- ID (unique identifier) -->
<div id="unique-name"></div>

<!-- Class (can be on multiple elements) -->
<div class="class1 class2 class3"></div>

<!-- Custom data attributes -->
<button data-action="delete" data-id="123">Delete</button>

<!-- Style (inline CSS) -->
<div style="color: red; font-size: 20px;"></div>
```

---

## CSS Quick Reference

### Selectors

```css
/* Tag selector */
button { }

/* Class selector */
.btn { }

/* ID selector */
#drop-zone { }

/* Multiple selectors */
.btn, .link { }

/* Child selector */
.card > .title { }

/* Descendant selector */
.card .title { }

/* Pseudo-classes */
button:hover { }
button:active { }
input:focus { }
.btn.active { }
```

### Colors

```css
.element {
  /* Hex colors */
  color: #ff0000;
  color: #f00;  /* shorthand */
  
  /* RGB */
  color: rgb(255, 0, 0);
  
  /* RGBA (with transparency) */
  color: rgba(255, 0, 0, 0.5);  /* 50% opacity */
  
  /* Named colors */
  color: red;
  color: transparent;
}
```

### Spacing

```css
.element {
  /* Padding (inside) */
  padding: 10px;                    /* all sides */
  padding: 10px 20px;               /* vertical horizontal */
  padding: 10px 20px 30px 40px;    /* top right bottom left */
  
  /* Margin (outside) */
  margin: 10px;
  margin: auto;  /* center horizontally */
  
  /* Gap (between flex/grid items) */
  gap: 20px;
}
```

### Flexbox

```css
.container {
  display: flex;
  
  /* Direction */
  flex-direction: row;      /* horizontal (default) */
  flex-direction: column;   /* vertical */
  
  /* Alignment */
  justify-content: center;  /* main axis */
  align-items: center;      /* cross axis */
  
  /* Wrapping */
  flex-wrap: wrap;
  
  /* Gap */
  gap: 20px;
}

.child {
  flex: 1;  /* grow to fill space */
}
```

### Common Properties

```css
.element {
  /* Display */
  display: none;           /* hide */
  display: block;          /* block element */
  display: flex;           /* flexbox */
  
  /* Size */
  width: 100px;
  height: 50px;
  max-width: 500px;
  min-height: 100px;
  
  /* Border */
  border: 1px solid black;
  border-radius: 4px;      /* rounded corners */
  
  /* Background */
  background: red;
  background-color: #fff;
  
  /* Text */
  font-size: 16px;
  font-weight: bold;       /* or 100-900 */
  text-align: center;
  color: black;
  
  /* Cursor */
  cursor: pointer;         /* hand cursor */
  cursor: default;         /* arrow cursor */
  
  /* Transitions */
  transition: all 0.3s;    /* smooth changes */
}
```

### CSS Variables

```css
/* Define */
:root {
  --main-color: #e8ff47;
  --spacing: 16px;
}

/* Use */
.element {
  color: var(--main-color);
  padding: var(--spacing);
}
```

---

## JavaScript Quick Reference

### Variables

```javascript
// const: can't reassign
const name = 'John';
const element = document.getElementById('btn');

// let: can reassign
let count = 0;
count = 1;  // OK

// var: old way (avoid using)
var x = 10;
```

### Data Types

```javascript
// String
const text = 'hello';
const text2 = "world";
const text3 = `Hello ${name}`;  // template literal

// Number
const age = 25;
const price = 9.99;

// Boolean
const isActive = true;
const isHidden = false;

// Array
const colors = ['red', 'green', 'blue'];
console.log(colors[0]);  // 'red'
colors.push('yellow');   // add item

// Object
const user = {
  name: 'John',
  age: 25
};
console.log(user.name);  // 'John'
user.age = 26;           // change value

// null and undefined
let data = null;         // intentionally empty
let value;               // undefined (not set)
```

### Functions

```javascript
// Function declaration
function greet(name) {
  return `Hello ${name}`;
}

// Arrow function
const greet = (name) => {
  return `Hello ${name}`;
};

// Short arrow function
const greet = name => `Hello ${name}`;

// Calling functions
const message = greet('John');
```

### DOM Manipulation

```javascript
// Get elements
const el = document.getElementById('my-id');
const els = document.querySelectorAll('.my-class');
const btn = document.querySelector('#my-btn');

// Modify content
el.textContent = 'New text';
el.innerHTML = '<b>Bold text</b>';

// Modify attributes
el.id = 'new-id';
el.setAttribute('data-value', '123');
const value = el.getAttribute('data-value');

// Modify classes
el.classList.add('active');
el.classList.remove('active');
el.classList.toggle('active');
el.classList.contains('active');  // true/false

// Modify styles
el.style.color = 'red';
el.style.display = 'none';
el.style.backgroundColor = 'blue';  // camelCase!

// Create elements
const newDiv = document.createElement('div');
newDiv.textContent = 'Hello';
document.body.appendChild(newDiv);
```

### Event Listeners

```javascript
// Click
btn.addEventListener('click', () => {
  console.log('Clicked!');
});

// With event parameter
btn.addEventListener('click', (e) => {
  console.log('Clicked element:', e.target);
  e.preventDefault();  // stop default behavior
});

// Input change
input.addEventListener('change', (e) => {
  console.log('New value:', e.target.value);
});

// Mouse events
el.addEventListener('mouseenter', () => {});
el.addEventListener('mouseleave', () => {});
el.addEventListener('mousemove', () => {});

// Keyboard events
input.addEventListener('keydown', (e) => {
  console.log('Key pressed:', e.key);
});
```

### Conditionals

```javascript
// If/else
if (age >= 18) {
  console.log('Adult');
} else if (age >= 13) {
  console.log('Teen');
} else {
  console.log('Child');
}

// Ternary operator
const status = age >= 18 ? 'Adult' : 'Child';

// Switch
switch (color) {
  case 'red':
    console.log('Red');
    break;
  case 'blue':
    console.log('Blue');
    break;
  default:
    console.log('Other');
}
```

### Loops

```javascript
// For loop
for (let i = 0; i < 5; i++) {
  console.log(i);  // 0, 1, 2, 3, 4
}

// For...of (arrays)
const colors = ['red', 'green', 'blue'];
for (const color of colors) {
  console.log(color);
}

// forEach
colors.forEach(color => {
  console.log(color);
});

// While loop
let i = 0;
while (i < 5) {
  console.log(i);
  i++;
}
```

### Array Methods

```javascript
const numbers = [1, 2, 3, 4, 5];

// Map (transform each item)
const doubled = numbers.map(n => n * 2);  // [2, 4, 6, 8, 10]

// Filter (keep matching items)
const evens = numbers.filter(n => n % 2 === 0);  // [2, 4]

// Find (first matching item)
const first = numbers.find(n => n > 2);  // 3

// Reduce (accumulate value)
const sum = numbers.reduce((acc, n) => acc + n, 0);  // 15

// Some/Every
const hasEven = numbers.some(n => n % 2 === 0);  // true
const allEven = numbers.every(n => n % 2 === 0);  // false
```

---

## Canvas API Quick Reference

### Basic Setup

```javascript
const canvas = document.getElementById('my-canvas');
const ctx = canvas.getContext('2d');

// Set canvas size
canvas.width = 100;
canvas.height = 100;
```

### Drawing Shapes

```javascript
// Rectangle
ctx.fillStyle = 'red';
ctx.fillRect(x, y, width, height);       // filled
ctx.strokeRect(x, y, width, height);     // outline
ctx.clearRect(x, y, width, height);      // erase

// Line
ctx.beginPath();
ctx.moveTo(x1, y1);    // start point
ctx.lineTo(x2, y2);    // end point
ctx.stroke();          // draw

// Circle
ctx.beginPath();
ctx.arc(x, y, radius, 0, Math.PI * 2);
ctx.fill();
```

### Drawing Images

```javascript
// Simple draw
ctx.drawImage(img, x, y);

// Scale
ctx.drawImage(img, x, y, width, height);

// Crop and scale
ctx.drawImage(
  img,
  sourceX, sourceY, sourceWidth, sourceHeight,
  destX, destY, destWidth, destHeight
);
```

### Styles

```javascript
// Fill and stroke
ctx.fillStyle = 'red';      // fill color
ctx.strokeStyle = 'blue';   // line color
ctx.lineWidth = 2;          // line thickness

// Transparency
ctx.globalAlpha = 0.5;      // 50% transparent

// Image smoothing
ctx.imageSmoothingEnabled = true;
ctx.imageSmoothingQuality = 'high';  // 'low', 'medium', 'high'
```

### Getting Image Data

```javascript
// Get pixels
const imageData = ctx.getImageData(x, y, width, height);
const pixels = imageData.data;  // [r,g,b,a, r,g,b,a, ...]

// Modify pixels
for (let i = 0; i < pixels.length; i += 4) {
  pixels[i] = 255;      // red
  pixels[i + 1] = 0;    // green
  pixels[i + 2] = 0;    // blue
  pixels[i + 3] = 255;  // alpha
}

// Put pixels back
ctx.putImageData(imageData, x, y);
```

### Export

```javascript
// To data URL
const dataUrl = canvas.toDataURL('image/png');
const jpegUrl = canvas.toDataURL('image/jpeg', 0.95);  // quality 0-1

// To blob (async)
canvas.toBlob(blob => {
  // Use blob
}, 'image/png');
```

---

## Common Modifications

### Change Icon Size

```javascript
// 1. Update canvas HTML
<canvas id="icon-canvas" width="64" height="64"></canvas>

// 2. Update zoom canvases
<canvas id="zoom-2x" width="128" height="128"></canvas>
<canvas id="zoom-4x" width="256" height="256"></canvas>

// 3. Replace all instances of 48 with 64 in JavaScript
const SIZE = 64;  // Add this constant
// Then use SIZE instead of 48 throughout
```

### Add New Fit Mode

```javascript
// 1. Add button in HTML
<button class="fit-btn" data-fit="fill">Fill</button>

// 2. Handle in renderIcon()
if (fitMode === 'fill') {
  // Your custom logic
  const scale = Math.min(48 / iw, 48 / ih);
  // ...
}
```

### Add Image Filters

```javascript
// In renderIcon(), after drawing image:
const imageData = ctx.getImageData(0, 0, 48, 48);
const pixels = imageData.data;

// Grayscale
for (let i = 0; i < pixels.length; i += 4) {
  const avg = (pixels[i] + pixels[i+1] + pixels[i+2]) / 3;
  pixels[i] = pixels[i+1] = pixels[i+2] = avg;
}

// Brightness
const brightness = 1.2;  // 20% brighter
for (let i = 0; i < pixels.length; i += 4) {
  pixels[i] *= brightness;
  pixels[i+1] *= brightness;
  pixels[i+2] *= brightness;
}

ctx.putImageData(imageData, 0, 0);
```

### Support Multiple Image Types

```javascript
// Change file input
<input type="file" id="file-input" accept="image/*">

// Update validation
if (!file.type.match('image/(jpe?g|png|gif|webp)')) {
  setStatus('Unsupported file type', 'err');
  return;
}
```

### Add Keyboard Shortcuts

```javascript
document.addEventListener('keydown', (e) => {
  // Ctrl/Cmd + S to download
  if ((e.ctrlKey || e.metaKey) && e.key === 's') {
    e.preventDefault();
    downloadBtn.click();
  }
  
  // Number keys for fit modes
  if (e.key === '1') fitMode = 'cover';
  if (e.key === '2') fitMode = 'contain';
  if (e.key === '3') fitMode = 'stretch';
});
```

---

## Debugging Commands

### Console Logging

```javascript
// Basic log
console.log('Message');
console.log('Value:', variable);

// Multiple values
console.log('x:', x, 'y:', y);

// Table (for arrays/objects)
console.table(arrayOfObjects);

// Warnings and errors
console.warn('Warning message');
console.error('Error message');

// Timing
console.time('operation');
// ... code to measure
console.timeEnd('operation');

// Clear console
console.clear();
```

### Debugging Variables

```javascript
// Type check
console.log(typeof variable);  // 'string', 'number', 'object', etc.

// Check if defined
console.log(variable !== undefined);
console.log(variable !== null);

// Check array
console.log(Array.isArray(variable));

// Object keys
console.log(Object.keys(obj));

// JSON stringify (see full object)
console.log(JSON.stringify(obj, null, 2));
```

### Common Checks

```javascript
// Check if element exists
const el = document.getElementById('my-id');
if (!el) {
  console.error('Element not found!');
}

// Check if image loaded
if (!currentImage) {
  console.error('No image loaded');
  return;
}

// Check canvas context
const ctx = canvas.getContext('2d');
if (!ctx) {
  console.error('Canvas not supported');
}

// Check file type
console.log('File type:', file.type);
console.log('File size:', file.size, 'bytes');
```

### Browser DevTools

```javascript
// Open DevTools: F12 or Ctrl+Shift+I

// Console tab
//   - Type variable names to inspect them
//   - Run JavaScript commands
//   - See console.log() output

// Sources tab
//   - Click line numbers to add breakpoints
//   - Step through code with F10 (step over) and F11 (step into)
//   - Inspect variables in Scope panel

// Elements tab
//   - Inspect HTML structure
//   - View and modify CSS
//   - See event listeners

// Network tab
//   - See file loads
//   - Check for errors
```

---

## Helpful Snippets

### Download Helper Function

```javascript
function downloadFile(data, filename, type) {
  const blob = new Blob([data], { type });
  const url = URL.createObjectURL(blob);
  const link = document.createElement('a');
  link.download = filename;
  link.href = url;
  link.click();
  URL.revokeObjectURL(url);
}

// Usage
downloadFile('Hello', 'test.txt', 'text/plain');
```

### Load Image Helper

```javascript
function loadImage(url) {
  return new Promise((resolve, reject) => {
    const img = new Image();
    img.onload = () => resolve(img);
    img.onerror = reject;
    img.src = url;
  });
}

// Usage
const img = await loadImage('path/to/image.jpg');
```

### Debounce Function

```javascript
function debounce(func, delay) {
  let timeout;
  return (...args) => {
    clearTimeout(timeout);
    timeout = setTimeout(() => func(...args), delay);
  };
}

// Usage: Wait 300ms after user stops typing
input.addEventListener('input', debounce((e) => {
  console.log('Search:', e.target.value);
}, 300));
```

---

## Keyboard Shortcuts (Browser)

- `F12` or `Ctrl+Shift+I`: Open DevTools
- `Ctrl+Shift+C`: Inspect element
- `Ctrl+R` or `F5`: Refresh page
- `Ctrl+Shift+R`: Hard refresh (clear cache)
- `Ctrl+Plus/Minus`: Zoom in/out
- `Ctrl+0`: Reset zoom

## Math Helpers

```javascript
// Clamp value between min and max
const clamp = (val, min, max) => Math.min(Math.max(val, min), max);

// Linear interpolation
const lerp = (a, b, t) => a + (b - a) * t;

// Map value from one range to another
const map = (val, inMin, inMax, outMin, outMax) => {
  return (val - inMin) * (outMax - outMin) / (inMax - inMin) + outMin;
};

// Distance between two points
const distance = (x1, y1, x2, y2) => {
  return Math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2);
};
```

---

## Resources

- **MDN Web Docs**: https://developer.mozilla.org/
- **Can I Use**: https://caniuse.com/ (browser compatibility)
- **Stack Overflow**: https://stackoverflow.com/
- **JavaScript.info**: https://javascript.info/
- **CSS-Tricks**: https://css-tricks.com/
