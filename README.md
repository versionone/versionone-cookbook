# NOTES IN PROGRESS:

Recipes in here will work with Amazon EC2, given:

* You point to an AMI that already has SQL Server installed
* You have your Chef accout into in .chef\knife.rb
* You configure your .chef\knife.rb file with your AWS credentials

Command:

```
knife ec2 server create -I ami-97b58ffe -G windows_desktop_test -f m1.large --ebs-size 75 --ebs-optimized
--bootstrap-protocol winrm --user-data ./bootstrapWindows.ps1 -x v1deploy -P Versi0n1.c26nu -r versionone
```

* Chef Client 11.2.2 with opscode/chef/bin/tar.exe

# BERKS

**USE POWERSHELL or maybe CMD** (didn’t work in Git-Bash)

*	Get GnuWin32 tar 1.13 (try Chocolatey package next time GnuWin chocolatey package)
*	Gem  install berkshelf
*	Then use bundle install
*	Then use `bundle exec ….` for subsequent commands
*	Maybe: mkdir ~/.berkshelf && echo '{"ssl": { "verify": false }}' > ~/.berkshelf/config.json
*	Maybe: mkdir ./berkshelf && echo '{"ssl": { "verify": false }}' > ./berkshelf/config.json
*	Maybe: SSL_CERT_FILE=/c/opscode/chef/embedded/ssl/certs/cacert.pem
*	bundle exec berks install
* Remember to delete metadata.json (Not sure when it gets created)
* Sometimes you ought to run `berks upload` twice in a row to get past errors.
* Flow: change version in metadata.rb, berks install, berks upload versionone 

