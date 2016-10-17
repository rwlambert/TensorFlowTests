#
# Simple script to build and then run a container ready for tensorflow
# makes an image called 'test/tensorflow' and ups a container called 'tensorflow'
# If this is successful, you may run the start_exec.sh command if the container is started or stopped
#
set -e
docker build -t "test/tensorflow" .
# 8088->8888 for notebook port, 8082->8082 for TensorBoard
docker run -it --name tensorflow -p 8088:8888 -p 8082:8082 -v `dirname $PWD`:/home/ktbuser/workspace/tensorflowtests test/tensorflow su ktbuser bash -l -c 'ipython notebook --ip=0.0.0.0'
