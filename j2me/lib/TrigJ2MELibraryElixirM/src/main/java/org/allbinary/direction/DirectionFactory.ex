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
# package org.allbinary.direction

defmodule DirectionFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> DirectionFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NAME, nil)
    JR.put(this, :LEFT, nil)
    JR.put(this, :RIGHT, nil)
    JR.put(this, :DOWN, nil)
    JR.put(this, :UP, nil)
    JR.put(this, :UP_LEFT, nil)
    JR.put(this, :UP_RIGHT, nil)
    JR.put(this, :DOWN_LEFT, nil)
    JR.put(this, :DOWN_RIGHT, nil)
    JR.put(this, :NOT_BORDERED_WITH, nil)
    JR.put(this, :NO_DIRECTION, nil)
    JR.put(this, :TOP, nil)
    JR.put(this, :BOTTOM, nil)
    JR.put(this, :ALL_DIRECTION, nil)
        JR.put(this, :NAME, "DIRECTION")
        JR.put(this, :LEFT, Direction.jnew(JR.get(CommonPhoneStrings.jm_getInstance(), :LEFT), "WEST", 0, 1))
        JR.put(this, :RIGHT, Direction.jnew(JR.get(CommonPhoneStrings.jm_getInstance(), :RIGHT), "EAST", 1, 0))
        JR.put(this, :DOWN, Direction.jnew(JR.get(CommonPhoneStrings.jm_getInstance(), :DOWN), "SOUTH", 2, 0))
        JR.put(this, :UP, Direction.jnew(JR.get(CommonPhoneStrings.jm_getInstance(), :UP), "NORTH", 3, 0))
        
        
        
        
        JR.put(this, :NOT_BORDERED_WITH, Direction.jnew("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0))
        JR.put(this, :NO_DIRECTION, Direction.jnew("NO_DIRECTION", "NO_DIRECTION", 9, 0))
        JR.put(this, :TOP, Direction.jnew("TOP", "TOP", 10, 0))
        JR.put(this, :BOTTOM, Direction.jnew("BOTTOM", "BOTTOM", 11, 0))
        JR.put(this, :ALL_DIRECTION, Direction.jnew("ALL_DIRECTION", "ALL_DIRECTION", 12, 0))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, DirectionFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.put(this, :UP_LEFT, Direction.jnew("UP LEFT", JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :UP), :jm_getOtherName, [])]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)]), :jm_append, [JR.call(JR.get(this, :LEFT), :jm_getOtherName, [])]), :jm_toString, []), 4, 0))
        JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
        JR.put(this, :UP_RIGHT, Direction.jnew("UP RIGHT", JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :UP), :jm_getOtherName, [])]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)]), :jm_append, [JR.call(JR.get(this, :RIGHT), :jm_getOtherName, [])]), :jm_toString, []), 5, 0))
        JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
        JR.put(this, :DOWN_LEFT, Direction.jnew("DOWN LEFT", JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :DOWN), :jm_getOtherName, [])]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)]), :jm_append, [JR.call(JR.get(this, :LEFT), :jm_getOtherName, [])]), :jm_toString, []), 6, 0))
        JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
        JR.put(this, :DOWN_RIGHT, Direction.jnew("DOWN RIGHT", JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :DOWN), :jm_getOtherName, [])]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)]), :jm_append, [JR.call(JR.get(this, :RIGHT), :jm_getOtherName, [])]), :jm_toString, []), 7, 0))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


