TTL=120 # em segundos
IS_RUNNING=$(ps aux | grep 'motionalert' | grep -v grep | grep -v $$ | wc -l)
 
function notify {
    if [[ ${IS_RUNNING} -gt 1 ]]; then
        echo "Alerta já enviado, aguarde!"
    else
        curl -s -o /dev/null -u $1: -X POST https://api.pushbullet.com/v2/pushes --header 'Content-Type: application/json' --data-binary '{"type": "note", "title": "RPi Cam", "body": "Movimento Detectado"}'
 
        echo "Alerta enviado. Aguarde $TTL segundos para enviar outro."
        sleep ${TTL}s
    fi
}
 
notify $1 &
