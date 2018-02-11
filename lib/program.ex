defmodule Program do

  def abort(err_msg) do
    IO.puts(err_msg)
    System.halt(1)
  end

end