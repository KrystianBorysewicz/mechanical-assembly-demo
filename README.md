# Mechanical Assembly Demo

An interactive Three.js demo showing how three components assemble into the final product.

- **Drag** a part so it overlaps its glowing ghost target.
- **Release** while it covers the target — it snaps 30 cm above, then **screws** down into place (720° / 2 turns, ~3 s).
- **Click** an assembled part to **unscrew** it and send it back.
- The base part starts pre-assembled and locked in place.
- Orbit with drag on empty space, zoom with scroll. **Assemble all** / **Reset** buttons included.

## Run locally

Browsers block loading `parts.fbx` from a raw `file://` page, so serve the folder over HTTP:

```
py -m http.server 8000
```

then open <http://localhost:8000/>. On Windows you can just double-click `start.bat`.

## Tech

- [three.js](https://threejs.org/) r160 (loaded from the jsDelivr CDN via an import map)
- `FBXLoader` for the model, `OrbitControls`, `RoomEnvironment` for reflections
- Single self-contained `index.html`; the only asset is `parts.fbx`
