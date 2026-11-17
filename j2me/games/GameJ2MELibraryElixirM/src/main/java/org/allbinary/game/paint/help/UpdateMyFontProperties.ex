#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.game.paint.help

defmodule UpdateMyFontProperties do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :actionStringArray, nil)
    JR.put(this, :keymappingBeginWidthArray, nil)
    JR.put(this, :actionStringDeltaXArray, nil)
    JR.put(this, :inputDeltaXArray, nil)
    JR.put(this, :sepArray, nil)
    JR.put(this, :sepWidthArray, nil)
    JR.put(this, :charHeight, 0)
        JR.put(this, :actionStringArray, JR.call(StringUtil.jm_getInstance(), :jm_getArrayInstance, []))
        JR.put(this, :keymappingBeginWidthArray, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY))
        JR.put(this, :actionStringDeltaXArray, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY))
        JR.put(this, :inputDeltaXArray, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY_ARRAY))
        JR.put(this, :sepArray, JR.get(StringUtil.jm_getInstance(), :ONE_EMPTY_STRING_ARRAY_OF_ARRAYS))
        JR.put(this, :sepWidthArray, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY_ARRAY))
        JR.put(this, :charHeight, 0)
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


