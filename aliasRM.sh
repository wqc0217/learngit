alias rm=trash
alias r=trash
alias rl='ls ~/.trash'
alias ur=undelfile

undelfile()
{
	if [ ! -d "~/.trash" ]; then
		mkdir -p ~/.trash
	fi
    mv -i  ~/.trash/$@ ./
}

trash()
{
	
    mv $@ ~/.trash/
}

cleartrash()
{
   read -p "clear sure?[n]" confirm
   [ $confirm == 'y' ] || [ $confirm == 'Y' ]  && /usr/bin/rm -rf ~/.trash/*
}

