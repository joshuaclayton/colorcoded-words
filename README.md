# Color-coded words

A command line tool to find words that could be represented by visually similar
hex values.

## Example

```
cat /usr/share/dict/words | colorcoded-words-exe
abased - aba5ed
abasia - aba51a
abasic - aba51c
...
```

## Installation

Install with [Stack](https://www.haskellstack.org/):

```
git clone https://github.com/joshuaclayton/colorcoded-words
cd colorcoded-words
stack install
```

## License

Copyright 2017 Josh Clayton. See the [LICENSE](LICENSE).
