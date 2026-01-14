# Disaster-Recovery.-FHRP-Keepalived
## Задание 1
Список команд которые я   использовал   для  настройки 
###На Router0:
enable
configure terminal
interface GigabitEthernet0/1
standby 1 track GigabitEthernet0/0
standby 1 priority 105  ! Изменили с 120 на 105
standby 1 preempt
end
write memory

###На Router1:
enable
configure terminal
interface GigabitEthernet0/1
standby 1 track GigabitEthernet0/0
standby 1 priority 100
standby 1 preempt
end
write memory
###Ниже приведу скриншоты:
<img width="1232" height="1570" alt="image" src="https://github.com/user-attachments/assets/9e20b9e9-f682-4d39-94ef-768cb2dbbb42" />
<img width="1114" height="1575" alt="image" src="https://github.com/user-attachments/assets/4dc60a29-9239-446f-b401-d6a5ff707ad5" />
