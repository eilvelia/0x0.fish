# 0x0.fish

0x0.fish is a fully-featured [0x0.st][] client (cli utility) for fish. 0x0 is a paste
service or a temporary file uploader.

Features:

- Basic upload from a file or stdin
- Upload of a remote URL
- Setting expiration duration or expiration date
- Displaying and using the management token
- Automatic copying
- Using custom instances

This repository is pretty simple and contains two fish files: the implementation in
[functions/0x0.fish](./functions/0x0.fish) and completions in
[completions/0x0.fish](./completions/0x0.fish).

With fish installed, it can also be used as a standalone application instead of a fish
function using the [0x0](./0x0) shebang file in the root of the repository.

## Installation

You can install 0x0.fish via a plugin manager like [Fisher][] (`fisher install
eilvelia/0x0.fish`) or copy the `functions/` `completions/` structure into your
`~/.config/fish`.

If you do not use fish as your shell, grab the [0x0](./0x0) file.

## Usage

```
0x0.fish v0.1.0

Usage: 0x0 [OPTIONS] [FILE | REMOTE_URL | INSTANCE_URL]

Paste to 0x0.st via curl. With no FILE, or when FILE is -, reads standard input.
If a http(s) URL is given instead of a file path, it is passed to 0x0.st
without fetching its contents locally.

Options:
  -n, --name NAME         Set the name of the file sent to 0x0.st. Ignored if
                          REMOTE_URL is given.
                          [default: FILE or paste.txt]
  -e, --expires-in TIME   Set the lifetime of the file in hours. Also supports
                          optional modifiers: h for hour, d for day, w for week,
                          m for month, y for year (case-insensitive).
                          [examples: 24, 2w2d5h, 1y]
  -d, --expire-date DATE  Set the expiration date for the file, either in
                          Unix epoch *milliseconds* or in the format parsed
                          by GNU date. Cannot be used if --expires-in is set.
                          On macOS, install gdate for this option to work.
  -T, --show-token        Also display the management token that can be used
                          to delete or edit pasted files.
                          Requires curl >= 7.84.0.
      --no-secret         Do not make the file URL secret.
  -c, --copy              Automatically copy the resulting link to the
                          clipboard. Supports xclip, wl-copy, pbcopy.
  -i, --instance URL      Use a custom server instead of https://0x0.st.
  -t, --token TOKEN       Set the management token returned from the X-Token HTTP
                          header. Allows you to remove a pasted file or change
                          the expiration date.
      --delete            Remove the file. Requires --token and the pasted
                          file's URL as the argument.
      --dry-run           Output the curl command without doing any requests.
      --curl-args         Advanced option: pass all arguments after the first
                          one to curl. Prepend -- to pass options.
                          [example: 0x0 file.txt --curl-args -- -H 'x-test: 1']
  -v, --verbose           Verbose output.
      --version           Display version and exit.
  -h, --help              Display this help message and exit.
```

[0x0.st]: https://0x0.st
[Fisher]: https://github.com/jorgebucaran/fisher
