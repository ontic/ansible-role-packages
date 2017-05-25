# Documentation

## Example

```
packages:
  - name: 'libcairo2-dev'
  - name: 'libharfbuzz-dev'
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
packages:
```

A list of the packages to install. Each package supports all parameters from the
[apt](http://docs.ansible.com/ansible/apt_module.html) or [yum](http://docs.ansible.com/ansible/yum_module.html) modules.