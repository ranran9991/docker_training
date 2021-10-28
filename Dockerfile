FROM continuumio/anaconda3
ARG GIT_REPO=https://github.com/ranran9991/docker_training.git


# install jupyter
RUN conda install jupyter -y --quiet
RUN mkdir workspace
RUN cd workspace && git clone $GIT_REPO \.

EXPOSE 8888
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--notebook-dir=/workspace"]

