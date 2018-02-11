defmodule TVSR.FileReader do

  def extract_episodes(content) do
    content
    |> String.split("\n")
    |> Enum.filter(fn(str) -> !String.equivalent?(str, "") end)
  end

  def get_episodes_from_file(path) do
    case path |> File.read() do
      {:ok, content} -> extract_episodes(content)
      {:error, _} -> Program.abort("[ERROR] Cannot read file '" <> path <> "'")
    end
  end

end
