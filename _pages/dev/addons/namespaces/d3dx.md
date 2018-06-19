---
permalink: /dev/addons/namespaces/d3dx/
title: "Namespace: d3dx"
toc: true
---

The `d3dx` namespace contains functions that are part of the extended Direct3D8 SDK.

You can access this namespace via:
```lua
ashita.d3dx.
```

Below are the functions available in this namespace.

---

## ID3DXBuffer Interface Functions

### ID3DXBuffer_QueryInterface

Determines whether the object supports a particular COM interface.
```lua
function ashita.d3dx.ID3DXBuffer_QueryInterface(parent, iid);
```

 * **Parameters**
   * parent - (object) The parent object.
   * iid - (string) The iid to query for.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The queried object on success, nil otherwise.

---

### ID3DXBuffer_AddRef

Increases the reference count of the object by 1.
```lua
function ashita.d3dx.ID3DXBuffer_AddRef(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The reference count of the object.

---

### ID3DXBuffer_Release

Decreases the reference count of the object by 1.
```lua
function ashita.d3dx.ID3DXBuffer_Release(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The reference count of the object.

---

### ID3DXBuffer_GetBufferPointer

Retrieves a pointer to the data in the buffer.
```lua
function ashita.d3dx.ID3DXBuffer_GetBufferPointer(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The pointer address of the buffer.

---

### ID3DXBuffer_GetBufferSize

Retrieves the total size of the data in the buffer.
```lua
function ashita.d3dx.ID3DXBuffer_GetBufferSize(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The size of the buffer.

---

## ID3DXFont Interface Functions

### ID3DXFont_QueryInterface

Determines whether the object supports a particular COM interface.
```lua
function ashita.d3dx.ID3DXFont_QueryInterface(parent, iid);
```

 * **Parameters**
   * parent - (object) The parent object.
   * iid - (string) The iid to query for.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The queried object on success, nil otherwise.

---

### ID3DXFont_AddRef

Increases the reference count of the object by 1.
```lua
function ashita.d3dx.ID3DXFont_AddRef(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The reference count of the object.

---

### ID3DXFont_Release

Decreases the reference count of the object by 1.
```lua
function ashita.d3dx.ID3DXFont_Release(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The reference count of the object.

---

### ID3DXFont_GetLogFont

Retrieves the attributes of the font.
```lua
function ashita.d3dx.ID3DXFont_GetLogFont(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The HRESULT of the call.
   * object - The LOGFONT object of the font.

---

### ID3DXFont_Begin

Prepares a device for drawing text.
```lua
function ashita.d3dx.ID3DXFont_Begin(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The HRESULT of the call.

---

### ID3DXFont_DrawTextA

Draws formatted text on a Microsoft® Direct3D® device.
```lua
function ashita.d3dx.ID3DXFont_DrawTextA(parent, str, count, rect, color);
```

 * **Parameters**
   * parent - (object) The parent object.
   * str - (string) The string to draw.
   * count - (number) The length of the string.
   * rect - (object) The RECT of the text to draw.
   * color - (number) The D3DCOLOR of the string.
 * **Returns**
   * number - The HRESULT of the call.

---

### ID3DXFont_End

Restores the device state to how it was when ID3DXFont::Begin was called.
```lua
function ashita.d3dx.ID3DXFont_End(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The HRESULT of the call.

---

## ID3DXSprite Interface Functions

### ID3DXSprite_QueryInterface

Determines whether the object supports a particular COM interface.
```lua
function ashita.d3dx.ID3DXSprite_QueryInterface(parent, iid);
```

 * **Parameters**
   * parent - (object) The parent object.
   * iid - (string) The iid to query for.
 * **Returns**
   * object\|nil - The queried object on success, nil otherwise.

---

### ID3DXSprite_AddRef

Increases the reference count of the object by 1.
```lua
function ashita.d3dx.ID3DXSprite_AddRef(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The reference count of the object.

---

### ID3DXSprite_Release

Decreases the reference count of the object by 1.
```lua
function ashita.d3dx.ID3DXSprite_Release(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The reference count of the object.

---

### ID3DXSprite_Begin

```lua
function ashita.d3dx.ID3DXSprite_Begin(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The HRESULT of the call.

---

### ID3DXSprite_Draw

```lua
function ashita.d3dx.ID3DXSprite_Draw(parent, srcTexture, srcRect, scaling, rotationCenter, rotation, translation, color);
```

 * **Parameters**
   * parent - (object) The parent object.
   * srcTexture - (object) The source texture to draw with.
   * srcRect - (object) The source RECT of the texture to draw.
   * scaling - (object) The D3DXVECTOR2 to scale the sprite with.
   * rotationCenter - (object) The D3DXVECTOR2 center to rotate the sprite around.
   * rotation - (number) The rotation amount.
   * translation - (object) The D3DXVECTOR2 to translate the sprite with.
   * color - (number) The D3DCOLOR to draw with.
 * **Returns**
   * number - The HRESULT of the call.

---

### ID3DXSprite_DrawTransform

```lua
function ashita.d3dx.ID3DXSprite_DrawTransform(parent, srcTexture, srcRect, transform, color);
```

 * **Parameters**
   * parent - (object) The parent object.
   * srcTexture - (object) The source texture to draw with.
   * srcRect - (object) The source RECT of the texture to draw.
   * transform - (object) The D3DXVECTOR2 to translate the sprite with.
   * color - (number) The D3DCOLOR to draw with.
 * **Returns**
   * number - The HRESULT of the call.

---

### ID3DXSprite_End

```lua
function ashita.d3dx.ID3DXSprite_End(parent);
```

 * **Parameters**
   * parent - (object) The parent object.
 * **Returns**
   * number - The HRESULT of the call.

---

## Direct3DX Functions

### CreateFontIndirect

Creates an ID3DXFont object.
```lua
function ashita.d3dx.CreateFontIndirect(logfont);
```

 * **Parameters**
   * logfont - (object) The LOGFONT object to use while creating the font.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped font object on success, nil otherwise.

---

### CreateSprite

Creates an ID3DXSprite object.
```lua
function ashita.d3dx.CreateSprite();
```

 * **Parameters**
   * None.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped sprite object on success, nil otherwise.

---

### AssembleShaderFromFile

Loads and assembles a shader from a file.
```lua
function ashita.d3dx.AssembleShaderFromFile(file, flags);
```

 * **Parameters**
   * file - (string) The full file path to the shader to load.
   * flags - (number) The shader flags.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped shader constants buffer if valid, nil otherwise. (ID3DXBuffer wrapped.)
   * object\|nil - The wrapped shader buffer if valid, nil otherwise. (ID3DXBuffer wrapped.)
   * object\|nil - The wrapped shader errors if valid, nil otherwise. (ID3DXBuffer wrapped.)

---

### AssembleShader

Assembles a shader from the given text.
```lua
function ashita.d3dx.AssembleShader(text, flags);
```

 * **Parameters**
   * text - (string) The raw shader text to load.
   * flags - (number) The shader flags.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped shader constants buffer if valid, nil otherwise. (ID3DXBuffer wrapped.)
   * object\|nil - The wrapped shader buffer if valid, nil otherwise. (ID3DXBuffer wrapped.)
   * object\|nil - The wrapped shader errors if valid, nil otherwise. (ID3DXBuffer wrapped.)

---

### LoadSurfaceFromFileA

Loads a surface from a file.
```lua
function ashita.d3dx.LoadSurfaceFromFileA(dstSurface, dstRect, srcFile, srcRect, filter, colorKey);
```

 * **Parameters**
   * dstSurface - (object) The destination surface to hold the result.
   * dstRect - (object) The destination RECT of the dest. surface to load at.
   * srcFile - (string) The source file to load the surface from.
   * srcRect - (object) The source file RECT to load the source from.
   * filter - (number) The filter flags controlling how the image is filtered.
   * colorKey - (number) The D3DCOLOR to replace with transparent black.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - The surface palette on success, nil otherwise.

---

### LoadSurfaceFromFileInMemory

Loads a surface from a file in memory.
```lua
function ashita.d3dx.LoadSurfaceFromFileInMemory(dstSurface, dstRect, srcData, srcDataSize, srcRect, filter, colorKey);
```

 * **Parameters**
   * dstSurface - (object) The destination surface to hold the result.
   * dstRect - (object) The destination RECT of the dest. surface to load at.
   * srcData - (number) The address where the surface starts in memory.
   * srcDataSize - (number) The size of the surface.
   * srcRect - (object) The source file RECT to load the source from.
   * filter - (number) The filter flags controlling how the image is filtered.
   * colorKey - (number) The D3DCOLOR to replace with transparent black.
 * **Returns**
   * number - The HRESULT of the call.
   * table\|nil - The surface palette on success, nil otherwise.

---

### SaveSurfaceToFileA

Saves a surface to a file.
```lua
function ashita.d3dx.SaveSurfaceToFileA(dstFile, dstFormat, srcSurface, srcPalette, srcRect);
```

---

### CreateTextureFromFileA

Creates a texture from a file.
```lua
function ashita.d3dx.CreateTextureFromFileA(file);
```

---

### CreateTextureFromFileExA

Creates a texture from a file.
```lua
function ashita.d3dx.CreateTextureFromFileExA(file, width, height, mipLevels, usage, format, pool, filter, mipFilter, colorKey);
```

---

### CreateTextureFromFileInMemory

Creates a texture from a file in memory.
```lua
function ashita.d3dx.CreateTextureFromFileInMemory(srcData, srcDataSize);
```

---

### CreateTextureFromFileInMemoryEx

Creates a texture from a file in memory.
```lua
function ashita.d3dx.CreateTextureFromFileInMemoryEx(srcData, srcDataSize, width, height, mipLevels, usage, format, pool, filter, mipFilter, colorKey);
```

---

### SaveTextureToFileA

Saves a texture to a file.
```lua
function ashita.d3dx.SaveTextureToFileA(file, dstFormat, srcTexture, srcPalette);
```

---

### GetErrorStringA

Converts a Direct3D HRESULT error into its string representation.
```lua
function ashita.d3dx.GetErrorStringA(error);
```

---

## Matrix Functions

### MatrixIdentity

Creates an identity matrix.
```lua
function ashita.d3dx.MatrixIdentity(matrix);
```

---

### MatrixIsIdentity

Checks if the given matrix is an identity matrix.
```lua
function ashita.d3dx.MatrixIsIdentity(matrix);
```

---

### MatrixfDeterminant

Returns the determinant of a matrix.
```lua
function ashita.d3dx.MatrixfDeterminant(matrix);
```

---

### MatrixTranspose

Returns the matrix transpose of a matrix.
```lua
function ashita.d3dx.MatrixTranspose(matrix, matrixIn);
```


---

### MatrixMultiply

Determines the product of two matrices.
```lua
function ashita.d3dx.MatrixMultiply(matrix, matrix1, matrix2);
```

---

### MatrixMultiplyTranspose

Determines the product of two matrices, followed by a transpose.
```lua
function ashita.d3dx.MatrixMultiplyTranspose(matrix, matrix1, matrix2);
```

---

### MatrixInverse

Calculates the inverse of a matrix.
```lua
function ashita.d3dx.MatrixInverse(matrix, matrixIn);
```

---

### MatrixScaling

Builds a matrix that scales along the x-, y-, and z-axes.
```lua
function ashita.d3dx.MatrixScaling(matrix, sx, sy, sz);
```

---

### MatrixTranslation

Builds a matrix using the specified offsets.
```lua
function ashita.d3dx.MatrixTranslation(matrix, x, y, z);
```

---

### MatrixRotationX

Builds a matrix that rotates around the x-axis.
```lua
function ashita.d3dx.MatrixRotationX(matrix, angle);
```

---

### MatrixRotationY

Builds a matrix that rotates around the y-axis.
```lua
function ashita.d3dx.MatrixRotationY(matrix, angle);
```

---

### MatrixRotationZ

Builds a matrix that rotates around the z-axis.
```lua
function ashita.d3dx.MatrixRotationZ(matrix, angle);
```

---

### MatrixRotationAxis

Builds a matrix that rotates around an arbitrary axis.
```lua
function ashita.d3dx.MatrixRotationAxis(matrix, vec3, angle);
```

---

### MatrixRotationQuaternion

Builds a matrix from a quaternion.
```lua
function ashita.d3dx.MatrixRotationQuaternion(matrix, quarternion);
```

---

### MatrixRotationYawPitchRoll

Builds a matrix with a specified yaw, pitch, and roll.
```lua
function ashita.d3dx.MatrixRotationYawPitchRoll(matrix, yaw, pitch, roll);
```

---

### MatrixTransformation

Builds a transformation matrix.
```lua
function ashita.d3dx.MatrixTransformation(matrix, scalingCenter, scalingRotation, scaling, rotationCenter, rotation, translation);
```

---

### MatrixAffineTransformation

Builds an affine transformation matrix.
```lua
function ashita.d3dx.MatrixAffineTransformation(matrix, scaling, rotationCenter, rotation, translation);
```

---

### MatrixLookAtRH

Builds a right-handed look-at matrix.
```lua
function ashita.d3dx.MatrixLookAtRH(matrix, eye, at, up);
```

---

### MatrixLookAtLH

Builds a left-handed look-at matrix.
```lua
function ashita.d3dx.MatrixLookAtLH(matrix, eye, at, up);
```

---

### MatrixPerspectiveRH

Builds a right-handed perspective projection matrix.
```lua
function ashita.d3dx.MatrixPerspectiveRH(matrix, w, h, zn, zf);
```

---

### MatrixPerspectiveLH

Builds a left-handed perspective projection matrix
```lua
function ashita.d3dx.MatrixPerspectiveLH(matrix, w, h, zn, zf);
```

---

### MatrixPerspectiveFovRH

Builds a right-handed perspective projection matrix based on a field of view (FOV).
```lua
function ashita.d3dx.MatrixPerspectiveFovRH(matrix, fovy, aspect, zn, zf);
```

---

### MatrixPerspectiveFovLH

Builds a left-handed perspective projection matrix based on a field of view (FOV).
```lua
function ashita.d3dx.MatrixPerspectiveFovLH(matrix, fovy, aspect, zn, zf);
```

---

### MatrixPerspectiveOffCenterRH

Builds a customized, right-handed perspective projection matrix.
```lua
function ashita.d3dx.MatrixPerspectiveOffCenterRH(matrix, l, r, b, t, zn, zf);
```

---

### MatrixPerspectiveOffCenterLH

Builds a customized, left-handed perspective projection matrix.
```lua
function ashita.d3dx.MatrixPerspectiveOffCenterLH(matrix, l, r, b, t, zn, zf);
```

---

### MatrixOrthoRH

Builds a right-handed orthogonal projection matrix.
```lua
function ashita.d3dx.MatrixOrthoRH(matrix, w, h, zn, zf);
```

---

### MatrixOrthoLH

Builds a left-handed orthogonal projection matrix.
```lua
function ashita.d3dx.MatrixOrthoLH(matrix, w, h, zn, zf);
```

---

### MatrixOrthoOffCenterRH

Builds a customized, right-handed orthogonal projection matrix.
```lua
function ashita.d3dx.MatrixOrthoOffCenterRH(matrix, l, r, b, t, zn, zf);
```

---

### MatrixOrthoOffCenterLH

Builds a customized, left-handed orthogonal projection matrix.
```lua
function ashita.d3dx.MatrixOrthoOffCenterLH(matrix, l, r, b, t, zn, zf);
```

---

### MatrixShadow

Builds a matrix that flattens geometry into a plane.
```lua
function ashita.d3dx.MatrixShadow(matrix, light, plane);
```

---

### MatrixReflect

Builds a matrix that reflects the coordinate system about a plane.
```lua
function ashita.d3dx.MatrixReflect(matrix, plane);
```

---
