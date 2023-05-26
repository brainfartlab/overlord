base
=========

Contains the base configuration including essential packages and the bare minimum setup.

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
  - bzip2
  - bzip2-devel
  - git
  - gnupg2
  - man
  - openssl
  - openssl-devel
  - pass
  - pinentry-tty
  - xclip
  - xz
  - xz-devel
  - zlib-devel
  - zsh
```

Example Playbook
----------------

Example usage:

    - hosts: servers
      roles:
        - role: brainfartlab.overlord.base

License
-------

BSD

Author Information
------------------

Antoine Vandermeersch, BrainFartLab
