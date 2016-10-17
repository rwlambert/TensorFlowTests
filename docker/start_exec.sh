#
# Simple script to start and drop into tensorflow container
# the build_run.sh script should have been run firstß
#
docker start tensorflow
docker exec -it tensorflow su ktbuser bash -l -c 'ipython notebook --ip=0.0.0.0'
