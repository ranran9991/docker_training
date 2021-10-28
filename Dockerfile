FROM continuumio/anaconda3

# install jupyter
RUN conda install jupyter -y --quiet

EXPOSE 8888
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--notebook-dir=/workspace"]

