@echo off
echo ===============================
echo Creating Class-wise Users...
echo ===============================

REM Create Groups
echo Creating Groups...
net localgroup Red /add
net localgroup Green /add
net localgroup Blue /add

REM Loop through classes and create users
for %%c in (4 5 6 7 8 9 10) do (

```
echo Creating users for Class %%c...

net user Class%%c_Red CompLab123 /add
net user Class%%c_Green CompLab123 /add
net user Class%%c_Blue CompLab123 /add

REM Add users to groups
net localgroup Red Class%%c_Red /add
net localgroup Green Class%%c_Green /add
net localgroup Blue Class%%c_Blue /add
```

)

echo ===============================
echo All users created successfully!
echo ===============================
pause
