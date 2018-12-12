image=$1
container=$2

shift 2

docker run --rm -v /var/run/docker.sock:/var/run/docker.sock \
    -it dimastark/provider-$image run --rm "$container" $@
