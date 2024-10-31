
```
actor Customer
participant "Order System" as OS

Customer -> OS : synchronous
activate OS
OS --> Customer : return
deactivate OS

alt path1
else path2
end

group name
end
```
