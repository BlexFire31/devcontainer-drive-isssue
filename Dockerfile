FROM python:3.9

ARG WORKDIR="."
RUN if [ "${WORKDIR}" != "." ]; then mkdir "${WORKDIR}" ; fi
# WORKDIR ${WORKDIR}
COPY . ${WORKDIR}
RUN pip install --user -r ${WORKDIR}/requirements.txt

CMD ["python","${WORKDIR}/main.py"]

# or use gunicorn
# CMD ["python","-m","gunicorn","-b","0.0.0.0:8000","main:app"]