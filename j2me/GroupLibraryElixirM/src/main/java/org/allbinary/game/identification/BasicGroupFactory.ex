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
# package org.allbinary.game.identification

defmodule BasicGroupFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NAME, nil)
    JR.put(this, :NO_SUCH_GROUP, nil)
    JR.put(this, :GOOD, nil)
    JR.put(this, :ENEMY, nil)
    JR.put(this, :ENEMY_ON_LEVEL, nil)
    JR.put(this, :NONE, nil)
    JR.put(this, :GOOD_ARRAY, nil)
    JR.put(this, :ENEMY_ARRAY, nil)
    JR.put(this, :ENEMY_ON_LEVEL_ARRAY, nil)
    JR.put(this, :NONE_ARRAY, nil)
        JR.put(this, :NAME, "GROUP_NAME")
        JR.put(this, :NO_SUCH_GROUP, "No Such Group: ")
        JR.put(this, :GOOD, Group.jnew("Good Guys", JR.int16(0)))
        JR.put(this, :ENEMY, Group.jnew("Bad Guys", JR.int16(1)))
        JR.put(this, :ENEMY_ON_LEVEL, Group.jnew("Bad Guys on Level", JR.int16(2)))
        JR.put(this, :NONE, Group.jnew("Not On A Team", JR.int16(3)))
        JR.put(this, :GOOD_ARRAY, JR.afrom([JR.get(this, :GOOD)]))
        JR.put(this, :ENEMY_ARRAY, JR.afrom([JR.get(this, :ENEMY)]))
        JR.put(this, :ENEMY_ON_LEVEL_ARRAY, JR.afrom([JR.get(this, :ENEMY), JR.get(this, :ENEMY_ON_LEVEL)]))
        JR.put(this, :NONE_ARRAY, JR.afrom([JR.get(this, :NONE)]))
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (BasicGroupFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            BasicGroupFactory.jstatic_set_instance(BasicGroupFactory.jnew())
        end
        throw({:jreturn, BasicGroupFactory.jstatic_instance()})
    end)
  end
end


