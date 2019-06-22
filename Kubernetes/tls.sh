export HOST=dev.meeting.town
export KEY_FILE=key
export CERT_FILE=cert
export CERT_NAME=meeting-tls
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ${KEY_FILE} -out ${CERT_FILE} -subj "/CN=${HOST}/O=${HOST}"
kubectl create secret tls ${CERT_NAME} --key ${KEY_FILE} --cert ${CERT_FILE}