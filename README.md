# Alex's dotfiles

## Setup
   
### Windows

1. Install [Git](https://git-scm.com/download/win)

### macOS

1. Install [Homebrew](https://brew.sh/)

1. Run
   ```
   brew install git bash-completion
   ```

## Installation

Download and run the [install script](https://gist.github.com/stanislavHamara/0b59c210e1f3f796d39c19b9113e2d33). Alternatively, run the following:

```shell
curl -s https://gist.githubusercontent.com/stanislavHamara/0b59c210e1f3f796d39c19b9113e2d33/raw/dotfiles.sh | bash
```

## Configuration

Configure your Git user:

```shell
git config --file $HOME/.gitconfig.user user.name "Your Name"
```
```shell
git config --file $HOME/.gitconfig.user user.email you@example.com
```
