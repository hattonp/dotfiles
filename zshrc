############################################################################
# set time format for history command
export HISTTIMEFORMAT='%m/%d/%y %T - '
alias greprn='grep -rn'

############################################################################
# composer alias
alias composer='php composer.phar'

############################################################################
# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

############################################################################
# golang settings
export GOPATH='/Users/philliphatton/OMGworkspace/go/'
export PATH=$PATH:$GOPATH
export PATH=$PATH:/Users/philliphatton/OMGworkspace/clusters/dev-cluster/scripts
export PATH=$PATH:/usr/local/opt/node@10/bin
export PATH=$PATH:$HOME/.composer/vendor/bin
export GOPRIVATE=github.com/OrderMyGear/*
alias govendor='/Users/philliphatton/OMGworkspace/go/bin/govendor'
alias gofmtall='gofmt -w -s -l .'
alias gitremote='echo "git checkout --track -b <local-branch> <remote-repo>/<remote-branch>"'

############################################################################
# stripe
alias stripe='~/stripe'
alias stripe-dev='stripe login && stripe listen --forward-to http://app.dev.omg.pub/api/stripe-event'

############################################################################
# k8s
alias k='kubectl'
alias kpods='kubectl get pods'
alias kjobs='kubectl get jobs'
alias klogs='kubectl logs -f'
alias kdp='kubectl delete pods'
alias kdesc='kubectl describe pod'
alias kbatchdel='kubectl delete jobs -lapp='
alias usestaging='kubectl config use-context gke_omg-staging-env_us-central1-a_staging && kubens lions'
alias useprod='kubectl config use-context gke_ordermygear-1125_us-central1-c_prod-cluster && kubens general'

############################################################################
# golang
alias gb='go build'
alias gc='go clean'
alias gbc='go build && go clean'
alias gt='go test'
alias gtr='go test -run'

############################################################################
# dev and test
alias produserinfo='echo "email.id=9645, email.user_id=9677"'
alias txt='open -a textedit'
alias wl='omg-dev whitelist'
alias run='./run'
alias penv='vim *.env'
alias odr='omg-dev run'
alias odc='omg-dev current'
alias ods='omg-dev start'
alias odd='omg-dev debug'
alias swlkill='omg-dev kill-debug stripe-webhooks-listener'
alias pskill='omg-dev kill-debug payment-service'
alias psd='omg-dev debug ./'
alias odp='omg-dev ports | grep'
alias grn='grep -rn'
alias secret='pbpaste | base64 | pbcopy'
alias googlecredentials='cd ${HOME}/.config/omg/secrets'
alias desecret='pbpaste | base64 -D'
alias sqllogin='mysql -u root -proot --host=127.0.0.1 --port=3306'
alias dockercleanup='gcloud components update && brew upgrade && omg-dev stop && docker system prune -a && export COMPOSE_HTTP_TIMEOUT=300 && omg-dev update'
alias pitest='cd assembly && gt && cd ../cmd && gt && cd ../normalize && gt && cd ../pipe && gt && cd transform && gt && cd ../../sheet && gt && cd ../source && gt && cd ../'
alias acctstart='cd backend && yarn && cd ../frontend && yarn && cd ../ && yarn && yarn start'
alias acctclean='rm -rf node_modules && cd backend && rm -rf node_modules && cd ../frontend && rm -rf node_modules && ..'
alias rmtmpimages='rm /var/folders/vx/g6mz352n09g55p49c7pc1md80000gp/T/*.jpg'
alias tdoclean='make clean && ods'
alias tdostart='tdo && cd web/src/salesend/ && yarn install && gulp build && gulp dev'
alias uistart='yarn install && yarn bootstrap && yarn storybook'
alias tdogrep='grep -rn --exclude-dir="dist" --exclude-dir="node_modules" --exclude-dir="scripts" --exclude="*.swp" --exclude-dir="vendor"'
alias psgrep='grep -rn --exclude-dir="mocks" --exclude="*_test.go" --exclude-dir="testing" --exclude-dir="vendor"'
alias agrep='grep -rn --exclude-dir="node_modules" --exclude-dir="static" --exclude-dir="dist" --exclude-dir="build"'
alias gogrep='grep -rn --exclude-dir="vendor"'
alias jobclean='omg-dev down && job-service && ods . && odp job-service'
alias ordersuistart='omg-dev start ./ && omg-dev run ./' ## also do a `make dev` in a different tab

############################################################################
# cd to go libraries
alias goomg='cd ~/OMGworkspace/go/'
alias tdo-go='cd ~/OMGworkspace/go/tdo-go/'
alias quickbooks-go='cd ~/OMGworkspace/go/quickbooks-go/'
alias common-go='cd ~/OMGworkspace/go/common-go/'
alias json-api='cd ~/OMGworkspace/go/json-api/'

############################################################################
# cd to go services
alias tax-service='cd ~/OMGworkspace/go/tax-service/'
alias product-service='cd ~/OMGworkspace/go/product-service/'
alias pdf-service='cd ~/OMGworkspace/go/pdf-service/'
alias user-service='cd ~/OMGworkspace/go/user-service/'
alias inventory-service='cd ~/OMGworkspace/go/inventory-service/'
alias integration-service='cd ~/OMGworkspace/go/integration-service/'
alias ps='cd ~/OMGworkspace/go/payment-service/'
alias swl='cd ~/OMGworkspace/go/stripe-webhooks-listener/'
alias job-service='cd ~/OMGworkspace/go/job-service/'
alias work-order-generator='cd ~/OMGworkspace/go/work-order-generator/'
alias omgbot='cd ~/OMGworkspace/go/omgbot/'

############################################################################
# cd to go daemons
alias product-importer='cd ~/OMGworkspace/go/product-importer/'
alias receipt-generator='cd ~/OMGworkspace/go/receipt-generator/'
alias order-exporter='cd ~/OMGworkspace/go/order-exporter/'
alias order-lines='cd ~/OMGworkspace/go/order-lines/'
alias sanmar-requester='cd ~/OMGworkspace/go/sanmar-requester/'
alias search-indexer='cd ~/OMGworkspace/go/search-indexer/'
alias shipping-service='cd ~/OMGworkspace/go/shipping-service/'
alias docker-images='cd ~/OMGworkspace/go/docker-images/'

############################################################################
# cd to frontend
alias omg='cd ~/OMGworkspace/'
alias non-go='cd ~/OMGworkspace/non-go/'
alias accounting-ui='cd ~/OMGworkspace/non-go/accounting-ui/'
alias tdo='cd ~/OMGworkspace/non-go/teamdealeronline/'
alias work-orders='cd ~/OMGworkspace/non-go/teamdealeronline/web/src/salesend/src/js/work-orders/'
alias packing-slips-builder='cd ~/OMGworkspace/non-go/packing-slips-builder/'
alias ui-framework='cd ~/OMGworkspace/non-go/ui-framework/'
alias orders-ui='cd ~/OMGworkspace/non-go/orders-ui/'
alias order-tracker='cd ~/OMGworkspace/non-go/order-tracker/'
alias integrations-app='cd ~/OMGworkspace/non-go/integrations-app/'
alias store-app='cd ~/OMGworkspace/non-go/store-app/'

############################################################################
# cd to cluster repos
alias clusters='cd ~/OMGworkspace/clusters/'
alias creds='cd ~/OMGworkspace/credentials/'
alias dev-cluster='cd ~/OMGworkspace/clusters/dev-cluster/'
alias staging-cluster='cd ~/OMGworkspace/clusters/staging-cluster/'
alias prod-cluster='cd ~/OMGworkspace/clusters/prod-cluster/'

############################################################################
# common bash commands
alias ..='cd ..'
alias ls='ls -lhGTAF' 
alias leave='clear; exit'
alias work='vim ~/work.txt'
alias bi='cd ~/Desktop/boldidea'
alias notes='vim ~/notes.txt'
alias hints='vim ~/helpfulhints.txt'
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias zshrc='vim ~/.zshrc'
alias srcz'=source ~/.zshrc'
alias psblogs='docker logs -f omg_packing-slips-builder_1'
alias tdologs='docker logs -f omg_tdo_1'
alias db1login='gcloud auth login && ~/cloud_sql_proxy -instances=ordermygear-1125:us-central1:prod-db-1-reader=tcp:3308'
alias db2login='gcloud auth login && ~/cloud_sql_proxy -instances=ordermygear-1125:us-central1:prod-db-2=tcp:3309'
alias dbstlogin='~/cloud_sql_proxy -instances=omg-staging-env:us-central1:staging=tcp:3307'
alias dbwebhooks='gcloud auth login && ~/cloud_sql_proxy -instances=ordermygear-1125:us-central1:prod-db-2=tcp:3309'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/philliphatton/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/philliphatton/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/philliphatton/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/philliphatton/google-cloud-sdk/completion.zsh.inc'; fi
