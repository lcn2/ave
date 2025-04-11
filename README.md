# ave

* ave - compute the average of numbers

* plus - compute the sum of input of numbers

* stddev - compute the standard deviation of numbers


# To install

```sh
sudo make install
```


## Examples

```sh
$ /usr/local/bin/ave -a /usr/local/bin/ave
8.50739957716702
```

```sh
$ /usr/local/bin/plus -a /usr/local/bin/plus
4024
```

```sh
$ /usr/local/bin/stddev -a /usr/local/bin/stddev
119.725800064152
```


# To use


## ave

```
/usr/local/bin/ave [-h] [-V] [-a] [file ...]

    -h          print help and exit
    -V          print version and exit

    -a		process numbers in all fields (def: process 1st field only)

    [file ...]	read from file(s) (def: read from stdin)

ave version: 1.1.0 2025-04-11
```


## plus

```
/usr/local/bin/plus [-h] [-V] [-a] [file ...]

    -h          print help and exit
    -V          print version and exit

    -a		process numbers in all fields (def: process 1st field only)

    [file ...]	read from file(s) (def: read from stdin)

plus version: 1.1.0 2025-04-11
```


## stddev

```
/usr/local/bin/stddev [-h] [-V] [-a] [file ...]

    -h          print help and exit
    -V          print version and exit

    -a		process numbers in all fields (def: process 1st field only)

    [file ...]	read from file(s) (def: read from stdin)

stddev version: 1.1.0 2025-04-11
```


# Reporting Security Issues

To report a security issue, please visit "[Reporting Security Issues](https://github.com/lcn2/ave/security/policy)".
