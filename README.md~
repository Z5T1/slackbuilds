# Slackbuilds

## About
Slackbuilds is a simple shell script that automates the downloading, building and installation of packages from slackbuilds.org for Slackware Linux. It allows for searching for packages, viewing package readmes and installing packages with a single command. Slackbuilds works via ftp, and it is possible to add non slackbuilds.org repositories as well (provided they use the same directory structure).

## Installation
To install Slackbuilds, first run 'make'. This builds the package (slackbuilds-version-noarch.tgz) file which can then be installed via installpkg.

## Usage
The Slackbuilds package provides the command 'slackbuilds'. This is the one command you use to do everything. It takes the first argument as a subcommand (see the list of subcommands further down).

### Repository Cache - READ THIS BEFORE DOING ANYTHING ELSE
Slackbuilds maintains a local cache of the repository listings (stored in /var/cache/slackbuilds by default). This allows for quicker searching and downloading. Before anything can be done, it is neccessary to update your local repository cache. This is done by running 'slackbuilds update'. It is also a good idea to update your local repository periodically as well.
 
### Searching for Packages
Slackbuilds allows searching for packages via the search subcommand. Use 'slackbuilds search <string>' to search for a string.

### Building and Installing Packages
For building and installing packages, slackbuilds has three destinct subcommands: download, build and install.

Download downloads the tarball and saves it to /tmp, but does nothing else.

Build downloads and saves the tarball, extracts it and runs the slackbuild script, leaving the generated package uninstalled in /tmp.

Install works the same as build, only it installs the generated package immediately.

To force the downloading of the 32 files over the 64 bit ones, prepend the slackbuilds command with 'x86=TRUE'.

### Repositories
Repository files can be found in /etc/slackbuilds/repos. These files should be pretty self explanatory, but here's a summary just in case:

Name: The name of the repository. This is typically the same as the filename.
Server: The address of the ftp server for the repository.
Directory: The directory of the repository on the ftp server.
Comment: A comment if desired.

As previously mentioned, it is possible to add your own repositories, provided they follow the same directory structure as slackbuilds.org. The directories, .tar.gz files, and READMEs are absolutely required. The other files are superfluous.

Additionally, a repository can be disabled by prepending a ! to its filename.

### Sub Commands
  help                Displays this list of subcommands
  version             Displays version information and exists
  build <package>     Build but do not install a package
  download <package>  Downloads the tarball for a package and saves it to /tmp,
                      but does nothing else
  info <package>      Displays information about a package
  install <package>   Build and install a package
  list-repos          Lists information about the currently active repositories
  search <string>     Searches for packages whose names contain a string
  update              Updates the local repository cache

### Influential Environment Variables
x86		When set, this forces the downloading of 32 bit packages on a
		64 bit system, even if 64 bit packages are available.
http		When set, slackbuilds will use http downloads (where possible)
		instead of ftp.
version		When set, slackbuilds will build $version of the package,
		instead of the version provided in the package.info file.
