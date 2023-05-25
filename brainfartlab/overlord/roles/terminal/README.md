Role Name
=========

Setup terminal tools such as Vim and TMUX. Configuration files from the role are copied over.

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
username: user1

# vars
install_packages:
    - git
    - vim
    - tmux

configuration_files:
    - .vimrc
    - .tmux.conf
```

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: brainfartlab.base
          username: user1

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
