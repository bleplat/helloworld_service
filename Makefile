NAME=/etc/systemd/system/helloworld_service.service
PWD=$(shell pwd)
PWD_ESCAPED=$(shell echo $(PWD) | sed 's_/_\\/_g')



install: $(NAME)

$(NAME):
	cat ./helloworld_service.service | sed "s/FULLPATH/$(PWD_ESCAPED)/" > $@

uninstall:
	rm $(NAME)

reinstall: uninstall install	
