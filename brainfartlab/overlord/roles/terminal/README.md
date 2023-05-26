terminal
=========

Setup terminal tools such as Vim and TMUX. Configuration files for tmux and vim are supplied.

The vim setup includes installation of the nord theme as well as minpac and a number of productivity packs. The role will automatically run minpac to ensure packages are installed.

TMUX has a number of changes, including the remapping of C-b to C-a for easier access on the keyboard. Several other bindings for easy navigation are included as well as several aliases for working with tmux in the terminal.

Requirements
------------

Ansible Core > 2.15.0
Linux
- Fedora: 38

Role Variables
--------------

The following variables will change the behavior of this role (default values are shown below):
```yaml
# defaults

# vars
install_packages:
  - git
  - fzf
  - jq
  - ripgrep
  - vim
  - tmux

tmux_aliases: |
  # Attaches tmux to the last session; creates a new session if none exists
  alias t='tmux attach || tmux new-session'

  # Attaches tmux to a session (example: ta portal)
  alias ta='tmux attach -t'

  # Creates a new session (example: tn -s portal)
  alias tn='tmux new-session'

  # Lists all ongoing sessions
  alias tl='tmux list-sessions'

fzf_default: |
  export FZF_DEFAULT_COMMAND='rg --files --hidden'
```

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: brainfartlab.overlord.terminal

License
-------

BSD

Author Information
------------------

Antoine Vandermeersch, BrainFartLab
