---
permalink: /dev/addons/customtypes/
title: "Custom Enums & Types"
toc: true
---

Ashita makes use of Luabind which allows it to implement various functions and types directly from C++. Because of this, some types from C++ are exposed directly to Lua to be used with function calls. Some types have some minor differences or are exactly the same as they are in C++. However, some common things done with these types within C++ may not work the same in Lua (such as the various C++ operators for things such as multiplying two objects together etc.)

Here is a list of the various types that are implemented in Lua.

---

## Enumerations

### CommandInputType

```lua
CommandInputType =
{
    ForceHandle = -3,
    Script = -2,
    Parse = -1,
    Menu = 0,
    Typed = 1,
    Macro = 2
}

-- Example use:
AshitaCore:GetChatManager():QueueCommand('/wave', CommandInputType.Menu);
```

---

### FrameAnchor

```lua
FrameAnchor =
{
    TopLeft = 0,
    TopRight = 1,
    BottomLeft = 2,
    BottomRight = 3,
    Right = 1,
    Bottom = 2
}

-- Example use:
AshitaCore:GetFontManager():Get('someFontName'):SetAnchorParent(FrameAnchor.Right);
```

---

### MouseInput

_These values are used with the font object system, however at this time the callbacks they are used with are not exposed to addons._

```lua
MouseInput =
{
    LeftClick = 0,
    RightClick = 1,
    MiddleClick = 2,
    X1Click = 3,
    X2Click = 4,
    MouseWheelUp = 5,
    MouseWheelDown = 6,
    MouseMove = 7
}
```

---

### LogLevel

```lua
LogLevel =
{
    None = 0,
    Information = 1,
    Warning = 2,
    Error = 3,
    Debug = 4
}

-- Example use:
LogManager:Log(LogLevel.Warning, _addon.name, 'Some warning message..');
```

---

## Ashita Types

Below are types that are defined within the various Ashita Development Kit (ADK) headers.

---

### asrect_t (Ashita::ashitarect_t)

More info: [https://git.ashitaxi.com/Ashita/Ashitav3-Release/src/master/plugins/ADK/AS_Objects.h](https://git.ashitaxi.com/Ashita/Ashitav3-Release/src/master/plugins/ADK/AS_Objects.h)

```lua
local rect = asrect_r();
r.x = 0;
r.y = 0;
r.w = 0;
r.h = 0;
```

---

## Win32 Types

Below are types that are defined within the various Windows headers of the Windows SDK. These are exposed to Lua via Luabind allowing them to work nearly identical, in all manners, from Lua as they do in C++. Unless otherwise stated, the objects properties should all be available as normal.

One thing to note, if the property has an array of characters used for a string, for example the lfFaceName of LOGFONTA, Lua will treat this as a raw string, so you do not need to set the individual characters yourself.

---

### HWND, HINSTANCE, HMONITOR

_These types are defined as their raw form and can be used with the various functions that may expect them. Some functions that may use them may instead require the numeric version of their value rather than the actual type. Be sure to read the notes on any function that may use these for more info._

---

### void*

_This type is used as a raw object pointer. To Lua, this will be seen as userdata when attempting to use it from within Lua itself. It should only be used, as needed, when passed back to C++. You should never need to attempt to create this type manually._

---

### LARGE_INTEGER

More info: [https://msdn.microsoft.com/en-us/library/windows/desktop/aa383713(v=vs.85).aspx](https://msdn.microsoft.com/en-us/library/windows/desktop/aa383713(v=vs.85).aspx)

_(Lua does not support unions like this type directly, so instead, the sub-parts are exposed directly, along with the large value.)_

```lua
local li = LARGE_INTEGER();
li.LowPart = 0;
li.HighPart = 0;
li.QuadPart = 0;
```

The following operators are defined for this type:
```cpp
operator== LARGE_INTEGER
```

---

### LOGFONTA

More info: [https://msdn.microsoft.com/en-us/library/windows/desktop/dd145037(v=vs.85).aspx](https://msdn.microsoft.com/en-us/library/windows/desktop/dd145037(v=vs.85).aspx)

```lua
local lf = LOGFONTA();
lf.lfHeight = 0;
lf.lfWidth = 0;
lf.lfEscapement = 0;
lf.lfOrientation = 0;
lf.lfWeight = 0;
lf.lfItalic = 0;
lf.lfUnderline = 0;
lf.lfStrikeOut = 0;
lf.lfCharset = 0;
lf.lfOutPrecision = 0;
lf.lfClipPrecision = 0;
lf.lfQuality = 0;
lf.lfPitchAndFamily = 0;
lf.lfFaceName = 'Arial';
```

---

### PALETTEENTRY

More info: [https://msdn.microsoft.com/en-us/library/windows/desktop/dd162769(v=vs.85).aspx](https://msdn.microsoft.com/en-us/library/windows/desktop/dd162769(v=vs.85).aspx)

```lua
local p = PALETTEENTRY();
p.peRed = 0;
p.peGreen = 0;
p.peBlue = 0;
p.peFlags = 0;
```

---

### POINT

More info: [https://msdn.microsoft.com/en-us/library/windows/desktop/dd162805(v=vs.85).aspx](https://msdn.microsoft.com/en-us/library/windows/desktop/dd162805(v=vs.85).aspx)

```lua
local p = POINT();
p.x = 0;
p.y = 0;
```

The following operators are defined for this type:
```cpp
operator== POINT
operator+  POINT
operator-  POINT
operator*  POINT
operator/  POINT
```

---

### RECT

More info: [https://msdn.microsoft.com/en-us/library/windows/desktop/dd162897(v=vs.85).aspx](https://msdn.microsoft.com/en-us/library/windows/desktop/dd162897(v=vs.85).aspx)

```lua
local r = RECT();
r.left = 0;
r.top = 0;
r.right = 0;
r.bottom = 0;
```

The following operators are defined for this type:
```cpp
operator== RECT
operator+  RECT
operator-  RECT
operator*  RECT
operator/  RECT
```

---

### SIZE

More info: [https://msdn.microsoft.com/en-us/library/dd145106(v=vs.85).aspx](https://msdn.microsoft.com/en-us/library/dd145106(v=vs.85).aspx)

```lua
local size = SIZE();
size.cx = 0;
size.cy = 0;
```

---

## Direct3D Types

Below are types that are defined within the various Direct3D SDK headers.

For more information on these types, please see the Direct3D headers found within the ADK. [https://git.ashitaxi.com/Ashita/Ashitav3-Release/src/master/plugins/ADK/d3d8/includes](https://git.ashitaxi.com/Ashita/Ashitav3-Release/src/master/plugins/ADK/d3d8/includes)

---

### D3DADAPTER_IDENTIFIER8

```lua
local ai = D3DADAPTER_IDENTIFIER8();
ai.Driver = 'Driver Name';
ai.Description = 'Driver description.';
ai.DriverVersion = 0;
ai.VendorId = 0;
ai.DeviceId = 0;
ai.SubSysId = 0;
ai.Revision = 0;
ai.DeviceIdentifier = 'Driver-GUID';
ai.WHQLLevel = 0;
```

---

### D3DBOX

```lua
local b = D3DBOX();
b.Left = 0;
b.Top = 0;
b.Right = 0;
b.Bottom = 0;
b.Front = 0;
b.Back = 0;
```

---

### D3DCAPS8

```lua
local c = D3DCAPS8();
c.DeviceType = 0;
c.AdapterOrdinal = 0;
c.Caps = 0;
c.Caps2 = 0;
c.Caps3 = 0;
c.PresentationIntervals = 0;
c.CursorCaps = 0;
c.DevCaps = 0;
c.PrimitiveMiscCaps = 0;
c.RasterCaps = 0;
c.ZCmpCaps = 0;
c.SrcBlendCaps = 0;
c.DestBlendCaps = 0;
c.AlphaCmpCaps = 0;
c.ShadeCaps = 0;
c.TextureCaps = 0;
c.TextureFilterCaps = 0;
c.CubeTextureFilterCaps = 0;
c.VolumeTextureFilterCaps = 0;
c.TextureAddressCaps = 0;
c.VolumeTextureAddressCaps = 0;
c.LineCaps = 0;
c.MaxTextureWidth = 0;
c.MaxTextureHeight = 0;
c.MaxVolumeExtent = 0;
c.MaxTextureRepeat = 0;
c.MaxTextureAspectRatio = 0;
c.MaxAnisotropy = 0;
c.MaxVertexW = 0;
c.GuardBandLeft = 0;
c.GuardBandTop = 0;
c.GuardBandRight = 0;
c.GuardBandBottom = 0;
c.ExtentsAdjust = 0;
c.StencilCaps = 0;
c.FVFCaps = 0;
c.TextureOpCaps = 0;
c.MaxTextureBlendStages = 0;
c.MaxSimultaneousTextures = 0;
c.VertexProcessingCaps = 0;
c.MaxActiveLights = 0;
c.MaxUserClipPlanes = 0;
c.MaxVertexBlendMatrices = 0;
c.MaxVertexBlendMatrixIndex = 0;
c.MaxPointSize = 0;
c.MaxPrimitiveCount = 0;
c.MaxVertexIndex = 0;
c.MaxStreams = 0;
c.MaxStreamStride = 0;
c.VertexShaderVersion = 0;
c.MaxVertexShaderConst = 0;
c.PixelShaderVersion = 0;
c.MaxPixelShaderValue = 0;
```

---

### D3DCLIPSTATUS8

```lua
local c = D3DCLIPSTATUS8();
c.ClipUnion = 0;
c.ClipIntersection = 0;
```

---

### D3DCOLORVALUE

```lua
local c = D3DCOLORVALUE();
c.r = 0;
c.g = 0;
c.b = 0;
c.a = 0;
```

---

### D3DDEVICE_CREATION_PARAMETERS

```lua
local c = D3DDEVICE_CREATION_PARAMETERS();
c.AdapterOrdinal = 0;
c.DeviceType = 0;
c.hFocusWindow = 0; -- Converted to a number, still a HWND though. (Get only, cannot be set.)
c.BehaviorFlags = 0;
```

---

### D3DDISPLAYMODE

```lua
local m = D3DDISPLAYMODE();
m.Width = 0;
m.Height = 0;
m.RefreshRate = 0;
m.Format = 0;
```

---

### D3DINDEXBUFFER_DESC

```lua
local d = D3DINDEXBUFFER_DESC();
d.Format = 0;
d.Type = 0;
d.Usage = 0;
d.Pool = 0;
d.Size = 0;
```

---

### D3DLIGHT8

```lua
local l = D3DLIGHT8();
l.Type = 0;
l.Diffuse = 0;
l.Specular = 0;
l.Ambient = 0;
l.Position = 0;
l.Direction = 0;
l.Range = 0;
l.Falloff = 0;
l.Attenuation0 = 0;
l.Attenuation1 = 0;
l.Attenuation2 = 0;
l.Theta = 0;
l.Phi = 0;
```

---

### D3DLOCKED_BOX

```lua
local l = D3DLOCKED_BOX();
l.RowPitch = 0;
l.SlicePitch = 0;
l.pBits = 0; -- Converted to a number, still a pointer address.
```

---

### D3DLOCKED_RECT

```lua
local l = D3DLOCKED_RECT();
l.Pitch = 0;
l.pBits = 0; -- Converted to a number, still a pointer address.
```

---

### D3DMATERIAL8

```lua
local m = D3DMATERIAL8();
m.Diffuse = 0;
m.Ambient = 0;
m.Specular = 0;
m.Emissive = 0;
m.Power = 0;
```

---

### D3DMATRIX

```lua
m._11 = 0;
m._12 = 0;
m._13 = 0;
m._14 = 0;
m._21 = 0;
m._22 = 0;
m._23 = 0;
m._24 = 0;
m._31 = 0;
m._32 = 0;
m._33 = 0;
m._34 = 0;
m._41 = 0;
m._42 = 0;
m._43 = 0;
m._44 = 0;
```

---

### D3DRASTER_STATUS

```lua
local r = D3DRASTER_STATUS();
r.InVBlank = 0;
r.ScanLine = 0;
```

---

### D3DRECT

```lua
local r = D3DRECT();
r.x1 = 0;
r.x2 = 0;
r.y1 = 0;
r.y2 = 0;
```

---

### D3DRECTPATCH_INFO

```lua
local r = D3DRECTPATCH_INFO();
r.StartVertexOffsetWidth = 0;
r.StartVertexOffsetHeight = 0;
r.Width = 0;
r.Height = 0;
r.Stride = 0;
r.Basis = 0;
r.Order = 0;
```

---

### D3DSURFACE_DESC

```lua
local s = D3DSURFACE_DESC();
s.Format = 0;
s.Type = 0;
s.Usage = 0;
s.Pool = 0;
s.Size = 0;
s.MultiSampleType = 0;
s.Width = 0;
s.Height = 0;
```

---

### D3DTRIPATCH_INFO

```lua
local t = D3DTRIPATCH_INFO();
t.StartVertexOffset = 0;
t.NumVertices = 0;
t.Basis = 0;
t.Order = 0;
```

---

### D3DVECTOR

```lua
local v = D3DVECTOR();
v.x = 0;
v.y = 0;
v.z = 0;
```

---

### D3DVERTEXBUFFER_DESC

```lua
local v = D3DVERTEXBUFFER_DESC();
v.Format = 0;
v.Type = 0;
v.Usage = 0;
v.Pool = 0;
v.Size = 0;
v.FVF = 0;
```

---

### D3DVIEWPORT8

```lua
local v = D3DVIEWPORT8();
v.X = 0;
v.Y = 0;
v.Width = 0;
v.Height = 0;
v.MinZ = 0;
v.MaxZ = 0;
```

---

### D3DVOLUME_DESC

```lua
local v = D3DVOLUME_DESC();
v.Format = 0;
v.Type = 0;
v.Usage = 0;
v.Pool = 0;
v.Size = 0;
v.Width = 0;
v.Height = 0;
v.Depth = 0;
```

---

## Direct3D Extended Types

Below are types that are defined within the various Direct3D Extended SDK headers. (ie. d3dx8.h)

For more information on these types, please see the Direct3D headers found within the ADK. [https://git.ashitaxi.com/Ashita/Ashitav3-Release/src/master/plugins/ADK/d3d8/includes](https://git.ashitaxi.com/Ashita/Ashitav3-Release/src/master/plugins/ADK/d3d8/includes)

---

### D3DXIMAGE_INFO

```lua
local x = D3DXIMAGE_INFO();
i.Width = 0;
i.Height = 0;
i.Depth = 0;
i.MipLevels = 0;
i.Format = 0;
i.ResourceType = 0;
i.ImageFileFormat = 0;
```

---

### D3DXMATRIX

```lua
local m = D3DXMATRIX();
m._11 = 0;
m._12 = 0;
m._13 = 0;
m._14 = 0;
m._21 = 0;
m._22 = 0;
m._23 = 0;
m._24 = 0;
m._31 = 0;
m._32 = 0;
m._33 = 0;
m._34 = 0;
m._41 = 0;
m._42 = 0;
m._43 = 0;
m._44 = 0;
```

The following operators are defined for this type:
```cpp
operator== D3DXMATRIX
operator*  D3DXMATRIX
operator+  D3DXMATRIX
operator-  D3DXMATRIX
operator*  float
operator/  float
```

The following constructors are valid for this type:
```lua
local m = D3DXMATRIX();
local m = D3DXMATRIX(number, number, number, number, number, number, number, number, number, number, number, number, number, number, number, number);
```

---

### D3DXPLANE

```lua
local p = D3DXPLANE();
p.a = 0;
p.b = 0;
p.c = 0;
p.d = 0;
```

The following constructors are valid for this type:
```lua
local p = D3DXPLANE();
local p = D3DXPLANE(number, number, number, number);
```

---

### D3DXQUATERNION

```lua
local q = D3DXQUATERNION();
q.x = 0;
q.y = 0;
q.z = 0;
q.w = 0;
```

The following constructors are valid for this type:
```lua
local q = D3DXQUATERNION();
local q = D3DXQUATERNION(number, number, number, number);
```

---

### D3DXVECTOR2

```lua
local v = D3DXVECTOR2();
v.x = 0;
v.y = 0;
```

The following constructors are valid for this type:
```lua
local v = D3DXVECTOR2();
local v = D3DXVECTOR2(number, number);
```

---

### D3DXVECTOR3

```lua
local v = D3DXVECTOR3();
v.x = 0;
v.y = 0;
v.z = 0;
```

The following constructors are valid for this type:
```lua
local v = D3DXVECTOR3();
local v = D3DXVECTOR3(number, number, number);
```

---

### D3DXVECTOR4

```lua
local v = D3DXVECTOR4();
v.x = 0;
v.y = 0;
v.z = 0;
v.w = 0;
```

The following constructors are valid for this type:
```lua
local v = D3DXVECTOR4();
local v = D3DXVECTOR4(number, number, number, number);
```

---
