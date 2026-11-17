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
# package org.allbinary.game.ag.layer.hud.basic.notification

defmodule NoGameGameNotificationHud do
  def jsuper(), do: GameNotificationHud

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        GameNotificationHud.jinit(this, JR.get(BasicHudFactory.jm_getInstance(), :TOPCENTER), JR.get(BasicHudFactory.jm_getInstance(), :HORIZONTAL), 2, JR.get(BasicColorFactory.jm_getInstance(), :RED))
        NoGameGameNotificationHud.jinitfields(this)
        JR.put(this, :updateMaxWidth, 40)
        JR.put(this, :updateMaxHeight, 14)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


