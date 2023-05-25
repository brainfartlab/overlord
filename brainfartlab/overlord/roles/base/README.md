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
username: user1
authorizations:
    pass: yes
    github: yes
    gpg: yes

repo: <repo for password store>

gpg_email: john.doe@example.com
gpg_public_key: |
  -----BEGIN PGP PUBLIC KEY BLOCK-----
  -----END PGP PUBLIC KEY BLOCK-----
gpg_signing_key: |
  -----BEGIN PGP PRIVATE KEY BLOCK-----
  -----END PGP PRIVATE KEY BLOCK-----
gpg_ownertrust: |
  1234:6:
gpg_passphrase: secret

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
          username: user1
          authorizations

License
-------

BSD

Author Information
------------------

Antoine Vandermeersch