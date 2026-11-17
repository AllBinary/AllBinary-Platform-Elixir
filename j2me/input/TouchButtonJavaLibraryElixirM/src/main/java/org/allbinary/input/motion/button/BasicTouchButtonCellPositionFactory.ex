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
# package org.allbinary.input.motion.button

defmodule BasicTouchButtonCellPositionFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :TOP_RIGHT, nil)
    JR.put(this, :TOP_LEFT, nil)
    JR.put(this, :SECOND_FROM_TOP_LEFT, nil)
    JR.put(this, :SECOND_FROM_TOP_RIGHT, nil)
    JR.put(this, :TOP_SECOND_FROM_LEFT, nil)
    JR.put(this, :TOP_SECOND_FROM_RIGHT, nil)
    JR.put(this, :BOTTOM_RIGHT, nil)
    JR.put(this, :BOTTOM_SECOND_FROM_RIGHT, nil)
    JR.put(this, :SECOND_FROM_BOTTOM_RIGHT, nil)
    JR.put(this, :THIRD_FROM_BOTTOM_RIGHT, nil)
    JR.put(this, :FOURTH_FROM_BOTTOM_RIGHT, nil)
    JR.put(this, :SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT, nil)
    JR.put(this, :SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT, nil)
    JR.put(this, :SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT, nil)
    JR.put(this, :BOTTOM_THIRD_FROM_RIGHT, nil)
    JR.put(this, :BOTTOM_FOURTH_FROM_RIGHT, nil)
    JR.put(this, :BOTTOM_SECOND_FROM_LEFT, nil)
    JR.put(this, :SECOND_FROM_BOTTOM_LEFT, nil)
    JR.put(this, :THIRD_FROM_BOTTOM_LEFT, nil)
    JR.put(this, :BOTTOM_LEFT, nil)
    JR.put(this, :SECOND_FROM_BOTTOM_SECOND_FROM_LEFT, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
        JR.put(this, :SECOND_FROM_TOP_LEFT, nil)
        JR.put(this, :SECOND_FROM_TOP_RIGHT, nil)
        JR.put(this, :TOP_SECOND_FROM_LEFT, nil)
        JR.put(this, :TOP_SECOND_FROM_RIGHT, nil)
        
        
        
        JR.put(this, :THIRD_FROM_BOTTOM_RIGHT, nil)
        JR.put(this, :FOURTH_FROM_BOTTOM_RIGHT, nil)
        
        JR.put(this, :SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT, nil)
        JR.put(this, :SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT, nil)
        JR.put(this, :BOTTOM_THIRD_FROM_RIGHT, nil)
        JR.put(this, :BOTTOM_FOURTH_FROM_RIGHT, nil)
        
        
        JR.put(this, :THIRD_FROM_BOTTOM_LEFT, nil)
        
        
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.lset(f, :touchButtonLocationHelper, TouchButtonLocationHelper.jnew())
        JR.lset(f, :cellPositionFactory, CellPositionFactory.jm_getInstance())
        JR.call(JR.lget(f, :cellPositionFactory), :jm_init, [JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []), JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, [])])
        JR.put(this, :TOP_LEFT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [0, 0]))
        JR.put(this, :TOP_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 1), 0]))
        JR.put(this, :BOTTOM_LEFT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [0, (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 1)]))
        JR.put(this, :BOTTOM_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 1), (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 1)]))
        JR.put(this, :BOTTOM_SECOND_FROM_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 2), (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 1)]))
        JR.put(this, :SECOND_FROM_BOTTOM_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 1), (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 2)]))
        JR.put(this, :SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 2), (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 2)]))
        JR.put(this, :BOTTOM_SECOND_FROM_LEFT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [1, (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 1)]))
        JR.put(this, :SECOND_FROM_BOTTOM_LEFT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [0, (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 2)]))
        JR.put(this, :SECOND_FROM_BOTTOM_SECOND_FROM_LEFT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [1, (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 2)]))
        if (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) > 2) do
            JR.put(this, :SECOND_FROM_TOP_LEFT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [0, 1]))
            JR.put(this, :SECOND_FROM_TOP_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 1), 1]))
        else
            JR.put(this, :SECOND_FROM_TOP_LEFT, JR.get(JR.lget(f, :cellPositionFactory), :NONE))
            JR.put(this, :SECOND_FROM_TOP_RIGHT, JR.get(JR.lget(f, :cellPositionFactory), :NONE))
        end
        if (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) >= 4) do
            JR.put(this, :THIRD_FROM_BOTTOM_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 1), (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 3)]))
            JR.put(this, :FOURTH_FROM_BOTTOM_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 1), (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 4)]))
            JR.put(this, :THIRD_FROM_BOTTOM_LEFT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [0, (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 3)]))
        else
            JR.put(this, :THIRD_FROM_BOTTOM_RIGHT, JR.get(JR.lget(f, :cellPositionFactory), :NONE))
            JR.put(this, :FOURTH_FROM_BOTTOM_RIGHT, JR.get(JR.lget(f, :cellPositionFactory), :NONE))
            JR.put(this, :THIRD_FROM_BOTTOM_LEFT, JR.get(JR.lget(f, :cellPositionFactory), :NONE))
        end
        if (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) >= 4) do
            JR.put(this, :SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 3), (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 2)]))
            JR.put(this, :SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 4), (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 2)]))
            JR.put(this, :BOTTOM_THIRD_FROM_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 3), (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 1)]))
            JR.put(this, :BOTTOM_FOURTH_FROM_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 4), (JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalRows, []) - 1)]))
            JR.put(this, :TOP_SECOND_FROM_LEFT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [1, 0]))
            JR.put(this, :TOP_SECOND_FROM_RIGHT, JR.call(JR.lget(f, :cellPositionFactory), :jm_getInstanceColRow, [(JR.call(JR.lget(f, :touchButtonLocationHelper), :jm_getTotalColumns, []) - 2), 0]))
        else
            JR.put(this, :SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT, JR.get(JR.lget(f, :cellPositionFactory), :NONE))
            JR.put(this, :SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT, JR.get(JR.lget(f, :cellPositionFactory), :NONE))
            JR.put(this, :BOTTOM_THIRD_FROM_RIGHT, JR.get(JR.lget(f, :cellPositionFactory), :NONE))
            JR.put(this, :BOTTOM_FOURTH_FROM_RIGHT, JR.get(JR.lget(f, :cellPositionFactory), :NONE))
            JR.put(this, :TOP_SECOND_FROM_LEFT, JR.get(JR.lget(f, :cellPositionFactory), :NONE))
            JR.put(this, :TOP_SECOND_FROM_RIGHT, JR.get(JR.lget(f, :cellPositionFactory), :NONE))
        end
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


