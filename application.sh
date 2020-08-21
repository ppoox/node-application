# move application directory
cd /home/koh/바탕화면/node-application/application$1
npm install

# getting avaliable port
a=$(lsof -Pi:3001 -sTCP:LISTEN -t)
if((x${a} == 'x'))
then
echo '3001 port is not activate'
    a=0
fi

b=$(lsof -Pi:3002 -sTCP:LISTEN -t)
if((x${b} == 'x'))
then
    echo '3002 port is not activate'
    b=0
fi

after=0
before=0

if((${a} > 0))
then
    echo '3001 running, 3002 start'
    after=3002
    before=3001
elif((${b} > 0))
then
    echo '3002 running, 3001 start'
    after=3001
    before=3002
else
    echo 'not match, 3001 start'
    after=3001
fi

# after version start
if((${after} > 0)) 
then
    echo 'after start'
    PORT=${after} pm2 start server.js --name ${after}
fi

sleep 10

if((${before} > 0))
then 
    echo 'before stop'
    pm2 stop ${before}
    pm2 delete ${before}
fi

cp -RT /home/koh/바탕화면/node-application/application$1 /home/koh/바탕화면/node-application/application1


