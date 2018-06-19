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

 * **Parameters**
   * dstFile - (string) The path to the file to save the surface to.
   * dstFormat - (number) The file format to save the surface as.
   * srcSurface - (object) The source surface object to save.
   * srcPalette - (table) The surface palette to save with. (Can be nil.)
   * srcRect - (object) The source RECT of the surface to save.
 * **Returns**
   * number - The HRESULT of the call.

---

### CreateTextureFromFileA

Creates a texture from a file.
```lua
function ashita.d3dx.CreateTextureFromFileA(file);
```

 * **Parameters**
   * file - (string) The path to the texture file to load.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped texture object on success, nil otherwise.

---

### CreateTextureFromFileExA

Creates a texture from a file.
```lua
function ashita.d3dx.CreateTextureFromFileExA(file, width, height, mipLevels, usage, format, pool, filter, mipFilter, colorKey);
```

 * **Parameters**
   * file - (string) The path to the texture file to load.
   * width - (number) The texture width.
   * height - (number) The texture height.
   * mipLevels - (number) The texture mip level count.
   * usage - (number) The texture usage type.
   * format - (number) The format of the texture.
   * pool - (number) The pool usage type.
   * filter - (number) The flags controlling how the image is filtered.
   * mipFilter - (number) The flags controlling how the image is filtered.
   * colorKey - (number) The D3DCOLOR to replace with transparent black.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped texture object on success, nil otherwise.

---

### CreateTextureFromFileInMemory

Creates a texture from a file in memory.
```lua
function ashita.d3dx.CreateTextureFromFileInMemory(srcData, srcDataSize);
```

 * **Parameters**
   * srcData - (number) Pointer address to the texture in memory.
   * srcDataSize - (number) The size of the texture.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped texture object on success, nil otherwise.

---

### CreateTextureFromFileInMemoryEx

Creates a texture from a file in memory.
```lua
function ashita.d3dx.CreateTextureFromFileInMemoryEx(srcData, srcDataSize, width, height, mipLevels, usage, format, pool, filter, mipFilter, colorKey);
```

 * **Parameters**
   * srcData - (number) Pointer address to the texture in memory.
   * srcDataSize - (number) The size of the texture.
   * width - (number) The texture width.
   * height - (number) The texture height.
   * mipLevels - (number) The texture mip level count.
   * usage - (number) The texture usage type.
   * format - (number) The format of the texture.
   * pool - (number) The pool usage type.
   * filter - (number) The flags controlling how the image is filtered.
   * mipFilter - (number) The flags controlling how the image is filtered.
   * colorKey - (number) The D3DCOLOR to replace with transparent black.
 * **Returns**
   * number - The HRESULT of the call.
   * object\|nil - The wrapped texture object on success, nil otherwise.

---

### SaveTextureToFileA

Saves a texture to a file.
```lua
function ashita.d3dx.SaveTextureToFileA(file, dstFormat, srcTexture, srcPalette);
```

 * **Parameters**
   * file - (string) The path to the file to save the texture to.
   * dstFormat - (number) The format to save the texture as.
   * srcTexture - (object) The texture to save.
   * srcPalette - (table) The texture palette to use while saving. (Can be nil.)
 * **Returns**
   * number - The HRESULT of the call.

---

### GetErrorStringA

Converts a Direct3D HRESULT error into its string representation.
```lua
function ashita.d3dx.GetErrorStringA(error);
```

 * **Parameters**
   * error - (number) The HRESULT to translate to a string.
 * **Returns**
   * number - The HRESULT of the call.
   * string\|nil - The converted HRESULT value to its string representation, nil on error.

---

## Matrix Functions

### MatrixIdentity

Creates an identity matrix.
```lua
function ashita.d3dx.MatrixIdentity(matrix);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to set.
 * **Returns**
   * object - The result matrix.

---

### MatrixIsIdentity

Checks if the given matrix is an identity matrix.
```lua
function ashita.d3dx.MatrixIsIdentity(matrix);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to test.
 * **Returns**
   * bool - True if identity, false otherwise.

---

### MatrixfDeterminant

Returns the determinant of a matrix.
```lua
function ashita.d3dx.MatrixfDeterminant(matrix);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use.
 * **Returns**
   * number - The matrix determinant.

---

### MatrixTranspose

Returns the matrix transpose of a matrix.
```lua
function ashita.d3dx.MatrixTranspose(matrix, matrixIn);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * matrixIn - (object) The source matrix.
 * **Returns**
   * object - The result matrix.

---

### MatrixMultiply

Determines the product of two matrices.
```lua
function ashita.d3dx.MatrixMultiply(matrix, matrix1, matrix2);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * matrix1 - (object) The source matrix.
   * matrix2 - (object) The source matrix.
 * **Returns**
   * object - The result matrix.

---

### MatrixMultiplyTranspose

Determines the product of two matrices, followed by a transpose.
```lua
function ashita.d3dx.MatrixMultiplyTranspose(matrix, matrix1, matrix2);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * matrix1 - (object) The source matrix.
   * matrix2 - (object) The source matrix.
 * **Returns**
   * object - The result matrix.

---

### MatrixInverse

Calculates the inverse of a matrix.
```lua
function ashita.d3dx.MatrixInverse(matrix, matrixIn);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * matrixIn - (object) The source matrix.
 * **Returns**
   * object - The result matrix.
   * number - The result determinant.

---

### MatrixScaling

Builds a matrix that scales along the x-, y-, and z-axes.
```lua
function ashita.d3dx.MatrixScaling(matrix, sx, sy, sz);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * sx - (number) The scaling factor applied to the x-axis.
   * sy - (number) The scaling factor applied to the y-axis.
   * sz - (number) The scaling factor applied to the z-axis.
 * **Returns**
   * object - The result matrix.

---

### MatrixTranslation

Builds a matrix using the specified offsets.
```lua
function ashita.d3dx.MatrixTranslation(matrix, x, y, z);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * x - (number) The x-coord offset.
   * y - (number) The y-coord offset.
   * z - (number) The z-coord offset.
 * **Returns**
   * object - The result matrix.

---

### MatrixRotationX

Builds a matrix that rotates around the x-axis.
```lua
function ashita.d3dx.MatrixRotationX(matrix, angle);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * angle - (number) The angle of rotation in radians.
 * **Returns**
   * object - The result matrix.

---

### MatrixRotationY

Builds a matrix that rotates around the y-axis.
```lua
function ashita.d3dx.MatrixRotationY(matrix, angle);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * angle - (number) The angle of rotation in radians.
 * **Returns**
   * object - The result matrix.

---

### MatrixRotationZ

Builds a matrix that rotates around the z-axis.
```lua
function ashita.d3dx.MatrixRotationZ(matrix, angle);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * angle - (number) The angle of rotation in radians.
 * **Returns**
   * object - The result matrix.

---

### MatrixRotationAxis

Builds a matrix that rotates around an arbitrary axis.
```lua
function ashita.d3dx.MatrixRotationAxis(matrix, vec3, angle);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * vec3 - (object) The D3DXVECTOR3 that identifies the axis angle.
   * angle - (number) The angle of rotation in radians.
 * **Returns**
   * object - The result matrix.

---

### MatrixRotationQuaternion

Builds a matrix from a quaternion.
```lua
function ashita.d3dx.MatrixRotationQuaternion(matrix, quarternion);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * quarternion - (object) The D3DXQUATERNION that identifies the rotation.
 * **Returns**
   * object - The result matrix.

---

### MatrixRotationYawPitchRoll

Builds a matrix with a specified yaw, pitch, and roll.
```lua
function ashita.d3dx.MatrixRotationYawPitchRoll(matrix, yaw, pitch, roll);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * yaw - (number) The yaw around the y-axis. (In radians.)
   * pitch - (number) The pitch around the x-axis. (In radians.)
   * roll - (number) The roll around the z-axis. (In radians.)
 * **Returns**
   * object - The result matrix.

---

### MatrixTransformation

Builds a transformation matrix.
```lua
function ashita.d3dx.MatrixTransformation(matrix, scalingCenter, scalingRotation, scaling, rotationCenter, rotation, translation);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * scalingCenter - (object) The D3DXVECTOR3 identifying the center point.
   * scalingRotation - (object) The D3DXQUATERNION that specifies the scaling rotation.
   * scaling - (object) The D3DXVECTOR3 scaling vector.
   * rotationCenter - (object) The D3DXVECTOR3 that specifies the center of rotation.
   * rotation - (object) The D3DXQUATERNION that specifies the rotation.
   * translation - (object) The D3DXVECTOR3 that specifies the translation.
 * **Returns**
   * object - The result matrix.

---

### MatrixAffineTransformation

Builds an affine transformation matrix.
```lua
function ashita.d3dx.MatrixAffineTransformation(matrix, scaling, rotationCenter, rotation, translation);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * scaling - (number) The scaling factor.
   * rotationCenter - (object) The D3DXVECTOR3 that specifies the center of rotation.
   * rotation - (object) The D3DXQUATERNION that specifies the rotation.
   * translation - (object) The D3DXVECTOR3 that specifies the translation.
 * **Returns**
   * object - The result matrix.

---

### MatrixLookAtRH

Builds a right-handed look-at matrix.
```lua
function ashita.d3dx.MatrixLookAtRH(matrix, eye, at, up);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * eye - (object) The D3DXVECTOR3 that defines the eye point.
   * at - (object) The D3DXVECTOR3 that defines the camera look-at target.
   * up - (object) The D3DXVECTOR3 that defines the current world's up.
 * **Returns**
   * object - The result matrix.

---

### MatrixLookAtLH

Builds a left-handed look-at matrix.
```lua
function ashita.d3dx.MatrixLookAtLH(matrix, eye, at, up);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * eye - (object) The D3DXVECTOR3 that defines the eye point.
   * at - (object) The D3DXVECTOR3 that defines the camera look-at target.
   * up - (object) The D3DXVECTOR3 that defines the current world's up.
 * **Returns**
   * object - The result matrix.

---

### MatrixPerspectiveRH

Builds a right-handed perspective projection matrix.
```lua
function ashita.d3dx.MatrixPerspectiveRH(matrix, w, h, zn, zf);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * w - (number) The width of the view volume at the near view-plane.
   * h - (number) The height of the view volume at the near view-plane.
   * zn - (number) The Z of the near view-plane.
   * zf - (number) The Z of the far view-plane.
 * **Returns**
   * object - The result matrix.

---

### MatrixPerspectiveLH

Builds a left-handed perspective projection matrix
```lua
function ashita.d3dx.MatrixPerspectiveLH(matrix, w, h, zn, zf);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * w - (number) The width of the view volume at the near view-plane.
   * h - (number) The height of the view volume at the near view-plane.
   * zn - (number) The Z of the near view-plane.
   * zf - (number) The Z of the far view-plane.
 * **Returns**
   * object - The result matrix.

---

### MatrixPerspectiveFovRH

Builds a right-handed perspective projection matrix based on a field of view (FOV).
```lua
function ashita.d3dx.MatrixPerspectiveFovRH(matrix, fovy, aspect, zn, zf);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * fovy - (number) The field of view, in radians.
   * aspect - (number) The aspect ratio.
   * zn - (number) The Z of the near view-plane.
   * zf - (number) The Z of the far view-plane.
 * **Returns**
   * object - The result matrix.

---

### MatrixPerspectiveFovLH

Builds a left-handed perspective projection matrix based on a field of view (FOV).
```lua
function ashita.d3dx.MatrixPerspectiveFovLH(matrix, fovy, aspect, zn, zf);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * fovy - (number) The field of view, in radians.
   * aspect - (number) The aspect ratio.
   * zn - (number) The Z of the near view-plane.
   * zf - (number) The Z of the far view-plane.
 * **Returns**
   * object - The result matrix.

---

### MatrixPerspectiveOffCenterRH

Builds a customized, right-handed perspective projection matrix.
```lua
function ashita.d3dx.MatrixPerspectiveOffCenterRH(matrix, l, r, b, t, zn, zf);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * l - (number) Minimum x-value of the view volume.
   * r - (number) Maximum x-value of the view volume.
   * b - (number) Minimum y-value of the view volume.
   * t - (number) Maximum y-value of the view volume.
   * zn - (number) Minimum z-value of the view volume.
   * zf - (number) Maximum z-value of the view volume.
 * **Returns**
   * object - The result matrix.

---

### MatrixPerspectiveOffCenterLH

Builds a customized, left-handed perspective projection matrix.
```lua
function ashita.d3dx.MatrixPerspectiveOffCenterLH(matrix, l, r, b, t, zn, zf);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * l - (number) Minimum x-value of the view volume.
   * r - (number) Maximum x-value of the view volume.
   * b - (number) Minimum y-value of the view volume.
   * t - (number) Maximum y-value of the view volume.
   * zn - (number) Minimum z-value of the view volume.
   * zf - (number) Maximum z-value of the view volume.
 * **Returns**
   * object - The result matrix.

---

### MatrixOrthoRH

Builds a right-handed orthogonal projection matrix.
```lua
function ashita.d3dx.MatrixOrthoRH(matrix, w, h, zn, zf);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * w - (number) The width of the view volume.
   * h - (number) The height of the view volume.
   * zn - (number) Minimum z-value of the view volume.
   * zf - (number) Maximum z-value of the view volume.
 * **Returns**
   * object - The result matrix.

---

### MatrixOrthoLH

Builds a left-handed orthogonal projection matrix.
```lua
function ashita.d3dx.MatrixOrthoLH(matrix, w, h, zn, zf);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * w - (number) The width of the view volume.
   * h - (number) The height of the view volume.
   * zn - (number) Minimum z-value of the view volume.
   * zf - (number) Maximum z-value of the view volume.
 * **Returns**
   * object - The result matrix.

---

### MatrixOrthoOffCenterRH

Builds a customized, right-handed orthogonal projection matrix.
```lua
function ashita.d3dx.MatrixOrthoOffCenterRH(matrix, l, r, b, t, zn, zf);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * l - (number) Minimum x-value of the view volume.
   * r - (number) Maximum x-value of the view volume.
   * b - (number) Minimum y-value of the view volume.
   * t - (number) Maximum y-value of the view volume.
   * zn - (number) Minimum z-value of the view volume.
   * zf - (number) Maximum z-value of the view volume.
 * **Returns**
   * object - The result matrix.

---

### MatrixOrthoOffCenterLH

Builds a customized, left-handed orthogonal projection matrix.
```lua
function ashita.d3dx.MatrixOrthoOffCenterLH(matrix, l, r, b, t, zn, zf);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * l - (number) Minimum x-value of the view volume.
   * r - (number) Maximum x-value of the view volume.
   * b - (number) Minimum y-value of the view volume.
   * t - (number) Maximum y-value of the view volume.
   * zn - (number) Minimum z-value of the view volume.
   * zf - (number) Maximum z-value of the view volume.
 * **Returns**
   * object - The result matrix.

---

### MatrixShadow

Builds a matrix that flattens geometry into a plane.
```lua
function ashita.d3dx.MatrixShadow(matrix, light, plane);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * light - (object) The D3DXVECTOR4 describing the lights position.
   * plane - (object) The D3DXPLANE of the source.
 * **Returns**
   * object - The result matrix.

---

### MatrixReflect

Builds a matrix that reflects the coordinate system about a plane.
```lua
function ashita.d3dx.MatrixReflect(matrix, plane);
```

 * **Parameters**
   * matrix - (object) The D3DXMATRIX to use for the result.
   * plane - (object) The D3DXPLANE of the source.
 * **Returns**
   * object - The result matrix.

---
