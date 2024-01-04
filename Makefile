TAG := gcp-test

b:
	docker build -t ${TAG} .

r: b
	docker run -ti --rm -p 8080:8080 ${TAG}

s:
	docker run --rm -ti -p 8080:8080 ${TAG} sh
