synology
=========

Synology setup. The role will create an SSH key, the public key of which will need to be uploaded manually. A service leveraging systemd will be installed, pulling files on login. A cron job will push new files on an hourly basis.

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
synology_ip: "192.168.1.1"
synology_user: myuser

# vars
install_packages:
  - cronie
  - openssh
```

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: brainfartlab.overlord.synology
          vars:
            synology_ip: "192.168.1.1"
            synology_user: myuser

License
-------

BSD

Author Information
------------------

Antoine Vandermeersch, BrainFartLab
