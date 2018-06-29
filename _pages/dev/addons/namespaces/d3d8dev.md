---
permalink: /dev/addons/namespaces/d3d8dev/
title: "Namespace: d3d8dev"
toc: true
---

The `d3d8dev` namespace contains functions that implement the IDirect3DDevice8 interface from the Direct3D SDK. These functions are adjusted to specifically work with the current IDirect3DDevice8 interface of the game client. Meaning, you do not need to pass the pointer to the device for these calls.

Due to Lua limitations with variables passed as references or pointers, things are handled a little differently for some of these functions. These try to closely match the Direct3D interface from C as close as possible to it is easy to understand. If a function expects a parameter that would normally hold a result, it is instead returned as an additional return value. For example:

```lua
-- In C++
IDirect3DVertexBuffer8* buffer = nullptr;
const auto res = g_Direct3DDevice8->CreateVertexBuffer(0x2D0, 0x00000008, 0x102, 0x01, &buffer);

-- In Lua
local hres, buffer = ashita.d3d8dev.CreateVertexBuffer(0x2D0, 0x00000008, 0x102, 0x01);
```

There are a few other special cases for this interface on some calls. Please be sure to read the documentation carefully to spot the differences! Some functions are not implemented as well due to limitations with how the API can interact with the game client. For example, `IDirect3DDevice8::Reset` is not implemented because FFXi is designed to crash out on device reset as part of their original anti-alt-tab methods.

You can access this namespace via:
```lua
ashita.d3d8dev.
```

Below are the functions available in this namespace.

---

## IDirect3DDevice8 Interface Functions

### QueryInterface

Determines whether the object supports a particular COM interface.
```lua
function ashita.d3d8dev.QueryInterface(iid);
```

 * **Parameters**
   * iid - (string) The iid to query for.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The queried object on success, nil otherwise.

---

### AddRef

Increases the reference count of the object by 1.
```lua
function ashita.d3d8dev.AddRef(); -- Uses the IDirect3DDevice8 interface directly.
function ashita.d3d8dev.AddRef(parent); -- Uses the given parent object.
```

 * **Parameters**
   * parent - (object) The parent object. (If using override implementation.)
 * **Returns**
   * number - The reference count of the object.

---

### Release

Decreases the reference count of the object by 1.
```lua
function ashita.d3d8dev.Release(); -- Uses the IDirect3DDevice8 interface directly.
function ashita.d3d8dev.Release(parent); -- Uses the given parent object.
```

 * **Parameters**
   * parent - (object) The parent object. (If using override implementation.)
 * **Returns**
   * number - The reference count of the object.

---

### TestCooperativeLevel

Reports the current cooperative-level status of the Microsoft® Direct3D® device for a windowed or full-screen application.
```lua
function ashita.d3d8dev.TestCooperativeLevel();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The current cooperative-level status.

---

### GetAvailableTextureMem

Returns an estimate of the amount of available texture memory.
```lua
function ashita.d3d8dev.GetAvailableTextureMem();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The estimated amount of available texture memory.

---

### ResourceManagerDiscardBytes

Invokes the resource manager to free memory. 
```lua
function ashita.d3d8dev.GetAvailableTextureMem(bytes);
```

 * **Parameters**
   * bytes - (number) The number of bytes to free.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetDeviceCaps

Retrieves the capabilities of the rendering device.
```lua
function ashita.d3d8dev.GetDeviceCaps();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DCAPS8 structure of the device on success, nil otherwise.

---

### GetDisplayMode

Retrieves the display mode's spatial resolution, color resolution, and refresh frequency.
```lua
function ashita.d3d8dev.GetDisplayMode();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DDISPLAYMODE structure of the device on success, nil otherwise.

---

### GetCreationParameters

Retrieves the creation parameters of the device.
```lua
function ashita.d3d8dev.GetCreationParameters();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DDEVICE_CREATION_PARAMETERS structure of the device on success, nil otherwise.

---

### SetCursorProperties

Sets properties for the cursor.
```lua
function ashita.d3d8dev.SetCursorProperties(XHotSpot, YHotSpot, pCursorBitmap);
```

 * **Parameters**
   * XHotSpot - (number) The x hotspot of the cursor.
   * YHotSpot - (number) The y hotspot of the cursor.
   * pCursorBitmap - (object) The surface of the cursor bitmap.
 * **Returns**
   * number - The HRESULT of the call.

---

### SetCursorPosition

Sets the cursor position and update options.
```lua
function ashita.d3d8dev.SetCursorPosition(X, Y, Flags);
```
 * **Parameters**
   * X - (number) The x position of the cursor.
   * Y - (number) The y position of the cursor.
   * Flags - (number) The update flags of the cursor.
 * **Returns**
   * None.

---

### ShowCursor

Displays or hides the cursor.
```lua
function ashita.d3d8dev.ShowCursor(bShow);
```
 * **Parameters**
   * bShow - (bool) Flag stating if the cursor should be shown or not.
 * **Returns**
   * bool - True if the cursor was previously visible, false otherwise.

---

### Present

Presents the contents of the next in the sequence of back buffers owned by the device. 
```lua
function ashita.d3d8dev.Present(pSourceRect, pDestRect, hDestWindowOverride, pDirtyRegion);
```
 * **Parameters**
   * pSourceRect - (object) The source rect to present from, or nil.
   * pDestRect - (object) The destination rect to present to, or nil.
   * hDestWindowOverride - (object) The override window handle to present into, or nil.
   * pDirtyRegion - (object) The dirty region, or nil.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetBackBuffer

Retrieves a back buffer from the device's swap chain.
```lua
function ashita.d3d8dev.GetBackBuffer(BackBuffer, Type);
```

 * **Parameters**
   * BackBuffer - (number) The back buffer index to obtain.
   * Type - (number) The back buffer type to obtain.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped back buffer surface on success, nil otherwise..

---

### GetRasterStatus

Returns information describing the raster of the monitor on which the swap chain is presented.
```lua
function ashita.d3d8dev.GetRasterStatus();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DRASTER_STATUS structure of the device on success, nil otherwise.

---

### SetGammaRamp

Sets the gamma correction ramp for the implicit swap chain.
```lua
function ashita.d3d8dev.SetGammaRamp(Flags, pRamp);
```

 * **Parameters**
   * Flags - (number) Indicates whether correction should be applied. 
   * pRamp - (object) The ramp table containing `red`, `green`, `blue` tables holding the gamma ramp data.
 * **Returns**
   * None.

---

### GetGammaRamp

Retrieves the gamma correction ramp for the swap chain.
```lua
function ashita.d3d8dev.GetGammaRamp();
```

 * **Parameters**
   * None.
 * **Returns**
   * table\|nil - A table containing `red`, `green`, `blue` tables holding the gamma ramp data on success, nil otherwise.

---

### CreateTexture

Creates a texture resource.
```lua
function ashita.d3d8dev.CreateTexture(Width, Height, Levels, Usage, Format, Pool);
```

 * **Parameters**
   * Width - (number) The width of the texture.
   * Height - (number) The height of the texture.
   * Levels - (number) The texture levels count.
   * Usage - (number) The texture usage flags.
   * Format - (number) The texture format type.
   * Pool - (number) The texture pool type.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped texture object on success, nil otherwise.

---

### CreateVolumeTexture

Creates a volume texture resource.
```lua
function ashita.d3d8dev.CreateVolumeTexture(Width, Height, Depth, Levels, Usage, Format, Pool);
```

 * **Parameters**
   * Width - (number) The width of the texture.
   * Height - (number) The height of the texture.
   * Depth - (number) The depth of the texture.
   * Levels - (number) The texture levels count.
   * Usage - (number) The texture usage flags.
   * Format - (number) The texture format type.
   * Pool - (number) The texture pool type.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped volume texture object on success, nil otherwise.

---

### CreateCubeTexture

Creates a cube texture resource.
```lua
function ashita.d3d8dev.CreateCubeTexture(EdgeLength, Levels, Usage, Format, Pool);
```

 * **Parameters**
   * EdgeLength - (number) The texture edge length.
   * Levels - (number) The texture levels count.
   * Usage - (number) The texture usage flags.
   * Format - (number) The texture format type.
   * Pool - (number) The texture pool type.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped cube texture object on success, nil otherwise.

---

### CreateVertexBuffer

Creates a vertex buffer.
```lua
function ashita.d3d8dev.CreateVertexBuffer(Length, Usage, FVF, Pool);
```

 * **Parameters**
   * Length - (number) The length of the buffer.
   * Usage - (number) The usage type of the buffer.
   * FVF - (number) The vertex format flags of the buffer.
   * Pool - (number) The pool type of the buffer.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped vertex buffer object on success, nil otherwise.

---

### CreateIndexBuffer

Creates an index buffer.
```lua
function ashita.d3d8dev.CreateIndexBuffer(Length, Usage, Format, Pool);
```

 * **Parameters**
   * Length - (number) The length of the buffer.
   * Usage - (number) The usage type of the buffer.
   * Format - (number) The format of the buffer.
   * Pool - (number) The pool type of the buffer.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped index buffer object on success, nil otherwise.

---

### CreateRenderTarget

Creates a render target surface.
```lua
function ashita.d3d8dev.CreateRenderTarget(Width, Height, Format, MultiSample, Lockable);
```

 * **Parameters**
   * Width - (number) The width of the render target.
   * Height - (number) The height of the render target.
   * Format - (number) The format of the render target.
   * MultiSample - (number) The mutlisample type of the render target.
   * Lockable - (bool) True if lockable, false otherwise.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped surface object on success, nil otherwise.

---

### CreateDepthStencilSurface

Creates a depth-stencil resource.
```lua
function ashita.d3d8dev.CreateDepthStencilSurface(Width, Height, Format, MultiSample);
```

 * **Parameters**
   * Width - (number) The width of the surface.
   * Height - (number) The height of the surface.
   * Format - (number) The format of the surface.
   * MultiSample - (number) The mutlisample type of the surface.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped surface object on success, nil otherwise.

---

### CreateImageSurface

Creates an image surface.
```lua
function ashita.d3d8dev.CreateImageSurface(Width, Height, Format);
```

 * **Parameters**
   * Width - (number) The width of the surface.
   * Height - (number) The height of the surface.
   * Format - (number) The format of the surface.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped surface object on success, nil otherwise.

---

### CopyRects

Copies rectangular subsets of pixels from one surface to another.
```lua
function ashita.d3d8dev.CopyRects(pSourceSurface, pSourceRectsArray, cRects, pDestinationSurface, pDestPointsArray);
```

 * **Parameters**
   * pSourceSurface - (object) The source surface to copy from.
   * pSourceRectsArray - (object) The table of RECT objects containing the rects to copy.
   * cRects - (number) The number of rects within the source array.
   * pDestinationSurface - (object) The destination surface to copy to.
   * pDestPointsArray - (object) The table of POINT objects containing the points to copy the rect data to.
 * **Returns**
   * number - The HRESULT of the call.

---

### UpdateTexture

Updates the dirty portions of a texture.
```lua
function ashita.d3d8dev.UpdateTexture(pSourceTexture, pDestinationTexture);
```

 * **Parameters**
   * pSourceTexture - (object) The source texture to update from.
   * pDestinationTexture - (object) The destination texture to update into.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetFrontBuffer

Generates a copy of the device's front buffer and places that copy in a system memory buffer provided by the application. 
```lua
function ashita.d3d8dev.GetFrontBuffer(pDestSurface);
```

 * **Parameters**
   * pDestSurface - (object) The destination surface to obtain the front buffer.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped surface containing the front buffer on success, nil otherwise.

**Note:** The returned wrapped surface is the pDestSurface that was passed to this function, but in a wrapped object. You should pass a raw surface to this function, not a pre-wrapped one!
{: .notice--info}

---

### SetRenderTarget

Sets a new color buffer, depth buffer, or both for the device.
```lua
function ashita.d3d8dev.SetRenderTarget(pRenderTarget, pNewZStencil);
```

 * **Parameters**
   * pRenderTarget - (object) The new surface to set the render target to.
   * pNewZStencil - (object) The new Z stencil surface to set.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetRenderTarget

Retrieves a pointer to the Microsoft® Direct3D® surface that is being used as a render target.
```lua
function ashita.d3d8dev.GetRenderTarget();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped surface containing the render target on success, nil otherwise.

---

### GetDepthStencilSurface

Retrieves the depth-stencil surface owned by the Direct3DDevice object.
```lua
function ashita.d3d8dev.GetDepthStencilSurface();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped surface containing the depth stencil on success, nil otherwise.

---

### BeginScene

Begins a scene.
```lua
function ashita.d3d8dev.BeginScene();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.

---

### EndScene

Ends a scene that was begun by calling the IDirect3DDevice8::BeginScene method.
```lua
function ashita.d3d8dev.EndScene();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.

---

### Clear

Clears the viewport, or a set of rectangles in the viewport, to a specified RGBA color, clears the depth buffer, and erases the stencil buffer.
```lua
function ashita.d3d8dev.Clear(Count, pRects, Flags, Color, Z, Stencil);
```

 * **Parameters**
   * Count - (number) The count of rects within the pRects table.
   * pRects - (object) Table of D3DRECT objects.
   * Flags - (number) The clear flags to use while clearing.
   * Color - (number) The color to use while clearing.
   * Z - (number) The new Z value to store in the depth buffer.
   * Stencil - (number) The stencil value to store in each stencil-buffer entry.
 * **Returns**
   * number - The HRESULT of the call.

---

### SetTransform

Sets a single device transformation-related state.
```lua
function ashita.d3d8dev.SetTransform(State, pMatrix);
```

 * **Parameters**
   * State - (number) The transform state type to use.
   * pMatrix - (object) The D3DMATRIX object to set the transform to, or nil.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetTransform

Retrieves a matrix describing a transformation state.
```lua
function ashita.d3d8dev.GetTransform(State);
```

 * **Parameters**
   * State - (number) The transform state type to get.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DMATRIX of the transform on success, nil otherwise.

---

### MultiplyTransform

Multiplies a device's world, view, or projection matrices by a specified matrix. 
```lua
function ashita.d3d8dev.MultiplyTransform(State, pMatrix);
```

 * **Parameters**
   * State - (number) The transform state type to use.
   * pMatrix - (object) The D3DMATRIX object to multiply against.
 * **Returns**
   * number - The HRESULT of the call.

---

### SetViewport

Sets the viewport parameters for the device.
```lua
function ashita.d3d8dev.SetViewport(pViewport);
```

 * **Parameters**
   * pViewport - (object) The viewport object to set the view to.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetViewport

Retrieves the viewport parameters currently set for the device.
```lua
function ashita.d3d8dev.GetViewport();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DVIEWPORT8 object on success, nil otherwise.

---

### SetMaterial

Sets the material properties for the device.
```lua
function ashita.d3d8dev.SetMaterial(pMaterial);
```

 * **Parameters**
   * pMaterial - (object) The material to set.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetMaterial

Retrieves the current material properties for the device.
```lua
function ashita.d3d8dev.GetMaterial();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DMATERIAL8 object on success, nil otherwise.

---

### SetLight

Assigns a set of lighting properties for this device.
```lua
function ashita.d3d8dev.SetLight(Index, pLight);
```

 * **Parameters**
   * Index - (number) The light index to set.
   * pLight - (object) The D3DLIGHT8 object to set the light to.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetLight

Retrieves a set of lighting properties that this device uses.
```lua
function ashita.d3d8dev.GetLight(Index);
```

 * **Parameters**
   * Index - (number) The light index to get.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DLIGHT8 object on success, nil otherwise.

---

### LightEnable

Enables or disables a set of lighting parameters within a device.
```lua
function ashita.d3d8dev.LightEnable(Index, Enable);
```

 * **Parameters**
   * Index - (number) The light index to set.
   * Enable - (bool) Flag if the light is enabled or not.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetLightEnable

Retrieves the activity status—enabled or disabled—for a set of lighting parameters within a device.
```lua
function ashita.d3d8dev.GetLightEnable(Index);
```

 * **Parameters**
   * Index - (number) The light index to get.
 * **Returns**
   * number - The HRESULT of the call.
   * bool\|nil - True if the light is enabled, false otherwise, nil on error.

---

### SetClipPlane

Sets the coefficients of a user-defined clipping plane for the device.
```lua
function ashita.d3d8dev.SetClipPlane(Index, pPlane);
```

 * **Parameters**
   * Index - (number) The plane index to  set.
   * pPlane - (table) A table four floats defining the plane. (`x`, `y`, `z`, `w`)
 * **Returns**
   * number - The HRESULT of the call.

---

### GetClipPlane

Retrieves the coefficients of a user-defined clipping plane for the device.
```lua
function ashita.d3d8dev.GetClipPlane(Index);
```

 * **Parameters**
   * Index - (number) The plane index to  set.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - A table four floats defining the plane on success (`x`, `y`, `z`, `w`), nil otherwise.

---

### SetRenderState

Sets a single device render-state parameter.
```lua
function ashita.d3d8dev.SetRenderState(State, Value);
```

 * **Parameters**
   * State - (number) The render state to set.
   * Value - (number) The value to set the render state to.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetRenderState

Retrieves a render-state value for a device.
```lua
function ashita.d3d8dev.GetRenderState(State);
```

 * **Parameters**
   * State - (number) The render state to get.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The render state value on success, nil otherwise.

---

### BeginStateBlock

Signals Microsoft® Direct3D® to begin recording a device-state block.
```lua
function ashita.d3d8dev.BeginStateBlock();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.

---

### EndStateBlock

Signals Microsoft® Direct3D® to stop recording a device-state block and retrieve a handle to the state block.
```lua
function ashita.d3d8dev.EndStateBlock();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The state block token on success, nil otherwise.

---

### ApplyStateBlock

Applies an existing device-state block to the rendering device.
```lua
function ashita.d3d8dev.ApplyStateBlock(Token);
```

 * **Parameters**
   * Token - (number) The state block token to apply.
 * **Returns**
   * number - The HRESULT of the call.

---

### CaptureStateBlock

Updates the values within an existing state block to the values set for the device.
```lua
function ashita.d3d8dev.CaptureStateBlock(Token);
```

 * **Parameters**
   * Token - (number) The state block token to capture.
 * **Returns**
   * number - The HRESULT of the call.

---

### DeleteStateBlock

Deletes a previously recorded device-state block.
```lua
function ashita.d3d8dev.DeleteStateBlock(Token);
```

 * **Parameters**
   * Token - (number) The state block token to delete.
 * **Returns**
   * number - The HRESULT of the call.

---

### CreateStateBlock

Creates a new state block that contains the values for all device states, vertex-related states, or pixel-related states.
```lua
function ashita.d3d8dev.CreateStateBlock(Type);
```

 * **Parameters**
   * Type - (number) The state block type to create.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The state block token on success, nil otherwise.

---

### SetClipStatus

Sets the clip status.
```lua
function ashita.d3d8dev.SetClipStatus(pClipStatus);
```

 * **Parameters**
   * pClipStatus - (object) The clip status object to set.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetClipStatus

Retrieves the clip status.
```lua
function ashita.d3d8dev.GetClipStatus();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The D3DCLIPSTATUS8 object on success, nil otherwise.

---

### GetTexture

Retrieves a texture assigned to a stage for a device.
```lua
function ashita.d3d8dev.GetTexture(Stage);
```

 * **Parameters**
   * Stage - (number) The stage number to obtain the texture of.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped base texture object on success, nil otherwise.

---

### SetTexture

Assigns a texture to a stage for a device.
```lua
function ashita.d3d8dev.SetTexture(Stage, pTexture);
```

 * **Parameters**
   * Stage - (number) The stage number to set the texture of.
   * pTexture - (object) The texture to set the stage to.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetTextureStageState

Retrieves a state value for an assigned texture.
```lua
function ashita.d3d8dev.GetTextureStageState(Stage, Type);
```

 * **Parameters**
   * Stage - (number) The stage number to obtain the state of.
   * Type - (number) The type of stage state to obtain.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The state value on success, nil otherwise.

---

### SetTextureStageState

Sets the state value for the currently assigned texture.
```lua
function ashita.d3d8dev.SetTextureStageState(Stage, Type, Value);
```

 * **Parameters**
   * Stage - (number) The stage number to set the state of.
   * Type - (number) The texture stage type to set.
   * Value - (number) The stage state value to set.
 * **Returns**
   * number - The HRESULT of the call.

---

### ValidateDevice

Reports the device's ability to render the current texture-blending operations and arguments in a single pass.
```lua
function ashita.d3d8dev.ValidateDevice();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The number of passes on success, nil otherwise.

---

### GetInfo

Retrieves information about the rendering device. 

**Note:** This function is not yet implemented and will always return invalid device or invalid call.
{: .notice--warning}

---

### SetPaletteEntries

Sets palette entries.
```lua
function ashita.d3d8dev.SetPaletteEntries(PaletteNumber, pEntries);
```

 * **Parameters**
   * PaletteNumber - (number) The palette number to set.
   * pEntries - (object) The table of palette entries to set, or nil.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetPaletteEntries

Retrieves palette entries.
```lua
function ashita.d3d8dev.GetPaletteEntries(PaletteNumber);
```

 * **Parameters**
   * PaletteNumber - (number) The palette number to obtain the entries of.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - The table of palette entries on success, nil otherwise.

---

### SetCurrentTexturePalette

Sets the current texture palette.
```lua
function ashita.d3d8dev.SetCurrentTexturePalette(PaletteNumber);
```

 * **Parameters**
   * PaletteNumber - (number) The palette number to set.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetCurrentTexturePalette

Retrieves the current texture palette.
```lua
function ashita.d3d8dev.GetCurrentTexturePalette();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The current palette number on success, nil otherwise.

---

### DrawPrimitive

Renders a sequence of nonindexed, geometric primitives of the specified type from the current set of data input streams.
```lua
function ashita.d3d8dev.DrawPrimitive(PrimitiveType, StartVertex, PrimitiveCount);
```

 * **Parameters**
   * PrimitiveType - (number) The primitive type.
   * StartVertex - (number) The starting vertex.
   * PrimitiveCount - (number) The count of primitives.
 * **Returns**
   * number - The HRESULT of the call.

---

### DrawIndexedPrimitive

Renders the indexed geometric primitive into an array of vertices.
```lua
function ashita.d3d8dev.DrawIndexedPrimitive(PrimitiveType, MinIndex, NumVertices, StartIndex, PrimCount);
```

 * **Parameters**
   * PrimitiveType - (number) The primitive type.
   * MinIndex - (number) The minimum primitive index.
   * NumVertices - (number) The number of vertices.
   * StartIndex - (number) The starting index.
   * PrimCount - (number) The primitive count.
 * **Returns**
   * number - The HRESULT of the call.

---

### DrawPrimitiveUP

Renders data specified by a user memory pointer as a sequence of geometric primitives of the specified type.
```lua
function ashita.d3d8dev.DrawPrimitiveUP(PrimitiveType, PrimCount, pVertexStreamZeroData, VertexStreamZeroStride, VertexDefinition);
```

 * **Parameters**
   * PrimitiveType - (number) The primitive type.
   * PrimitiveCount - (number) The count of primitives.
   * pVertexStreamZeroData - (object) A table containing the various vertex data.
   * VertexStreamZeroStride - (number) The stride between each vertex data.
   * VertexDefinition - (object) A custom table holding a vertex defintion setup to allow Lua to use unknown sized verticies.
 * **Returns**
   * number - The HRESULT of the call.

**Note:** This function takes a custom argument (`VertexDefinition`) to allow Lua to handle things properly. Because vertex data is generally unknown as a passed pointer, Lua has to define what the data is.
{: .notice--warning}

---

### DrawIndexedPrimitiveUP

Renders the specified geometric primitive with data specified by a user memory pointer.
```lua
function ashita.d3d8dev.DrawIndexedPrimitiveUP(PrimitiveType, MinVertexIndex, NumVertexIndices, PrimitiveCount, pIndexData, IndexDataFormat, pVertexStreamZeroData, VertexStreamZeroStride, VertexDefinition);
```

 * **Parameters**
   * PrimitiveType - (number) The primitive type.
   * MinVertexIndex - (number) The minimum vertex index.
   * NumVertexIndices - (number) The number of vertex indicies.
   * PrimitiveCount - (number) The count of primitives.
   * pIndexData - (object) Table containing the index data entries.
   * IndexDataFormat - (number) The index data format of the pIndexData.
   * pVertexStreamZeroData - (object) A table containing the various vertex data.
   * VertexStreamZeroStride - (number) The stride between each vertex data.
   * VertexDefinition - (object) A custom table holding a vertex defintion setup to allow Lua to use unknown sized verticies.
 * **Returns**
   * number - The HRESULT of the call.

**Note:** This function takes a custom argument (`VertexDefinition`) to allow Lua to handle things properly. Because vertex data is generally unknown as a passed pointer, Lua has to define what the data is.
{: .notice--warning}

---

### ProcessVertices

Applies the vertex processing defined by the vertex shader to the set of input data streams, generating a single stream of interleaved vertex data to the destination vertex buffer. 
```lua
function ashita.d3d8dev.ProcessVertices(SrcStartIndex, DestIndex, VertexCount, pDestBuffer, Flags);
```

 * **Parameters**
   * SrcStartIndex - (number) The index of the first vertex to load.
   * DestIndex - (number) The index of the first vertex in the destination buffer where the results are placed.
   * VertexCount - (number) The number of vertices to process.
   * pDestBuffer - (object) The vertex buffer object to hold the results.
   * Flags - (number) The processing flags to use.
 * **Returns**
   * number - The HRESULT of the call.

---

### CreateVertexShader

Creates a vertex shader.
```lua
function ashita.d3d8dev.CreateVertexShader(pDeclaration, pFunction, Usage);
```

 * **Parameters**
   * pDeclaration - (object) The table holding the vertex declaration.
   * pFunction - (object) The buffer object holding the vertex function.
   * Usage - (number) The usage flags.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The shader handle on success, nil otherwise.

---

### SetVertexShader

Sets the current vertex shader to a previously created vertex shader or to a flexible vertex format (FVF) fixed function shader.
```lua
function ashita.d3d8dev.SetVertexShader(Handle);
```

 * **Parameters**
   * Handle - (number) The vertex shader handle to set.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetVertexShader

Retrieves the currently set vertex shader.
```lua
function ashita.d3d8dev.GetVertexShader();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The current vertex shader handle on success, nil otherwise.

---

### DeleteVertexShader

Deletes the vertex shader referred to by the specified handle and frees up the associated resources.
```lua
function ashita.d3d8dev.DeleteVertexShader(Handle);
```

 * **Parameters**
   * Handle - (number) The handle of the vertex shader to delete.
 * **Returns**
   * number - The HRESULT of the call.

---

### SetVertexShaderConstant

Sets values in the vertex constant array.
```lua
function ashita.d3d8dev.SetVertexShaderConstant(Register, pConstantData, ConstantCount);
```

 * **Parameters**
   * Register - (number) The vertex shader register to set.
   * pConstantData - (object) The table of the constant data to set.
   * ConstantCount - (number) The count of constant data entries.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetVertexShaderConstant

Retrieves the values in the vertex constant array.
```lua
function ashita.d3d8dev.GetVertexShaderConstant(Register, ConstantCount);
```

 * **Parameters**
   * Register - (number) The vertex shader register to obtain the value of.
   * ConstantCount - (number) The entry count of data to obtain.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - A table containing the shader constants on success, nil otherwise.

---

### GetVertexShaderDeclaration

Retrieves the vertex shader declaration token array.
```lua
function ashita.d3d8dev.GetVertexShaderDeclaration(Handle);
```

 * **Parameters**
   * Handle - (number) The vertex shader handle.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - The vertex shader declaration table on success, nil otherwise.

---

### GetVertexShaderFunction

Retrieves the vertex shader function.
```lua
function ashita.d3d8dev.GetVertexShaderFunction(Handle);
```

 * **Parameters**
   * Handle - (number) The vertex shader handle.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - The vertex shader function table on success, nil otherwise.

---

### SetStreamSource

Binds a vertex buffer to a device data stream.
```lua
function ashita.d3d8dev.SetStreamSource(StreamNumber, pStreamData, Stride);
```

 * **Parameters**
   * StreamNumber - (number) The data stream to set.
   * pStreamData - (object) The vertex buffer holding the stream data to set.
   * Stride - (number) The stride of the vertex data.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetStreamSource

Retrieves a vertex buffer bound to the specified data stream.
```lua
function ashita.d3d8dev.GetStreamSource(StreamNumber);
```

 * **Parameters**
   * StreamNumber - (number) The stream number to obtain the source of.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped vertex buffer on success, nil otherwise.
   * number\|nil - The stream stride on success, nil otherwise.

---

### SetIndices

Sets index data.
```lua
function ashita.d3d8dev.SetIndices(pIndexData, BaseVertexIndex);
```

 * **Parameters**
   * pIndexData - (object) The index data buffer.
   * BaseVertexIndex - (number) The base vertex index.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetIndices

Retrieves index data.
```lua
function ashita.d3d8dev.GetIndices();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped index buffer on success, nil otherwise.
   * number\|nil - The base vertex index on success, nil otherwise.

---

### CreatePixelShader

Creates a pixel shader.
```lua
function ashita.d3d8dev.CreatePixelShader(pFunction);
```

 * **Parameters**
   * pFunction - (object) The buffer object holding the pixel shader function.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The pixel shader handle on success, nil otherwise.

---

### SetPixelShader

Sets the current pixel shader to a previously created pixel shader.
```lua
function ashita.d3d8dev.SetPixelShader(Handle);
```

 * **Parameters**
   * Handle - (number) The pixel shader handle to set.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetPixelShader

Retrieves the currently set pixel shader.
```lua
function ashita.d3d8dev.GetPixelShader();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The current pixel shader handle on success, nil otherwise.

---

### DeletePixelShader

Deletes the pixel shader referred to by the specified handle.
```lua
function ashita.d3d8dev.DeletePixelShader(Handle);
```

 * **Parameters**
   * Handle - (number) The handle of the pixel shader to delete.
 * **Returns**
   * number - The HRESULT of the call.

---

### SetPixelShaderConstant

Sets the values in the pixel constant array.
```lua
function ashita.d3d8dev.SetPixelShaderConstant(Register, pConstantData, ConstantCount);
```

 * **Parameters**
   * Register - (number) The pixel shader register to set.
   * pConstantData - (object) The table of the constant data to set.
   * ConstantCount - (number) The count of constant data entries.
 * **Returns**
   * number - The HRESULT of the call.

---

### GetPixelShaderConstant

Retrieves the values in the pixel constant array.
```lua
function ashita.d3d8dev.GetPixelShaderConstant(Register, ConstantCount);
```

 * **Parameters**
   * Register - (number) The pixel shader register to obtain the value of.
   * ConstantCount - (number) The entry count of data to obtain.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - A table containing the pixel shader constants on success, nil otherwise.

---

### GetPixelShaderFunction

Retrieves the pixel shader function.
```lua
function ashita.d3d8dev.GetPixelShaderFunction(Handle);
```

 * **Parameters**
   * Handle - (number) The pixel shader handle.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - The pixel shader function table on success, nil otherwise.

---

### DrawRectPatch

Draws a rectangular high-order patch using the currently set streams.
```lua
function ashita.d3d8dev.DrawRectPatch(Handle, pNumSegs, pRectPatchInfo);
```

 * **Parameters**
   * Handle - (number) The handle to the rectangular high-order patch to draw.
   * pNumSegs - (object) A table containing 4 floats.
   * pRectPatchInfo - (object) The D3DRECTPATCH_INFO object describing the patch to draw.
 * **Returns**
   * number - The HRESULT of the call.

---

### DrawTriPatch

Draws a triangular high-order patch using the currently set streams.
```lua
function ashita.d3d8dev.DrawTriPatch(Handle, pNumSegs, pTriPatchInfo);
```

 * **Parameters**
   * Handle - (number) The handle to the rectangular high-order patch to draw.
   * pNumSegs - (object) A table containing 4 floats.
   * pTriPatchInfo - (object) The D3DTRIPATCH_INFO object describing the patch to draw.
 * **Returns**
   * number - The HRESULT of the call.

---

### DeletePatch

Frees a cached high-order patch.
```lua
function ashita.d3d8dev.DeletePatch(Handle);
```

 * **Parameters**
   * Handle - (number) The handle to the high-order patch to delete.
 * **Returns**
   * number - The HRESULT of the call.

---

## IDirect3DResource8 Interface Functions

### IDirect3DResource8_QueryInterface

Determines whether the object supports a particular COM interface.
```lua
function ashita.d3d8dev.IDirect3DResource8_QueryInterface(parent, iid);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * iid - (string) The iid to query for.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The queried object on success, nil otherwise.

---

### IDirect3DResource8_AddRef

Increases the reference count of the object by 1.
```lua
function ashita.d3d8dev.IDirect3DResource8_AddRef(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The reference count of the object.

---

### IDirect3DResource8_Release

Decreases the reference count of the object by 1.
```lua
function ashita.d3d8dev.IDirect3DResource8_Release(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The reference count of the object.

---

### IDirect3DResource8_SetPrivateData

Associates data with the resource that is intended for use by the application, not by Microsoft® Direct3D®. Data is passed by value, and multiple sets of data can be associated with a single resource.
```lua
function ashita.d3d8dev.IDirect3DResource8_SetPrivateData(parent, refguid, data, SizeOfData, Flags);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * refguid - (string) The guid of the data to set. 
   * data - (object) A table containing bytes of the data to set.
   * SizeOfData - (number) The size of the table of data.
   * Flags - (number) The flags that describe the data.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DResource8_GetPrivateData

Copies the private data associated with the resource to a provided buffer.
```lua
function ashita.d3d8dev.IDirect3DResource8_GetPrivateData(parent, refguid);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * refguid - (string) The guid of the data to get.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - The table of data in bytes on success, nil otherwise.

---

### IDirect3DResource8_FreePrivateData

Frees the specified private data associated with this resource.
```lua
function ashita.d3d8dev.IDirect3DResource8_FreePrivateData(parent, refguid);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * refguid - (string) The guid of the data to free.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DResource8_SetPriority

Assigns the resource-management priority for this resource. 
```lua
function ashita.d3d8dev.IDirect3DResource8_SetPriority(parent, PriorityNew);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * PriorityNew - (number) The new priority to use.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DResource8_GetPriority

Retrieves the priority for this resource. 
```lua
function ashita.d3d8dev.IDirect3DResource8_GetPriority(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The resource priority.

---

### IDirect3DResource8_PreLoad

Preloads a managed resource.
```lua
function ashita.d3d8dev.IDirect3DResource8_PreLoad(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * None.

---

### IDirect3DResource8_GetType

Returns the type of the resource.
```lua
function ashita.d3d8dev.IDirect3DResource8_GetType(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The resource type.

---

## IDirect3DBaseTexture8 Interface Functions (Inherits IDirect3DResource8)

### IDirect3DBaseTexture8_QueryInterface
### IDirect3DBaseTexture8_AddRef
### IDirect3DBaseTexture8_Release
### IDirect3DBaseTexture8_GetDevice
### IDirect3DBaseTexture8_SetPrivateData
### IDirect3DBaseTexture8_GetPrivateData
### IDirect3DBaseTexture8_FreePrivateData
### IDirect3DBaseTexture8_SetPriority
### IDirect3DBaseTexture8_GetPriority
### IDirect3DBaseTexture8_PreLoad
### IDirect3DBaseTexture8_GetType

See the IDirect3DResource implementations of these functions as they are the same.
{: .notice--info}

---

### IDirect3DBaseTexture8_SetLOD

Sets the most detailed level of detail (LOD) for a managed texture. 
```lua
function ashita.d3d8dev.IDirect3DBaseTexture8_SetLOD(parent, LODNew);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * LODNew - (number) The new LOD value to set.
 * **Returns**
   * number - A clamped maximum LOD value.

---

### IDirect3DBaseTexture8_GetLOD

Returns a value clamped to the maximum level of detail (LOD) set for a managed texture.
```lua
function ashita.d3d8dev.IDirect3DBaseTexture8_GetLOD(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The LOD value, clamped to the maximum LOD value. (One less than the total number of levels.)

---

### IDirect3DBaseTexture8_GetLevelCount

Returns the number of texture levels in a multilevel texture.
```lua
function ashita.d3d8dev.IDirect3DBaseTexture8_GetLevelCount(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The level count of the texture.

---

## IDirect3DTexture8 Interface Functions (Inherits IDirect3DBaseTexture8)

### IDirect3DTexture8_QueryInterface
### IDirect3DTexture8_AddRef
### IDirect3DTexture8_Release
### IDirect3DTexture8_GetDevice
### IDirect3DTexture8_SetPrivateData
### IDirect3DTexture8_GetPrivateData
### IDirect3DTexture8_FreePrivateData
### IDirect3DTexture8_SetPriority
### IDirect3DTexture8_GetPriority
### IDirect3DTexture8_PreLoad
### IDirect3DTexture8_GetType

See the IDirect3DResource and IDirect3DBaseTexture8 implementations of these functions as they are the same.
{: .notice--info}

---

### IDirect3DTexture8_GetLevelDesc

Retrieves a level description of a texture resource.
```lua
function ashita.d3d8dev.IDirect3DTexture8_GetLevelDesc(parent, Level);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * Level - (number) The level to get the surface description information of.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DSURFACE_DESC structure of the surface on success, nil otherwise.

---

### IDirect3DTexture8_GetSurfaceLevel

Retrieves the specified texture surface level.
```lua
function ashita.d3d8dev.IDirect3DTexture8_GetSurfaceLevel(parent, Level);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * Level - (number) The level to get the surface of.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped IDirect3DSurface8 object on success, nil otherwise.

---

### IDirect3DTexture8_LockRect

Locks a rectangle on a texture resource.
```lua
function ashita.d3d8dev.IDirect3DTexture8_LockRect(parent, Level, pRect, Flags);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * Level - (number) The level to lock the rect on.
   * pRect - (object) The RECT object to lock.
   * Flags - (number) The lock flags to use.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DLOCKED_RECT structure on success, nil otherwise.

---

### IDirect3DTexture8_UnlockRect

Unlocks a rectangle on a texture resource.
```lua
function ashita.d3d8dev.IDirect3DTexture8_UnlockRect(parent, Level);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * Level - (number) The level to unlock.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DTexture8_AddDirtyRect

Adds a dirty region to a texture resource.
```lua
function ashita.d3d8dev.IDirect3DTexture8_AddDirtyRect(parent, pDirtyRect);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * pDirtyRect - (object) The dirty RECT to add to the texture.
 * **Returns**
   * number - The HRESULT of the call.

---

## IDirect3DVolumeTexture8 Interface Functions (Inherits IDirect3DBaseTexture8)

### IDirect3DVolumeTexture8_QueryInterface
### IDirect3DVolumeTexture8_AddRef
### IDirect3DVolumeTexture8_Release
### IDirect3DVolumeTexture8_GetDevice
### IDirect3DVolumeTexture8_SetPrivateData
### IDirect3DVolumeTexture8_GetPrivateData
### IDirect3DVolumeTexture8_FreePrivateData
### IDirect3DVolumeTexture8_SetPriority
### IDirect3DVolumeTexture8_GetPriority
### IDirect3DVolumeTexture8_PreLoad
### IDirect3DVolumeTexture8_GetType

See the IDirect3DResource and IDirect3DBaseTexture8 implementations of these functions as they are the same.
{: .notice--info}

---

### IDirect3DVolumeTexture8_GetLevelDesc

Retrieves a level description of a volume texture resource.
```lua
function ashita.d3d8dev.IDirect3DVolumeTexture8_GetLevelDesc(parent, Level);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * Level - (number) The level to get the volume description information of.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DVOLUME_DESC structure of the surface on success, nil otherwise.

---

### IDirect3DVolumeTexture8_GetVolumeLevel

Retrieves the specified volume texture level.
```lua
function ashita.d3d8dev.IDirect3DVolumeTexture8_GetVolumeLevel(parent, Level);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * Level - (number) The level to get the volume of.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped IDirect3DVolume8 object on success, nil otherwise.

---

### IDirect3DVolumeTexture8_LockBox

Locks a box on a volume texture resource.
```lua
function ashita.d3d8dev.IDirect3DVolumeTexture8_LockBox(parent, Level, pBox, Flags);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * Level - (number) The level to lock the rect on.
   * pBox - (object) The D3DBOX object to lock.
   * Flags - (number) The lock flags to use.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DLOCKED_BOX structure on success, nil otherwise.

---

### IDirect3DVolumeTexture8_UnlockBox

Unlocks a box on a volume texture resource.
```lua
function ashita.d3d8dev.IDirect3DVolumeTexture8_UnlockBox(parent, Level);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * Level - (number) The level to unlock.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DVolumeTexture8_AddDirtyBox

Adds a dirty region to a volume texture resource.
```lua
function ashita.d3d8dev.IDirect3DVolumeTexture8_AddDirtyBox(parent, pDirtyBox);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * pDirtyRect - (object) The dirty D3DBOX to add to the texture.
 * **Returns**
   * number - The HRESULT of the call.

---

## IDirect3DCubeTexture8 Interface Functions (Inherits IDirect3DBaseTexture8)

### IDirect3DCubeTexture8_QueryInterface
### IDirect3DCubeTexture8_AddRef
### IDirect3DCubeTexture8_Release
### IDirect3DCubeTexture8_GetDevice
### IDirect3DCubeTexture8_SetPrivateData
### IDirect3DCubeTexture8_GetPrivateData
### IDirect3DCubeTexture8_FreePrivateData
### IDirect3DCubeTexture8_SetPriority
### IDirect3DCubeTexture8_GetPriority
### IDirect3DCubeTexture8_PreLoad
### IDirect3DCubeTexture8_GetType

See the IDirect3DResource and IDirect3DBaseTexture8 implementations of these functions as they are the same.
{: .notice--info}

---

### IDirect3DCubeTexture8_GetLevelDesc

Retrieves a description of one face of the specified cube texture level.
```lua
function ashita.d3d8dev.IDirect3DCubeTexture8_GetLevelDesc(parent, Level);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * Level - (number) The level to get the surface description information of.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DSURFACE_DESC structure of the surface on success, nil otherwise.

---

### IDirect3DCubeTexture8_GetCubeMapSurface

Retrieves a cube texture map surface.
```lua
function ashita.d3d8dev.IDirect3DCubeTexture8_GetCubeMapSurface(parent, FaceType, Level);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * FaceType - (number) The cube map faces type.
   * Level - (number) The level to get the surface of.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped IDirect3DSurface8 object on success, nil otherwise.

---

### IDirect3DCubeTexture8_LockRect

Locks a rectangle on a cube texture resource.
```lua
function ashita.d3d8dev.IDirect3DCubeTexture8_LockRect(parent, FaceType, Level, pRect, Flags);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * FaceType - (number) The cube map faces type.
   * Level - (number) The level to lock the rect on.
   * pRect - (object) The RECT object to lock.
   * Flags - (number) The lock flags to use.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DLOCKED_RECT structure on success, nil otherwise.

---

### IDirect3DCubeTexture8_UnlockRect

Unlocks a rectangle on a cube texture resource.
```lua
function ashita.d3d8dev.IDirect3DCubeTexture8_UnlockRect(parent, FaceType, Level);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * FaceType - (number) The cube map faces type.
   * Level - (number) The level to unlock.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DCubeTexture8_AddDirtyRect

Adds a dirty region to a cube texture resource.
```lua
function ashita.d3d8dev.IDirect3DCubeTexture8_AddDirtyRect(parent, FaceType, pDirtyRect);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * FaceType - (number) The cube map faces type.
   * pDirtyRect - (object) The dirty RECT to add to the texture.
 * **Returns**
   * number - The HRESULT of the call.

---

## IDirect3DVertexBuffer8 Interface Functions (Inherits IDirect3DResource8)

### IDirect3DVertexBuffer8_QueryInterface
### IDirect3DVertexBuffer8_AddRef
### IDirect3DVertexBuffer8_Release
### IDirect3DVertexBuffer8_GetDevice
### IDirect3DVertexBuffer8_SetPrivateData
### IDirect3DVertexBuffer8_GetPrivateData
### IDirect3DVertexBuffer8_FreePrivateData
### IDirect3DVertexBuffer8_SetPriority
### IDirect3DVertexBuffer8_GetPriority
### IDirect3DVertexBuffer8_PreLoad
### IDirect3DVertexBuffer8_GetType

See the IDirect3DResource implementations of these functions as they are the same.
{: .notice--info}

---

### IDirect3DVertexBuffer8_Lock

Locks a range of vertex data and obtains a pointer to the vertex buffer memory.
```lua
function ashita.d3d8dev.IDirect3DVertexBuffer8_Lock(parent, OffsetToLock, SizeToLock, Flags);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * OffsetToLock - (number) The offset to begin the lock.
   * SizeToLock - (number) The size of the lock.
   * Flags - (number) The locking flags.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The pointer to the start of the locked data on success, nil otherwise.

---

### IDirect3DVertexBuffer8_Unlock

Unlocks vertex data.
```lua
function ashita.d3d8dev.IDirect3DVertexBuffer8_Unlock(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DVertexBuffer8_GetDesc

Retrieves a description of the vertex buffer resource.
```lua
function ashita.d3d8dev.IDirect3DVertexBuffer8_GetDesc(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DVERTEXBUFFER_DESC structure on success, nil otherwise.

---

## IDirect3DIndexBuffer8 Interface Functions (Inherits IDirect3DResource8)

### IDirect3DIndexBuffer8_QueryInterface
### IDirect3DIndexBuffer8_AddRef
### IDirect3DIndexBuffer8_Release
### IDirect3DIndexBuffer8_GetDevice
### IDirect3DIndexBuffer8_SetPrivateData
### IDirect3DIndexBuffer8_GetPrivateData
### IDirect3DIndexBuffer8_FreePrivateData
### IDirect3DIndexBuffer8_SetPriority
### IDirect3DIndexBuffer8_GetPriority
### IDirect3DIndexBuffer8_PreLoad
### IDirect3DIndexBuffer8_GetType

See the IDirect3DResource implementations of these functions as they are the same.
{: .notice--info}

---

### IDirect3DIndexBuffer8_Lock

Locks a range of index data and obtains a pointer to the index buffer memory.
```lua
function ashita.d3d8dev.IDirect3DIndexBuffer8_Lock(parent, OffsetToLock, SizeToLock, Flags);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * OffsetToLock - (number) The offset to begin the lock.
   * SizeToLock - (number) The size of the lock.
   * Flags - (number) The locking flags.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The pointer to the start of the locked data on success, nil otherwise.

---

### IDirect3DIndexBuffer8_Unlock

Unlocks index data.
```lua
function ashita.d3d8dev.IDirect3DIndexBuffer8_Unlock(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DIndexBuffer8_GetDesc

Retrieves a description of the index buffer resource.
```lua
function ashita.d3d8dev.IDirect3DIndexBuffer8_GetDesc(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DINDEXBUFFER_DESC structure on success, nil otherwise.

---

## IDirect3DSurface8 Interface Functions (Inherits IUnknown)

### IDirect3DSurface8_QueryInterface

Determines whether the object supports a particular COM interface.
```lua
function ashita.d3d8dev.IDirect3DSurface8_QueryInterface(parent, iid);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * iid - (string) The iid to query for.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The queried object on success, nil otherwise.

---

### IDirect3DSurface8_AddRef

Increases the reference count of the object by 1.
```lua
function ashita.d3d8dev.IDirect3DSurface8_AddRef(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The reference count of the object.

---

### IDirect3DSurface8_Release

Decreases the reference count of the object by 1.
```lua
function ashita.d3d8dev.IDirect3DSurface8_Release(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The reference count of the object.

---

### IDirect3DSurface8_SetPrivateData

Associates data with the surface that is intended for use by the application, not by Microsoft® Direct3D®.
```lua
function ashita.d3d8dev.IDirect3DSurface8_SetPrivateData(parent, refguid, data, SizeOfData, Flags);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * refguid - (string) The guid of the data to set. 
   * data - (object) A table containing bytes of the data to set.
   * SizeOfData - (number) The size of the table of data.
   * Flags - (number) The flags that describe the data.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DSurface8_GetPrivateData

Copies the private data associated with the surface to a provided buffer.
```lua
function ashita.d3d8dev.IDirect3DSurface8_GetPrivateData(parent, refguid);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * refguid - (string) The guid of the data to get.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - The table of data in bytes on success, nil otherwise.

---

### IDirect3DSurface8_FreePrivateData

Frees the specified private data associated with this surface.
```lua
function ashita.d3d8dev.IDirect3DSurface8_FreePrivateData(parent, refguid);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * refguid - (string) The guid of the data to free.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DSurface8_GetContainer

Provides access to the parent cube texture or texture (mipmap) object, if this surface is a child level of a cube texture or a mipmap.
```lua
function ashita.d3d8dev.IDirect3DSurface8_GetContainer(parent, riid);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * riid - (string) The guid of the container to obtain.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The pointer address to the container on success, nil otherwise.

---

### IDirect3DSurface8_GetDesc

Retrieves a description of the surface.
```lua
function ashita.d3d8dev.IDirect3DSurface8_GetDesc(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DSURFACE_DESC structure on success, nil otherwise.

---

### IDirect3DSurface8_LockRect

Locks a rectangle on a surface.
```lua
function ashita.d3d8dev.IDirect3DSurface8_LockRect(parent, pRect, Flags);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * pRect - (object) The RECT object to lock.
   * Flags - (number) The lock flags to use.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DLOCKED_RECT structure on success, nil otherwise.

---

### IDirect3DSurface8_UnlockRect

Unlocks a rectangle on a surface.
```lua
function ashita.d3d8dev.IDirect3DSurface8_UnlockRect(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The HRESULT of the call.

---

## IDirect3DVolume8 Interface Functions (Inherits IUnknown)

### IDirect3DVolume8_QueryInterface

Determines whether the object supports a particular COM interface.
```lua
function ashita.d3d8dev.IDirect3DVolume8_QueryInterface(parent, iid);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * iid - (string) The iid to query for.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The queried object on success, nil otherwise.

---

### IDirect3DVolume8_AddRef

Increases the reference count of the object by 1.
```lua
function ashita.d3d8dev.IDirect3DVolume8_AddRef(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The reference count of the object.

---

### IDirect3DVolume8_Release

Decreases the reference count of the object by 1.
```lua
function ashita.d3d8dev.IDirect3DVolume8_Release(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The reference count of the object.

---

### IDirect3DVolume8_SetPrivateData

Associates data with the volume that is intended for use by the application, not by Microsoft® Direct3D®.
```lua
function ashita.d3d8dev.IDirect3DVolume8_SetPrivateData(parent, refguid, data, SizeOfData, Flags);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * refguid - (string) The guid of the data to set. 
   * data - (object) A table containing bytes of the data to set.
   * SizeOfData - (number) The size of the table of data.
   * Flags - (number) The flags that describe the data.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DVolume8_GetPrivateData

Copies the private data associated with the volume to a provided buffer.
```lua
function ashita.d3d8dev.IDirect3DVolume8_GetPrivateData(parent, refguid);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * refguid - (string) The guid of the data to get.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - The table of data in bytes on success, nil otherwise.

---

### IDirect3DVolume8_FreePrivateData

Frees the specified private data associated with this volume.
```lua
function ashita.d3d8dev.IDirect3DVolume8_FreePrivateData(parent, refguid);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * refguid - (string) The guid of the data to free.
 * **Returns**
   * number - The HRESULT of the call.

---

### IDirect3DVolume8_GetContainer

Provides access to the parent volume texture object, if this surface is a child level of a volume texture.
```lua
function ashita.d3d8dev.IDirect3DVolume8_GetContainer(parent, riid);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * riid - (string) The guid of the container to obtain.
 * **Returns**
   * number - The HRESULT of the call.
   * number\|nil - The pointer address to the container on success, nil otherwise.

---

### IDirect3DVolume8_GetDesc

Retrieves a description of the volume.
```lua
function ashita.d3d8dev.IDirect3DVolume8_GetDesc(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DVOLUME_DESC structure on success, nil otherwise.

---

### IDirect3DVolume8_LockBox

Locks a box on a volume resource.
```lua
function ashita.d3d8dev.IDirect3DVolume8_LockBox(parent, pBox, Flags);
```

 * **Parameters**
   * parent - (object) The parent resource object.
   * pRect - (object) The D3DBOX object to lock.
   * Flags - (number) The lock flags to use.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The D3DLOCKED_BOX structure on success, nil otherwise.

---

### IDirect3DVolume8_UnlockBox

Unlocks a box on a volume resource.
```lua
function ashita.d3d8dev.IDirect3DVolume8_UnlockBox(parent);
```

 * **Parameters**
   * parent - (object) The parent resource object.
 * **Returns**
   * number - The HRESULT of the call.

---
