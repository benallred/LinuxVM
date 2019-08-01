$containerId = .\getContainerId.ps1

if ($containerId) {
	if ((docker ps -a -f "id=$containerId" --format "{{.Status}}") -inotlike "running") {
		docker start $containerId
	}
} else {
	$containerId = docker run -itd -v C:\BenLocal:/c/BenLocal -v C:\Work:/c/Work -v C:\BenLocal\git\LinuxVM\share:/root/share --privileged benallred/linuxvm
}

docker exec -it $containerId bash
