# [TV Show Randomizer]

TV Show Randomizer (TVSR) helps you choosing which episode from your favorite TV show to watch.

## Getting started

### Requirements

 - [Elixir]

### Building TVSR

 1. Before building TVSR, you need to get its dependencies. To do so, navigate to the root of the repository from your Terminal and run this command:

```
mix deps.get
```

 2. You can then run the following command to build the `tvsr` executable:

```
mix escript.build
```

### Using TVSR

Pass **one or more** `.tvsr` file(s) as argument(s) to the `tvsr` executable:
```
./tvsr [file1] [file2] ... [fileN]
```

TVSR will output a random episode between all the episodes found in the file(s) you passed as parameter(s).

## Available TV Shows

TVSR interprets `.tvsr` files in order to select episodes.

Here is a list of the `.tvsr` files available in the `shows/` directory:

 - **[Friends.tvsr]** - All episodes
 - **[How-I-Met-Your-Mother.tvsr]** - All episodes

## File format

`.tvsr` files must follow some rules:

 - They should be named after a TV Show, with spaces replaced by hyphens (eg. `How-I-Met-Your-Mother.tvsr`)
 - They should contain 1 JSON-formatted episode per line. Example:

```
{"season": 1, "episode": 1, "title": "Pilot"}
{"season": 1, "episode": 2, "title": "Purple Giraffe"}
```

 - Empty lines can by used as separotors. You can use them to separate seasons inside your `.tvsh` files:

```
{"season": 1, "episode": 21, "title": "Milk"}
{"season": 1, "episode": 22, "title": "Come On"}

{"season": 2, "episode": 1, "title": "Where Were We?"}
{"season": 2, "episode": 2, "title": "The Scorpion and the Toad"}
```

## Getting involved

### Share

 - Enjoying TV Show Randomizer? Leave it [a star](https://github.com/ronanboiteau/TV-Show-Randomizer/stargazers) to show your support :)
 - And share the link to this repository with your friends!

### Contribute

You want to add awesome features to TV Show Randomizer? Or add a new TV Show file? Here's how:
 1. [Fork](https://github.com/ronanboiteau/TV-Show-Randomizer/network/members) TVSR
 2. Commit & push a new feature to the forked repository
 3. Open a [pull request](https://github.com/ronanboiteau/TV-Show-Randomizer/pulls) so I can merge your work in this repository :)

<!-- Links -->
[Elixir]: https://elixir-lang.org/install.html
[TV Show Randomizer]: https://github.com/ronanboiteau/TV-Show-Randomizer
[Friends.tvsr]: /shows/How-I-Met-Your-Mother.tvsr
[How-I-Met-Your-Mother.tvsr]: /shows/Friends.tvsr
