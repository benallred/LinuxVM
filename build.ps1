docker build -t benallred/linuxvm .

$oldImages = docker images | ? { $_ -like "*<none>*" } | % { $_ -replace "<none>\W+<none>\W+(.+?)\W+.+", '$1' }
if ($oldImages) {
	docker rmi ($oldImages)
}