$containerId = .\getContainerId.ps1

if ($containerId) {
	docker stop $containerId
}