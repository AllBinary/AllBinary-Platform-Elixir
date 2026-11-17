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
# package org.allbinary.game.input

defmodule PCKeyFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> PCKeyFactory.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :keyEventWrapper, nil)
    JR.put(this, :UNKNOWN, nil)
    JR.put(this, :ENTER, nil)
    JR.put(this, :_A, nil)
    JR.put(this, :_B, nil)
    JR.put(this, :_C, nil)
    JR.put(this, :_D, nil)
    JR.put(this, :_E, nil)
    JR.put(this, :_F, nil)
    JR.put(this, :_G, nil)
    JR.put(this, :_H, nil)
    JR.put(this, :_I, nil)
    JR.put(this, :_J, nil)
    JR.put(this, :_K, nil)
    JR.put(this, :_L, nil)
    JR.put(this, :_M, nil)
    JR.put(this, :_N, nil)
    JR.put(this, :_O, nil)
    JR.put(this, :_P, nil)
    JR.put(this, :_Q, nil)
    JR.put(this, :_R, nil)
    JR.put(this, :_S, nil)
    JR.put(this, :_T, nil)
    JR.put(this, :_U, nil)
    JR.put(this, :_V, nil)
    JR.put(this, :_W, nil)
    JR.put(this, :_X, nil)
    JR.put(this, :_Y, nil)
    JR.put(this, :_Z, nil)
    JR.put(this, :a, nil)
    JR.put(this, :b, nil)
    JR.put(this, :c, nil)
    JR.put(this, :d, nil)
    JR.put(this, :e, nil)
    JR.put(this, :f, nil)
    JR.put(this, :g, nil)
    JR.put(this, :h, nil)
    JR.put(this, :i, nil)
    JR.put(this, :j, nil)
    JR.put(this, :k, nil)
    JR.put(this, :l, nil)
    JR.put(this, :m, nil)
    JR.put(this, :n, nil)
    JR.put(this, :o, nil)
    JR.put(this, :p, nil)
    JR.put(this, :q, nil)
    JR.put(this, :r, nil)
    JR.put(this, :s, nil)
    JR.put(this, :t, nil)
    JR.put(this, :u, nil)
    JR.put(this, :v, nil)
    JR.put(this, :w, nil)
    JR.put(this, :x, nil)
    JR.put(this, :y, nil)
    JR.put(this, :z, nil)
    JR.put(this, :ZERO, nil)
    JR.put(this, :ONE, nil)
    JR.put(this, :TWO, nil)
    JR.put(this, :THREE, nil)
    JR.put(this, :FOUR, nil)
    JR.put(this, :FIVE, nil)
    JR.put(this, :SIX, nil)
    JR.put(this, :SEVEN, nil)
    JR.put(this, :EIGHT, nil)
    JR.put(this, :NINE, nil)
    JR.put(this, :DPAD_UP, nil)
    JR.put(this, :DPAD_DOWN, nil)
    JR.put(this, :DPAD_LEFT, nil)
    JR.put(this, :DPAD_RIGHT, nil)
    JR.put(this, :DPAD_UP2, nil)
    JR.put(this, :DPAD_DOWN2, nil)
    JR.put(this, :DPAD_LEFT2, nil)
    JR.put(this, :DPAD_RIGHT2, nil)
    JR.put(this, :COMMA, nil)
    JR.put(this, :SPACE, nil)
    JR.put(this, :DEL, nil)
    JR.put(this, :STAR, nil)
    JR.put(this, :QUESTION, nil)
    JR.put(this, :PERIOD, nil)
    JR.put(this, :ESCAPE, nil)
    JR.put(this, :BACK_SPACE, nil)
        JR.put(this, :keyEventWrapper, ABKeyEventWrapper.jm_getInstance())
        JR.put(this, :UNKNOWN, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_UNDEFINED), "UNKNOWN"))
        JR.put(this, :ENTER, PCGameKey.jnew(5, "Enter"))
        JR.put(this, :_A, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_A), "A"))
        JR.put(this, :_B, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_B), "B"))
        JR.put(this, :_C, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_C), "C"))
        JR.put(this, :_D, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_D), "D"))
        JR.put(this, :_E, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_E), "E"))
        JR.put(this, :_F, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_F), "F"))
        JR.put(this, :_G, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_G), "G"))
        JR.put(this, :_H, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_H), "H"))
        JR.put(this, :_I, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_I), "I"))
        JR.put(this, :_J, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_J), "J"))
        JR.put(this, :_K, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_K), "K"))
        JR.put(this, :_L, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_L), "L"))
        JR.put(this, :_M, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_M), "M"))
        JR.put(this, :_N, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_N), "N"))
        JR.put(this, :_O, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_O), "O"))
        JR.put(this, :_P, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_P), "P"))
        JR.put(this, :_Q, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_Q), "Q"))
        JR.put(this, :_R, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_R), "R"))
        JR.put(this, :_S, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_S), "S"))
        JR.put(this, :_T, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_T), "T"))
        JR.put(this, :_U, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_U), "U"))
        JR.put(this, :_V, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_V), "V"))
        JR.put(this, :_W, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_W), "W"))
        JR.put(this, :_X, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_X), "X"))
        JR.put(this, :_Y, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_Y), "Y"))
        JR.put(this, :_Z, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_Z), "Z"))
        JR.put(this, :a, PCGameKey.jnew(97, "a"))
        JR.put(this, :b, PCGameKey.jnew(98, "b"))
        JR.put(this, :c, PCGameKey.jnew(99, "c"))
        JR.put(this, :d, PCGameKey.jnew(100, "d"))
        JR.put(this, :e, PCGameKey.jnew(101, "e"))
        JR.put(this, :f, PCGameKey.jnew(102, "f"))
        JR.put(this, :g, PCGameKey.jnew(103, "g"))
        JR.put(this, :h, PCGameKey.jnew(104, "h"))
        JR.put(this, :i, PCGameKey.jnew(105, "i"))
        JR.put(this, :j, PCGameKey.jnew(106, "j"))
        JR.put(this, :k, PCGameKey.jnew(107, "k"))
        JR.put(this, :l, PCGameKey.jnew(108, "l"))
        JR.put(this, :m, PCGameKey.jnew(109, "m"))
        JR.put(this, :n, PCGameKey.jnew(110, "n"))
        JR.put(this, :o, PCGameKey.jnew(111, "o"))
        JR.put(this, :p, PCGameKey.jnew(112, "p"))
        JR.put(this, :q, PCGameKey.jnew(113, "q"))
        JR.put(this, :r, PCGameKey.jnew(114, "r"))
        JR.put(this, :s, PCGameKey.jnew(115, "s"))
        JR.put(this, :t, PCGameKey.jnew(116, "t"))
        JR.put(this, :u, PCGameKey.jnew(117, "u"))
        JR.put(this, :v, PCGameKey.jnew(118, "v"))
        JR.put(this, :w, PCGameKey.jnew(119, "w"))
        JR.put(this, :x, PCGameKey.jnew(120, JR.get(PositionStrings.jm_getInstance(), :X)))
        JR.put(this, :y, PCGameKey.jnew(121, JR.get(PositionStrings.jm_getInstance(), :Y)))
        JR.put(this, :z, PCGameKey.jnew(122, "z"))
        JR.put(this, :ZERO, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_0), JR.get(CommonPhoneStrings.jm_getInstance(), :ZERO)))
        JR.put(this, :ONE, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_1), JR.get(CommonPhoneStrings.jm_getInstance(), :ONE)))
        JR.put(this, :TWO, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_2), JR.get(CommonPhoneStrings.jm_getInstance(), :TWO)))
        JR.put(this, :THREE, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_3), JR.get(CommonPhoneStrings.jm_getInstance(), :THREE)))
        JR.put(this, :FOUR, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_4), JR.get(CommonPhoneStrings.jm_getInstance(), :FOUR)))
        JR.put(this, :FIVE, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_5), JR.get(CommonPhoneStrings.jm_getInstance(), :FIVE)))
        JR.put(this, :SIX, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_6), JR.get(CommonPhoneStrings.jm_getInstance(), :SIX)))
        JR.put(this, :SEVEN, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_7), JR.get(CommonPhoneStrings.jm_getInstance(), :SEVEN)))
        JR.put(this, :EIGHT, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_8), JR.get(CommonPhoneStrings.jm_getInstance(), :EIGHT)))
        JR.put(this, :NINE, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_9), JR.get(CommonPhoneStrings.jm_getInstance(), :NINE)))
        JR.put(this, :DPAD_UP, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_UP), JR.get(CommonPhoneStrings.jm_getInstance(), :UP)))
        JR.put(this, :DPAD_DOWN, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_DOWN), JR.get(CommonPhoneStrings.jm_getInstance(), :DOWN)))
        JR.put(this, :DPAD_LEFT, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_LEFT), JR.get(CommonPhoneStrings.jm_getInstance(), :LEFT)))
        JR.put(this, :DPAD_RIGHT, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_RIGHT), JR.get(CommonPhoneStrings.jm_getInstance(), :RIGHT)))
        JR.put(this, :DPAD_UP2, JR.get(this, :DPAD_UP))
        JR.put(this, :DPAD_DOWN2, JR.get(this, :DPAD_DOWN))
        JR.put(this, :DPAD_LEFT2, JR.get(this, :DPAD_LEFT))
        JR.put(this, :DPAD_RIGHT2, JR.get(this, :DPAD_RIGHT))
        JR.put(this, :COMMA, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_COMMA), "COMMA"))
        JR.put(this, :SPACE, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_SPACE), "SPACE"))
        JR.put(this, :DEL, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_DELETE), "DEL"))
        JR.put(this, :STAR, PCGameKey.jnew(42, JR.get(CommonPhoneStrings.jm_getInstance(), :STAR)))
        JR.put(this, :QUESTION, PCGameKey.jnew(47, "?"))
        JR.put(this, :PERIOD, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_PERIOD), JR.get(CommonSeps.jm_getInstance(), :PERIOD)))
        JR.put(this, :ESCAPE, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_ESCAPE), "Esc"))
        JR.put(this, :BACK_SPACE, PCGameKey.jnew(JR.get(JR.get(this, :keyEventWrapper), :VK_BACK_SPACE), "Backspace"))
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
        throw({:jreturn, PCKeyFactory.jstatic_SINGLETON()})
    end)
  end


  def jm_isSubmission(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(this, :ENTER)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isDelete(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(this, :DEL)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isBackSpace(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(this, :BACK_SPACE)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isUp(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if ((JR.lget(f, :input) == JR.get(this, :DPAD_UP)) || (JR.lget(f, :input) == JR.get(this, :DPAD_UP2))) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isDown(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if ((JR.lget(f, :input) == JR.get(this, :DPAD_DOWN)) || (JR.lget(f, :input) == JR.get(this, :DPAD_DOWN2))) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isLeft(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if ((JR.lget(f, :input) == JR.get(this, :DPAD_LEFT)) || (JR.lget(f, :input) == JR.get(this, :DPAD_LEFT2))) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isRight(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if ((JR.lget(f, :input) == JR.get(this, :DPAD_RIGHT)) || (JR.lget(f, :input) == JR.get(this, :DPAD_RIGHT2))) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isEnter(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(this, :ENTER)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end
end


