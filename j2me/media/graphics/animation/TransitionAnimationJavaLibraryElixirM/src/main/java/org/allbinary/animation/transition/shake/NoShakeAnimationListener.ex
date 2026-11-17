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
# package org.allbinary.animation.transition.shake

defmodule NoShakeAnimationListener do
  def jsuper(), do: ShakeAnimationListener
def jstatic_NO_SHAKE_ANIMATION_LISTENER(), do: JR.static_get(__MODULE__, :NO_SHAKE_ANIMATION_LISTENER, fn -> NoShakeAnimationListener.jnew() end)
  def jstatic_set_NO_SHAKE_ANIMATION_LISTENER(value), do: JR.static_put(__MODULE__, :NO_SHAKE_ANIMATION_LISTENER, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    ShakeAnimationListener.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


