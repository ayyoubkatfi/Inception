all: build run

build:
	mkdir  -p ~/data/mariadb ; mkdir  -p ~/data/wordpress
	docker-compose -f srcs/docker-compose.yml  build
run :
	docker-compose -f srcs/docker-compose.yml up -d 


clean:  
	docker compose -f ./srcs/docker-compose.yml down

fclean : clean
	sudo rm -rf ~/data ; docker image prune -f --all 


restartAll: fclean
	docker system prune -af

re: clean all