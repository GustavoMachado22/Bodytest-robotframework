###############
# Definitions #
###############

# Available: local and headless
TYPE=local
# Available: chromium, firefox and webkit
BROWSER=chromium
TEST_NAME=Login Administrador

##################
# MakeFile Calls #
##################

test:
	TYPE=${TYPE} BROWSER=${BROWSER} robot -N Local -d results/"${TEST_NAME}" -t "${TEST_NAME}" tests/
	Open results/"${TEST_NAME}"/log.html

headless tests:
	TYPE=headless BROWSER=${BROWSER} robot -d results/tests tests/  
	Open results/tests/log.html

local e2e:
	TYPE=local BROWSER=${BROWSER} robot -d results/tests tests/  
	Open results/tests/log.html
	
enrolls:
	TYPE=${TYPE} BROWSER=${BROWSER} robot -d results/enrolls  tests/enrollments 
	Open results/enrolls/log.html

login:
	TYPE=${TYPE} BROWSER=${BROWSER} robot -d results/login  tests/login
	Open results/login/log.html

plans:
	TYPE=${TYPE} BROWSER=${BROWSER} robot -d results/plans  tests/plans
	Open results/plans/log.html

students:
	TYPE=${TYPE} BROWSER=${BROWSER} robot -d results/students  tests/students
	Open results/students/log.html