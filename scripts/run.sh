image=$1

shift 1

docker run -v /var/run/docker.sock:/var/run/docker.sock "$@" dimastark/provider-$image
