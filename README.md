# flutter_advanced_template

[![License](https://img.shields.io/github/license/devkabiir/flutter_advanced_template.svg)](https://github.com/devkabiir/flutter_advanced_template/blob/master/LICENSE)
[![Travis (.org)](https://img.shields.io/travis/com/devkabiir/flutter_advanced_template.svg)](https://travis-ci.com/devkabiir/flutter_advanced_template)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![Commitizen friendly](https://img.shields.io/badge/commitizen--style-emoji-brightgreen.svg)](https://github.com/ngryman/cz-emoji)

## About

An opinionated flutter template for scaffolding apps.

**Notice:** This is a personal project, it has limitaions, flutter does not officially support custom templates yet. This is unstable and requries my forked version of flutter.

Use at your own risk!
Use `git clone -b custom_template https://github.com/devkabiir/flutter` my forked version tracks
the master branch from upstream

## Usage

- :fork_and_knife: Fork this repo
- Clone your forked version  
  `git clone https://github.com/<you>/flutter_advanced_template.git`

- :heavy_plus_sign: Add this repo as a remote  
  `git remote add upstream https://github.com/devkabiir/flutter_advanced_template.git`

- :arrow_double_up: Make sure you have recent changes  
  `git fetch upstream`

- :sparkles: Make your changes/fixes/additions (e.g. update license/author)  
- Rebase your changes on top of upstream/master  
  `git rebase upstream/master`

- Run `flutter create myapp -c<path/to/forked/repo>`

## Git

- :white_check_mark: Sign all commits. [Learn more](https://help.github.com/articles/signing-commits/)
- Use [commitizen](http://commitizen.github.io/cz-cli/) with [emoji](https://github.com/ngryman/cz-emoji) adapter
- Check existing commits to get an idea
- Run all pre-commit commands (e.g. `dartfmt`, `testing commands`, `dartanalyzer`)
- If you're adding an `and` in your commit message, it should probably be separate commits
- Link relevant issues/commits with a `#` sign in the commit message
- Limit message length to 72 characters (excluding space required for linking issues/commits)
- Add commit description if message isn't enough for explaining changes

## Code style

- Line width: 120
- Maintain consistencies using included `.editorconfig`
- Everything else as per standard dart [guidelines](https://www.dartlang.org/guides/language/effective-dart/style)

## Testing

- Add tests for each new addition/feature
- Do not remove/change tests when refactoring
  - unless fixing already broken test.

## License

Code and documentation Copyright (c) 2018 Dinesh Ahuja (devkabiir) <dev@kabiir.me>. Code released under the MIT License.
