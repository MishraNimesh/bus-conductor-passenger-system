#!/bin/bash

echo "===== Bus Conductor Passenger System ====="

max_seats=5
fare=50
count=1

while [ $count -le $max_seats ]
do
    echo "Enter passenger name:"
    read name

    echo "Passenger $count: $name added."

    echo "$name" >> passenger_list.txt

    total=$((count * fare))

    echo "Total fare collected so far: Rs $total"

    count=$((count + 1))

    echo "-----------------------------"
done

echo "All seats are filled."
echo "Passenger list saved in passenger_list.txt"