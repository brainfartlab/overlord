Role Name
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
users:
    - username: user1
    - username: user2

# vars
install_packages:
    - git
    - zsh
```

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: brainfartlab.base
          users:
            - username: user1
            - username: user2

License
-------

BSD

Author Information
------------------

Antoine Vandermeersch
