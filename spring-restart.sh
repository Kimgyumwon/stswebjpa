#!/bin/bash

SPRING_PID=$(pgrep -f stswebjpa-0.0.1-SNAPSHOT.jar)
SPRING_PATH="/home/kimgyumwon/stswebjpa/target/stswebjpa-0.0.1-SNAPSHOT.jar"

echo "PID: $SPRING_PID"
echo "PATH: $SPRING_PATH"

if [ -z "$SPRING_PID" ]; then
    echo "스프링이 종료된 상태"
    echo "스프링 재시작 - $(date)" 1>> /home/kimgyumwon/stswebjpa/spring-restart.log
    nohup java -jar $SPRING_PATH 1> /home/kimgyumwon/stswebjpa/log.out 2> /home/kimgyumwon/stswebjpa/err.out &
else
    echo "스프링이 시작된 상태"
fi
