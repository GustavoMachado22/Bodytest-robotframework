##################
# MakeFile Calls #
##################

e2e:
	robot -d ./logs tests/
	
enrolls:
	robot -d ./logs tests/enrollments

login:
	robot -d ./logs tests/login

plans:
	robot -d ./logs tests/plans

students:
	robot -d ./logs tests/students