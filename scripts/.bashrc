popup_message(){

	CD_APP="$HOME/Applications/CocoaDialog.app"
	CD="$CD_APP/Contents/MacOS/CocoaDialog"

	### Changing the colors and icon
	$CD bubble --debug --title "$1" \
    --timeout 2 \
	--text "$2" \
	--icon-file "$CUSTOM_BASH_FOLDER/icons/$3"

	echo -en "\007"
	echo -e "\a"
	echo -e "\a"

}

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


start_redis(){
  redis-server
}


start_amqueue(){
	popup_message "" "AMqueue on the way" "sun.ico" ;
	/usr/local/Cellar/activemq/5.11.2/bin/activemq start
}

start_ngrok(){
	popup_message "" "Ngrok Running" "sun.ico" ;
	~/Documents/App/ngrok http 4567
}


start_linklist(){
	popup_message "" "Linklist is comming." "sun.ico" ;
	cd /Users/romulobordezani/Documents/workspace/LinkList ; grunt serve;
}


ssh_prod(){
	popup_message "Connecting to Production SSH" "BE CAREFUL!" "warning.png" ;
	ssh -i ~/.ssh/id_rsa -l romulo prd-consumers-1.lofty-dev.com
}


ssh_stg(){
	popup_message "Connecting to Staging SSH" "It's staging, relax..." "green.ico" ;
	ssh -i ~/.ssh/id_rsa -l romulo testing-1.lofty-dev.com
}


wtqs(){
	popup_message "Quickshot running" "Please, select your envrionment" "shopify-logo.png" ;
	cd /Users/romulobordezani/Documents/workspace/ShopifyTheme; qs theme watch;
}

wpqs(){
	popup_message "Quickshot watching pages" "Please, select your envrionment" "shopify-logo.png" ;
	cd /Users/romulobordezani/Documents/workspace/ShopifyTheme; qs pages watch;
}


hub(){

	CD="$HOME/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"

	rv=`$CD dropdown\
	--button1 "Run" \
	--string-output \
	--float\
	--title "__--== Command Hub ==--__"\
	--text "What do you want to run?" \
	--items "Linklist" "Watch Theme" "Watch Pages" "AMqueue" "Redis" "ngrok" "ssh prod" "ssh stg"  |tail -1`


	if [[ "$rv" == 'Linklist' ]]; then
		start_linklist
	elif [ "$rv" == "AMqueue" ]; then
		start_amqueue
	elif [ "$rv" == "Redis" ]; then
		start_redis
	elif [ "$rv" == "ngrok" ]; then
		start_ngrok
	elif [ "$rv" == "ssh prod" ]; then
		ssh_prod
	elif [ "$rv" == "ssh stg" ]; then
		ssh_stg
	elif [ "$rv" == "Watch Theme" ]; then
		wtqs
	elif [ "$rv" == "Watch Pages" ]; then
		wpqs
	fi
	
}
