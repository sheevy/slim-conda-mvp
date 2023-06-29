FROM mambaorg/micromamba:jammy

USER root

COPY environment.yml environment.yml

RUN micromamba install --yes --name base --file environment.yml
ENV PATH /opt/conda/bin:$PATH

COPY app.py app.py

ENTRYPOINT [ "python", "app.py" ]