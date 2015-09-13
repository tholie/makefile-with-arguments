.PHONY:

executable:
	chmod u+x workers/*

%:
	@./Wrapper $@
