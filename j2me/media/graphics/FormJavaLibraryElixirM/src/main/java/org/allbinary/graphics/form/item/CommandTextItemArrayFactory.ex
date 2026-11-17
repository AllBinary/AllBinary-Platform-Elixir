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
# package org.allbinary.graphics.form.item

defmodule CommandTextItemArrayFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
    JR.put(this, :visitorInterface, nil)
        JR.put(this, :list, BasicArrayListD.jnew())
        
    nil
  end


  def jinit(this, p_visitorInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :visitorInterface, p_visitorInterface)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :visitorInterface, JR.lget(f, :visitorInterface))
    end)
  end

  def jnew(p_visitorInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_visitorInterface)
    this
  end


  def jm_getInstance(this, p_vector, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :vector, p_vector)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        JR.lset(f, :vectorUtil, VectorUtil.jm_getInstance())
        JR.lset(f, :size, JR.call(JR.lget(f, :vectorUtil), :jm_getSize, [JR.lget(f, :vector)]))
        JR.call(JR.get(this, :list), :jm_clear, [])
        JR.lset(f, :textItem, nil)
        JR.lset(f, :priorityLimit, 7)
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.lset(f, :isLargeEnoughDisplayForBigMenu, (((JR.call(JR.lget(f, :displayInfo), :jm_isPortrait, []) && (JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []) >= JR.get(ScreenInfo.jm_getInstance(), :MEDIUM_WIDTH)))) || ((!JR.call(JR.lget(f, :displayInfo), :jm_isPortrait, []) && (JR.call(JR.lget(f, :displayInfo), :jm_getLastWidth, []) >= JR.get(ScreenInfo.jm_getInstance(), :MEDIUM_WIDTH))))))
        if (!JR.lget(f, :isLargeEnoughDisplayForBigMenu) && (JR.lget(f, :size) > 3)) do
            JR.lset(f, :priorityLimit, 3)
        end
        JR.lset(f, :command, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :command, JR.call(JR.lget(f, :vectorUtil), :jm_elementAt, [JR.lget(f, :vector), JR.lget(f, :index)]))
            if (JR.call(JR.lget(f, :command), :jm_getPriority, []) < JR.lget(f, :priorityLimit)) do
                JR.lset(f, :aBoolean, JR.call(JR.get(this, :visitorInterface), :jm_visit, [JR.lget(f, :command)]))
                if JR.call(JR.lget(f, :aBoolean), :jm_booleanValue, []) do
                    JR.lset(f, :textItem, CommandTextItem.jnew(JR.lget(f, :command), ImageItem.jstatic_LAYOUT_DEFAULT(), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor)))
                    JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :textItem)])
                end
            end
        end)
        JR.lset(f, :textItemArray, JR.anew(JR.call(JR.get(this, :list), :jm_size, []), nil))
        JR.lset(f, :size2, JR.alength(JR.lget(f, :textItemArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size2)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.lget(f, :textItemArray), JR.lget(f, :index), JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index)))
        end)
        throw({:jreturn, JR.lget(f, :textItemArray)})
    end)
  end
end


