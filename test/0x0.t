  $ alias 0x0="$TESTDIR/../0x0"

  $ 0x0 --version
  0.1.0

  $ 0x0 --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@-;filename=paste.txt' -F secret= https://0x0.st

  $ 0x0 - --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@-;filename=paste.txt' -F secret= https://0x0.st

  $ 0x0 file.txt --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= https://0x0.st

  $ 0x0 path/to/file.txt --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@path/to/file.txt;filename=file.txt' -F secret= https://0x0.st

  $ 0x0 file.txt --name "renamed.txt" --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=renamed.txt' -F secret= https://0x0.st

  $ 0x0 file.txt -n "renamed.txt" --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=renamed.txt' -F secret= https://0x0.st

  $ 0x0 file.txt --no-secret --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' https://0x0.st

  $ 0x0 file.txt --expires-in 24h --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=24 https://0x0.st

  $ 0x0 file.txt --expires-in 1d --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=24 https://0x0.st

  $ 0x0 file.txt --expires-in 1w --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=168 https://0x0.st

  $ 0x0 file.txt --expires-in 1m --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=720 https://0x0.st

  $ 0x0 file.txt --expires-in 1y --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=8760 https://0x0.st

  $ 0x0 file.txt --expires-in 24 --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=24 https://0x0.st

  $ 0x0 file.txt --expires-in 2w2d5h --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=389 https://0x0.st

  $ 0x0 file.txt --expires-in 1D --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=24 https://0x0.st

  $ 0x0 file.txt -e 1d --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=24 https://0x0.st

  $ 0x0 file.txt -e 2d5h3 --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=56 https://0x0.st

  $ 0x0 file.txt -e 2d1d3h4h1d01d --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=127 https://0x0.st

  $ 0x0 file.txt -e 5d2y --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=17640 https://0x0.st

  $ 0x0 file.txt --expire-date 1650460320001 --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=1650460320001 https://0x0.st

  $ 0x0 file.txt --expire-date '20 Jun 2048' --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -F expires=2476224000000 https://0x0.st

  $ 0x0 --instance https://example.com file.txt --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= https://example.com

  $ 0x0 -i https://example.com file.txt --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= https://example.com

  $ 0x0 --instance https://example.com --token MYTOKEN --delete https://example.com/abc --dry-run
  curl --fail --show-error --no-progress-meter -F token=MYTOKEN -F delete= https://example.com/abc

  $ 0x0 https://other.site/image.png --dry-run
  curl --fail --show-error --no-progress-meter -F url=https://other.site/image.png -F secret= https://0x0.st

  $ 0x0 --show-token file.txt --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -w '%{stderr}Token: %header{x-token}\\n' https://0x0.st

  $ 0x0 -T file.txt --dry-run
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -w '%{stderr}Token: %header{x-token}\\n' https://0x0.st

  $ 0x0 --token MYTOKEN --delete https://0x0.st/abc --dry-run
  curl --fail --show-error --no-progress-meter -F token=MYTOKEN -F delete= https://0x0.st/abc

  $ 0x0 -t MYTOKEN --delete https://0x0.st/abc --dry-run
  curl --fail --show-error --no-progress-meter -F token=MYTOKEN -F delete= https://0x0.st/abc

  $ 0x0 --token MYTOKEN --expires-in 24h https://0x0.st/abc --dry-run
  curl --fail --show-error --no-progress-meter -F expires=24 -F token=MYTOKEN https://0x0.st/abc

  $ 0x0 file.txt --curl-args --dry-run -- -H 'X-Header: test'
  curl --fail --show-error --no-progress-meter -F 'file=@file.txt;filename=file.txt' -F secret= -H 'X-Header: test' https://0x0.st

  $ 0x0 --verbose file.txt --dry-run
  curl --fail --show-error --progress-bar -F 'file=@file.txt;filename=file.txt' -F secret= https://0x0.st

  $ 0x0 -v file.txt --dry-run
  curl --fail --show-error --progress-bar -F 'file=@file.txt;filename=file.txt' -F secret= https://0x0.st

  $ 0x0 --delete https://0x0.st/abc --dry-run 2>&1
  0x0: --delete: requires --token
  [1]

  $ 0x0 --token MYTOKEN file.txt --dry-run 2>&1
  0x0: --token: must be used with https://0x0.st URLs
  [1]

  $ 0x0 file.txt --expires-in abc --dry-run 2>&1
  0x0: --expires-in: expected numbers with optional y/m/w/d/h modifiers
  [1]

  $ 0x0 file.txt --expires-in 1650460320000 --dry-run 2>&1
  0x0: --expires-in: cannot be larger than or equal to 1650460320000
  [1]

  $ 0x0 file.txt --expire-date 0 --dry-run 2>&1
  0x0: --expire-date: cannot be smaller than 1650460320000 ms
  [1]

  $ 0x0 file.txt -e 2ww --dry-run 2>&1
  0x0: --expires-in: expected numbers with optional y/m/w/d/h modifiers
  [1]

  $ 0x0 file.txt --expire-date not-a-date --dry-run 2>&1
  0x0: --expire-date: invalid date 'not-a-date'
  [1]
