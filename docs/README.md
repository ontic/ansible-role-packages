# Documentation

## Example

```
packages_repositories:
  - filename: 'debian'
    repo: 'deb http://ftp.us.debian.org/debian/ stretch-backports main'
  - filename: 'debian'
    repo: 'deb-src http://ftp.us.debian.org/debian/ stretch-backports main'
  - filename: 'debian'
    repo: 'deb http://ftp.us.debian.org/debian/ testing main'
  - filename: 'debian'
    repo: 'deb-src http://ftp.us.debian.org/debian/ testing main'
  - filename: 'debian'
    repo: 'deb http://ftp.us.debian.org/debian/ unstable main'
  - filename: 'debian'
    repo: 'deb-src http://ftp.us.debian.org/debian/ unstable main'
packages_preferences:
  - filename: 'debian'
    pinning:
      - package: '*'
        pin: 'release a=stable'
        priority: '700'
      - package: '*'
        pin: 'release a=stretch-backports'
        priority: '650'
      - package: '*'
        pin: 'release a=testing'
        priority: '-10'
      - package: '*'
        pin: 'release a=unstable'
        priority: '-10'
packages:
  - name: 'libpango1.0-dev'
```

## Role Variables

Available variables are listed below, along with default values (see [defaults/main.yml](/defaults/main.yml)):

```
packages_repositories:
```

A list of the package repositories to install. Each repository supports all parameters from the
[apt](http://docs.ansible.com/ansible/apt_repository_module.html) module.

```
packages_preferences:
```

A list of the package preferences to define. Each preference supports the following properties:

* `filename` the name of the preference file in `preferences.d`.
* `state` the preference file state, valid values are `present` or `absent`.
* `pinning` a dictionary of packages to pin where each supports the following properties:
  * `package` the package name or expression to pin.
  * `pin` the rule determining how the package is pinned.
  * `priority` the priority assigned to packages matching the rule.


```
packages:
```

A list of the packages to install. Each package supports all parameters from the
[apt](http://docs.ansible.com/ansible/apt_module.html) or [yum](http://docs.ansible.com/ansible/yum_module.html) modules.