$containerId = .\getContainerId.ps1

if ($containerId) {
	docker rm $containerId
}
