# Generated Code Do Not Modify
# package java.lang.annotation

defmodule Annotation do
  def jsuper(), do: JObject


  def jm_annotationType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "annotationType")})
    end)
  end
end


