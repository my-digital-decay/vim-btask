# vim-btask

A simple syntax highlighter for task lists using a modified [Bullet Journal](https://bulletjournal.com/) format and my own legacy todo list system.

## Installation

Clone the repository into the directory of your favorite package manager. I still use pathogen (although it may be time to move to the Vim8 package manager).

### [pathogen](https://github.com/tpope/vim-pathogen)

Create a git submodule in your pathogen directory. Assuming the standard pathogen defaults:

```sh
cd ~/.vim/bundle
git submodule add https://github.com/my-digital-decay/vim-btask.git
```

## Usage

The syntax highlighter supports two file formats: BTASK and TODO. The BTASK file format is what I've migrated to and use on a daily basis. I have also included support of my old TODO format. Mostly so some older files will still work, but it may be of use to some as a more basic style to-do list format.

### BTASK

The BTASK file format is used for files with `.btask` and `.task` file extensions. It is based on the [Bullet Journal](https://bulletjournal.com/) system, with some of my own minor additions.

```
# Title
# February 2019

02.09 SAT
  . task
  - note
  o event
  X completed
  _ discarded
  : group
    . task
*   . highlighted task
  ! idea
  ? question
  > migrated to new month
  < migrated to future
  ^ migrated up to a new day
```

A sample file (sample.btask) also exists in the root of the repository.

### TODO

The TODO format is used for files with the `.todo` extension.

```
# Title

<2019.02.09>
[ ] Todo item
[!] Urgent
[^] High Pri
[_] Low Pri
[x] Complete
[-] Discard
```

A sample file (sample.todo) also exists in the root of the repository.
