SHELL=/bin/bash

clear_all_outputs:
	-find . -name "*.lst" -exec rm {} \;
	-find . -name "*.bin" -exec rm {} \;
	-find . -name "*.obj" -exec rm {} \;
	-find . -name "*.o" -exec rm {} \;
	-find . -name "*.dump" -exec rm {} \;
	-find . -name "*.yarc" -exec rm {} \;
	-find . -name "*.exe" -exec rm {} \;

# Docker
pwd := `pwd`
login:
	docker run --rm -it -v ${pwd}/yaramaster:/yaramaster kashiwabayuki/yawaraka-yara:1.0 bash -login
	# docker run --rm -it --user ubuntu -v ${pwd}/yaramaster:/yaramaster yaramaster bash -login
	# docker run --rm -it -v ${pwd}/yaramaster:/yaramaster yaramaster bash -login

start_docker:
	sudo /etc/init.d/docker start

# Github
day := `date +"%Y_%m_%d"`
m := autopush ${ct}_${day}
branch := origin master
autopush: ## This is auto push module, need commit message(default=autopush)
	git add .
	git commit -m "${m}"
	git push ${branch}

pull:
	git pull ${branch}

force_pull:
	git fetch ${branch}
	git reset --hard origin/master