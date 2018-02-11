defmodule TVSR do

  def main(args) do
    {options, files, _} = OptionParser.parse(args, strict: [file: :string, season: :integer], aliases: [f: :file, s: :season])
    IO.inspect(options)
    IO.inspect(files)
  end

end
