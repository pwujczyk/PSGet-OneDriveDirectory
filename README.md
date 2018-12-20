[![Github](http://www.productivitytools.tech/wp-content/uploads/2018/12/GithubLogo.png)](http://www.wp.pl/)
 
 # Get-OneDriveDirectory
Get-OneDriveDirectory is module which returns location of the OneDrive files. We could have on the computer two OneDrive’s one Personal and second one Corporate (Bussiness). Script by default returns both, but we could use switch parameter to precise our request.

To return directory path module searches through registry.



- Get-OneDriveDirectory

- Get-OneDriveDirectory -Personal

- Get-OneDriveDirectory -Business

- Get-OneDriveDirectory -Personal -JustDirectory
- Get-OneDriveDirectory -Business -JustDirectory

- Get-OneDriveDirectory -JustDirectory



More info:http://www.productivitytools.tech/get-onedrivedirectory/
