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
# package org.allbinary.string

defmodule CommonSeps do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CommonSeps.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NEW_LINE, nil)
    JR.put(this, :SEMICOLON, nil)
    JR.put(this, :EQUALS, nil)
    JR.put(this, :SPACE, nil)
    JR.put(this, :COMMA, nil)
    JR.put(this, :COLON, nil)
    JR.put(this, :PERIOD, nil)
    JR.put(this, :UNDERSCORE, nil)
    JR.put(this, :COLON_SEP, nil)
    JR.put(this, :COMMA_SEP, nil)
    JR.put(this, :PARENTHESIS_OPEN, nil)
    JR.put(this, :PARENTHESIS_CLOSE, nil)
    JR.put(this, :BRACE_OPEN, nil)
    JR.put(this, :BRACE_CLOSE, nil)
    JR.put(this, :BRACKET_OPEN, nil)
    JR.put(this, :BRACKET_CLOSE, nil)
    JR.put(this, :DASH, nil)
    JR.put(this, :PERCENT, nil)
    JR.put(this, :AMPERSAND, nil)
    JR.put(this, :FORWARD_SLASH, nil)
    JR.put(this, :BACK_SLASH, nil)
    JR.put(this, :QUESTION, nil)
    JR.put(this, :QUOTE, nil)
    JR.put(this, :QUOTE_END, nil)
    JR.put(this, :COMMENT, nil)
    JR.put(this, :INDENT, nil)
        JR.put(this, :NEW_LINE, "\n")
        JR.put(this, :SEMICOLON, ";")
        JR.put(this, :EQUALS, "=")
        JR.put(this, :SPACE, " ")
        JR.put(this, :COMMA, ",")
        JR.put(this, :COLON, ":")
        JR.put(this, :PERIOD, ".")
        JR.put(this, :UNDERSCORE, "_")
        JR.put(this, :COLON_SEP, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :COLON)]), :jm_append, [JR.get(this, :SPACE)]), :jm_toString, []))
        JR.put(this, :COMMA_SEP, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :COMMA)]), :jm_append, [JR.get(this, :SPACE)]), :jm_toString, []))
        JR.put(this, :PARENTHESIS_OPEN, "(")
        JR.put(this, :PARENTHESIS_CLOSE, ")")
        JR.put(this, :BRACE_OPEN, "{")
        JR.put(this, :BRACE_CLOSE, "}")
        JR.put(this, :BRACKET_OPEN, "[")
        JR.put(this, :BRACKET_CLOSE, "]")
        JR.put(this, :DASH, "-")
        JR.put(this, :PERCENT, "%")
        JR.put(this, :AMPERSAND, "&")
        JR.put(this, :FORWARD_SLASH, "/")
        JR.put(this, :BACK_SLASH, "\\")
        JR.put(this, :QUESTION, "?")
        JR.put(this, :QUOTE, "\"")
        JR.put(this, :QUOTE_END, "\",")
        JR.put(this, :COMMENT, "//")
        JR.put(this, :INDENT, "    ")
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
        throw({:jreturn, CommonSeps.jstatic_instance()})
    end)
  end
end


