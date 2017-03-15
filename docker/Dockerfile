FROM kave/kavetoolbox:3.0-Beta.c7.node
RUN bash -c "source /opt/KaveToolbox/pro/scripts/KaveEnv.sh; pip install protobuf;"
RUN bash -c "source /opt/KaveToolbox/pro/scripts/KaveEnv.sh; pip download https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0rc0-cp27-none-linux_x86_64.whl;"
RUN bash -c "source /opt/KaveToolbox/pro/scripts/KaveEnv.sh; pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0rc0-cp27-none-linux_x86_64.whl;"
RUN bash -c "source /opt/KaveToolbox/pro/scripts/KaveEnv.sh; python -c 'import tensorflow';"
RUN bash -c "source /opt/KaveToolbox/pro/scripts/KaveEnv.sh; pip download keras;"
RUN bash -c "source /opt/KaveToolbox/pro/scripts/KaveEnv.sh; pip install keras;"
RUN useradd ktbuser
RUN mkdir -p /home/ktbuser
RUN chown ktbuser:ktbuser /home/ktbuser
RUN yum -y install sudo graphviz
RUN bash -c "source /opt/KaveToolbox/pro/scripts/KaveEnv.sh; pip install pydot pydot-ng graphviz;"
# Fix KTB bug in rootnotes for 6.04
RUN sed -i 's/if rootv == 5/if True/g' /opt/KaveToolbox/pro/python/rootnotes/__init__.py
