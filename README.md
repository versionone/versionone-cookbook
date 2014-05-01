# NOTES IN PROGRESS:

Recipes in here will work with Amazon EC2, given:

* You point to an AMI that already has SQL Server installed
* You have your Chef accout into in .chef\knife.rb
* You configure your .chef\knife.rb file with your AWS credentials


# BERKS

* Remember to delete metadata.json
* Sometimes you ought to run `berks upload` twice in a row to get past errors.
