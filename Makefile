examples:
	./k8s/scripts/examples.sh

prepare:
	./k8s/scripts/create-minikube.sh
	
deploy:
	./k8s/scripts/uninstall.sh
	sleep 3
	./k8s/scripts/build-images.sh
	./k8s/scripts/install.sh
	
mount:
	./k8s/scripts/mount.sh