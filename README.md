## connector-mariadb (uplink v1.0.5)

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/7f5aa94e50ed4ad6869cbce01e535d64)](https://app.codacy.com/gh/storj-thirdparty/connector-mariadb?utm_source=github.com&utm_medium=referral&utm_content=storj-thirdparty/connector-mariadb&utm_campaign=Badge_Grade_Dashboard)
[![Go Report Card](https://goreportcard.com/badge/github.com/storj-thirdparty/connector-mariadb)](https://goreportcard.com/report/github.com/storj-thirdparty/connector-mariadb)
![Cloud Build](https://storage.googleapis.com/storj-utropic-services-badges/builds/connector-mariadb/branches/master.svg)


## Overview

The MariaDB Connector connects to an MariaDB database, takes a backup of the specified database and uploads the backup data on Storj network.

```bash
Usage:
  connector-mariadb [command] <flags>

Available Commands:
  help        Help about any command
  store       Command to upload data to a Storj V3 network.
  version     Prints the version of the tool

```



`store` - Connect to the specified database (default: `db_property.json`).  Back-up of the database is generated using tooling provided by MariaDB and then uploaded to the Storj network.  Connect to a Storj v3 network using the access specified in the Storj configuration file (default: `storj_config.json`). 

 Back-up data is iterated through and upload in 32KB chunks to the Storj network.

The following flags  can be used with the `store` command:

* `accesskey` - Connects to Storj network using instead of Serialized Access Key instead of API key, satellite url and encryption passphrase .
* `shared` - Generates a restricted shareable serialized access with the restrictions specified in the Storj configuration file.
* `debug` - Download the uploaded backup files to local disk inside project_folder/debug folder.



Sample configuration files are provided in the `./config` folder. 



## Requirements and Install

To build from scratch, [install the latest Go](https://golang.org/doc/install#install). 

> Note: Ensure go modules are enabled (GO111MODULE=on)



#### Option #1: clone this repo (most common)

To clone the repo

```
git clone https://github.com/storj-thirdparty/connector-mariadb.git
```

Then, build the project using the following:

```
cd connector-mariadb
go build
```



#### Option #2:  ``go get`` into your gopath

 To download the project inside your GOPATH use the following command:

```
go get github.com/storj-thirdparty/connector-mariadb
```



## Run (short version)

Once you have built the project run the following commands as per your requirement:

##### Get help

```
$ ./connector-mariadb --help
```

##### Check version

```
$ ./connector-mariadb --version
```

##### Create backup from MariaDB and upload to Storj

```
$ ./connector-mariadb store 
```



## Documentation

For more information on runtime flags, configuration, testing, and diagrams, check out the [Detail](//github.com/storj-thirdparty/connector-mariadb/wiki/) or jump to:

* [Config Files](//github.com/storj-thirdparty/connector-mariadb/wiki/#config-files)
* [Run (long version)](//github.com/storj-thirdparty/connector-mariadb/wiki/#run)
* [Testing](//github.com/storj-thirdparty/connector-mariadb/wiki/#testing)
* [Flow Diagram](//github.com/storj-thirdparty/connector-mariadb/wiki/#flow-diagram)
