# compare file with specific extension sell programming
A Bash script to compress all files, from a target directory hierarchy, with specific extensions, into a number of tar files

Synopsis:
organize [-t tarDir] [-o orgDir] <extensionList>
  
organize uses command find to visit each file in the hierarchy, defined by root directory tarDir, and if their extensions are in extensionList, the files are copied to
orgDir, where each group of same-extension files are tared to a single file called, extensionName.tar (e.g. doc.tar) then deleted (only tar files will remain).
