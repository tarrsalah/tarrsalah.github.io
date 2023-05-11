default:
	npm start

publish:
	npm run build
	tar -czvf site.tar.gz -C _site .
	hut pages publish -d tarrsalah.srht.site site.tar.gz
