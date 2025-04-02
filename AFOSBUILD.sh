meson setup builddir -Dlibsystemd=false -Dlibudev=false -Dpolkit=false

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Configure... PASS!"
else
  # houston we have a problem
  exit 1
fi


cd builddir

meson compile

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Meson compile... PASS!"
else
  # houston we have a problem
  exit 1
fi

meson install

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Meson install... PASS!"
else
  # houston we have a problem
  exit 1
fi
