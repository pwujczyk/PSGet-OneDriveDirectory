[![GitHub](http://cdn.productivitytools.tech/Github40px.png)](https://github.com/pwujczyk/ProductivityTools.PSGetOneDriveDirectory/)
[![PowershellGallery](http://cdn.productivitytools.tech/Powershell40px.png)](https://www.powershellgallery.com/packages/ProductivityTools.PSGetOneDriveDirectory/)
[![ProductivityTools](http://cdn.productivitytools.tech/Blog40px.png)](http://www.productivitytools.tech/get-onedrivedirectory/)
 
 
 
 # Get-OneDriveDirectory
Get-OneDriveDirectory is module which returns location of the OneDrive files. We could have on the computer two OneDrive’s one Personal and second one Corporate (Business). Script by default returns both, but we could use switch parameter to precise our request.

To return directory path module searches through registry.



- Get-OneDriveDirectory

- Get-OneDriveDirectory -Personal

- Get-OneDriveDirectory -Business

- Get-OneDriveDirectory -Personal -JustDirectory
- Get-OneDriveDirectory -Business -JustDirectory

- Get-OneDriveDirectory -JustDirectory
