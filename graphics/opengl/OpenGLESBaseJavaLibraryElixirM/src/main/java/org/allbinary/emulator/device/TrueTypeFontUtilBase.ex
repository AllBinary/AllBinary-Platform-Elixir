# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# package org.allbinary.emulator.device

defmodule TrueTypeFontUtilBase do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :shortPattern, nil)
    JR.put(this, :patternAsBytes, nil)
    JR.put(this, :pattern, nil)
    JR.put(this, :charArray, nil)
    JR.put(this, :_characterWidth, nil)
    JR.put(this, :characterArray, nil)
    JR.put(this, :size, 0)
    JR.put(this, :lastCapIndex, 0)
    JR.put(this, :currentFont, nil)
    JR.put(this, :scale, 0)
    JR.put(this, :CELLS_PER_ROW, 0)
    JR.put(this, :fontSize, 0)
    JR.put(this, :baseCharWidth, 0)
    JR.put(this, :cellSize, 0)
    JR.put(this, :textureSize, 0)
    JR.put(this, :actualCellsPerRow, 0)
        
        JR.put(this, :patternAsBytes, JR.afrom([32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 32, 32, 32, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 32, 32, 32, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 32, 32, 32, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 32, 32, 32, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 32, 32, 32, 33, 36, 37, 96, JR.int8(-62), JR.int8(-84), JR.int8(-62), JR.int8(-84), 34, JR.int8(-62), JR.int8(-93), JR.int8(-62), JR.int8(-93), 94, 38, 42, 40, 32, 32, 32, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 32, 32, 32, 64, 126, 44, 47, 60, 62, 92, 124, JR.int8(-62), JR.int8(-82), JR.int8(-62), JR.int8(-82), JR.int8(-62), JR.int8(-87), JR.int8(-62), JR.int8(-87)]))
        JR.put(this, :pattern, JR.get(this, :patternAsBytes))
        JR.put(this, :charArray, JR.afrom([0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6f, 0x50, 0x56, 0x6b, 0x51, 0x52, 0x5a, 0x6a, 0x5c, 0x60, 0x5b, 0x62, 0x72, 0x63, 0x4b, 0x73, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0x6c, 0x69, 0x74, 0x64, 0x75, 0x4c, 0x70, 0xb, 0xc, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x65, 0x76, 0x66, 0x59, 0x61, 0x53, 0x2b, 0x2c, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x67, 0x77, 0x68, 0x71, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x58, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7b, 0x0, 0x0, 0x55, 0x0, 0x79, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0]))
        JR.put(this, :_characterWidth, JR.anew(byte_size(JR.get(this, :pattern)), 0))
        JR.put(this, :characterArray, JR.anew(1, 0))
        JR.put(this, :size, byte_size(JR.get(this, :pattern)))
        JR.put(this, :lastCapIndex, JR.index_of(JR.get(this, :pattern), ?Z))
        JR.put(this, :currentFont, Font.jm_getDefaultFont())
        
        
        
        
        
        
        
    nil
  end


  def jinit(this, p_scale) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :scale, p_scale)
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :shortPattern, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        if AvianUtil.jm_isAvian() do
            JR.lset(f, :shortPatterAsByteArray, JR.afrom([32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, JR.int8(-62), JR.int8(-84), JR.int8(-62), JR.int8(-84), 34, JR.int8(-62), JR.int8(-93), JR.int8(-62), JR.int8(-93), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, JR.int8(-62), JR.int8(-82), JR.int8(-62), JR.int8(-82), JR.int8(-62), JR.int8(-87), JR.int8(-62), JR.int8(-87)]))
            JR.lset(f, :shortPattern, JR.lget(f, :shortPatterAsByteArray))
        else
            JR.lset(f, :shortPatterAsByteArray, JR.afrom([32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, JR.int8(-62), JR.int8(-84), 34, JR.int8(-62), JR.int8(-93), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, JR.int8(-62), JR.int8(-82), JR.int8(-62), JR.int8(-87)]))
            JR.lset(f, :shortPattern, JR.lget(f, :shortPatterAsByteArray))
        end
        JR.put(this, :shortPattern, JR.lget(f, :shortPattern))
        JR.put(this, :scale, JR.lget(f, :scale))
        JR.put(this, :CELLS_PER_ROW, 16)
        JR.put(this, :fontSize, JR.int32((JR.int32(20 + 6)) * JR.get(this, :scale)))
        JR.put(this, :baseCharWidth, JR.int32(JR.get(this, :fontSize) + (JR.int32(6 * JR.get(this, :scale)))))
        JR.put(this, :cellSize, JR.int32(JR.get(this, :fontSize) + (JR.int32(6 * JR.get(this, :scale)))))
        JR.put(this, :textureSize, JR.call(this, :jm_getAsTextureSize, [JR.int32(JR.get(this, :CELLS_PER_ROW) * JR.get(this, :cellSize))]))
        JR.put(this, :actualCellsPerRow, div(JR.get(this, :textureSize), JR.get(this, :cellSize)))
    end)
  end

  def jnew(p_scale) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_scale)
    this
  end


  def jm_getAsTextureSize(this, p_textureSize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :textureSize, p_textureSize)
        if (JR.lget(f, :textureSize) <= 64) do
            JR.lset(f, :textureSize, 64)
        else
            if (JR.lget(f, :textureSize) <= 128) do
            JR.lset(f, :textureSize, 128)
        else
            if (JR.lget(f, :textureSize) <= 256) do
            JR.lset(f, :textureSize, 256)
        else
            if (JR.lget(f, :textureSize) <= 512) do
            JR.lset(f, :textureSize, 512)
        else
            if (JR.lget(f, :textureSize) <= 1024) do
            JR.lset(f, :textureSize, 1024)
        end
        end
        end
        end
        end
        throw({:jreturn, JR.lget(f, :textureSize)})
    end)
  end


  def jm_getCellSize(this, p_cellSize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cellSize, p_cellSize)
        if (JR.lget(f, :cellSize) <= 16) do
            JR.lset(f, :cellSize, 16)
        else
            if (JR.lget(f, :cellSize) <= 32) do
            JR.lset(f, :cellSize, 32)
        else
            if (JR.lget(f, :cellSize) <= 64) do
            JR.lset(f, :cellSize, 64)
        else
            if (JR.lget(f, :cellSize) <= 128) do
            JR.lset(f, :cellSize, 128)
        else
            if (JR.lget(f, :cellSize) <= 256) do
            JR.lset(f, :cellSize, 256)
        end
        end
        end
        end
        end
        throw({:jreturn, JR.lget(f, :cellSize)})
    end)
  end


  def jm_getYOffset(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (JR.int32((JR.int32(JR.get(this, :scale) - 1)) * JR.get(this, :cellSize)))})
    end)
  end
end


