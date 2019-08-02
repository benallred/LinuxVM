$containerId = .\getContainerId.ps1

if ($containerId) {
	if ((docker ps -a -f "id=$containerId" --format "{{.Status}}") -inotlike "running") {
		docker start $containerId
	}
} else {
	$containerId = docker run -itd -v $PSScriptRoot\share:/root/share --privileged benallred/linuxvm
}

docker exec -it $containerId bash
