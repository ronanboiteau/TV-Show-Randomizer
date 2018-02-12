defmodule TVSR do
  def get_episodes([]) do
    Program.abort("You must have at least one '.tvsr' file in the parameters.")
  end

  def get_episodes([ path ]) do
    TVSR.FileReader.get_episodes_from_file(path)
  end

  def get_episodes([ path | list]) do
    TVSR.FileReader.get_episodes_from_file(path) ++ TVSR.get_episodes(list)
  end

  def main(args) do
    {_, files, _} = OptionParser.parse(args, strict: [file: :string],
                                             aliases: [f: :file])
    rand_ep =
      TVSR.get_episodes(files)
      |> Enum.random()
    IO.puts("[#{rand_ep["show"]}] S#{rand_ep["season"]} E#{rand_ep["episode"]} - #{rand_ep["title"]}")
  end
end
