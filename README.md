# mcr-mods-opencost-plugin

**BETA – For testing purposes only!**

This MyCoRe plugin adds basic openCost support to MODS records and provides an initial editor UI and OAI integration.  
The implementation is still experimental and subject to change.

---

## Installation & Usage in UBO / MIR

1. Check out the plugin from your repository.
2. Build it locally:
   ```bash
   mvn clean install
   ```
3. Copy the generated JAR file into the `lib` directory of your MyCoRe installation.  
4. **Important:** When using the plugin in **UBO**, the configured `MIR.EditorForms.CustomIncludes` is **not** applied.

## Current Implementation Status

- Embeds openCost information in `mods:extension/@type="openCost"`.
- Provides an editor form for capturing openCost metadata.
- Adds an OAI set and a `mods2opencost` stylesheet for exporting the metadata.

---

## ToDos / Planned Extensions

- Add DataCite extensions according to the OpenCost specification  
  (see: <https://github.com/opencost-de/opencost/blob/main/doc/datacite/examples/datacite_minimal.xml>).
- Extend functionality with **Contract** support (classification alone is not sufficient).
- Expand towards the full internal representation format: openCost_intern
