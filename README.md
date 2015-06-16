# docker-phpunit

[![Build Status](https://travis-ci.org/rentabiliweb/docker-phpunit.svg?branch=master)](https://travis-ci.org/rentabiliweb/docker-phpunit)

#### Table of Contents

1. [Overview](#overview)
2. [Description](#description)
3. [Usage](#usage)
4. [Development](#development)

## Overview

Docker images and builders of PHPUnit.

## Description

PHPUnit is a programmer-oriented testing framework for PHP. It is an instance of
the xUnit architecture for unit testing frameworks.

## Usage

You can choose you PHP version with choose-php-version.

```bash
$ docker run \
  	 -v /path/to/bind/from/host:/path/to/bind/in/container:rw \
	 rentabiliweb/phpunit \
	 bash -c 'choose-php-version 5.5 && cd /path/to/bind/in/container && phpunit'
```

## Development

Feel free to contribute on GitHub.
