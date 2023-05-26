credentials
=========

Setup up our credentials store on this device, this entails cloning our private encrypted password store and migrating our GPG key for access.

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
authorizations:
    pass: true
    github: true
    gpg: true
repo: git@github.com:myorg/password-store.git
gpg_email: "john.doe@example.com"
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
  - gnupg2
  - pinentry-tty

gpg_conf_loopback: |
  # For unattended passphrase
  pinentry-mode loopback

gpg_agent_conf_loopback: |
  # For unattended passphrase
  allow-loopback-pinentry
  allow-preset-passphrase
```

The authorizations are explained as follows:
- pass: if true will copy over our password store (needs: github)
- github: generate an SSH keypair and pauses for the user to upload the public key to Github
- gpg: installs a supplied GPG key

For installing the GPG key we require the `pinentry-tty` package and enabled loopback in gnupg2 for passing the passphrase. This loopbakc enabling will be removed at the end.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: brainfartlab.overlord.credentials
          vars:
            authorizations:
                pass: true
                github: true
                gpg: true
            repo: git@github.com:myorg/password-store.git
            gpg_email: "john.doe@example.com"
            gpg_public_key: |
              -----BEGIN PGP PUBLIC KEY BLOCK-----
              -----END PGP PUBLIC KEY BLOCK-----

            gpg_signing_key: |
              -----BEGIN PGP PRIVATE KEY BLOCK-----
              -----END PGP PRIVATE KEY BLOCK-----

            gpg_ownertrust: |
              1234:6:
            gpg_passphrase: secret

License
-------

BSD

Author Information
------------------

Antoine Vandermeersch, BrainFartLab
