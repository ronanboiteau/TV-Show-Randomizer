# [TV Show Randomizer]

TV Show Randomizer (TVSR) helps you choosing which episode from your favorite TV show to watch.

## Getting started

### Requirements

 - [Elixir]

### Building TVSR

Navigate to the root of the repository from your Terminal and run the following command to build the `tvsr` executable:

```
mix escript.build
```

### File format

TVSR interprets `.tvsr` files in order to select episodes. These files must follow two rules:

 - They should be named after a TV Show, with spaces replaced by hyphens (eg. `How-I-Met-Your-Mother.tvsr`)
 - They should contain 1 JSON-formatted episode per line. Example:

```
{"season": 1, "episode": 1, "title": "Pilot"}
{"season": 1, "episode": 2, "title": "Purple Giraffe"}
```

Some `.tvsr` sample files can be found in the `shows/` directory:

 - **Friends.tvsr**

### Using TVSR

Pass **one or more** `.tvsr` file(s) as argument(s) to the `tvsr` executable:
```
./tvsr [file1] [file2] ... [fileN]
```

## Author

 - **Ronan Boiteau** ([GitHub](https://github.com/ronanboiteau) / [LinkedIn](https://www.linkedin.com/in/ronanboiteau/))

<!-- Links -->
[Elixir]: https://elixir-lang.org/install.html
[TV Show Randomizer]: https://github.com/ronanboiteau/TV-Show-Ramdomizer
