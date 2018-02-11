defmodule TVSR.FileReader do
  def parse_episode(json_str, file) do
    try do
      Poison.Parser.parse!(json_str)
    rescue
      Poison.SyntaxError -> Program.abort("Syntax error in file '" <> file <> "'")
    end
  end

  def extract_episodes(path, content) do
    show =
      path
      |> Path.basename(".tvsr")
      |> String.replace("-", " ")
    content
    |> String.split("\n")
    |> Enum.filter(fn(elem) -> !String.equivalent?(elem, "") end)
    |> Enum.map(fn(elem) -> parse_episode(elem, Path.basename(path)) end)
    |> Enum.map(fn(elem) -> Map.put(elem, "show", show) end)
  end

  def get_episodes_from_file(path) do
    case path |> File.read() do
      {:ok, content} -> extract_episodes(path, content)
      {:error, _} -> Program.abort("[ERROR] Cannot read file '" <> path <> "'")
    end
  end
end
