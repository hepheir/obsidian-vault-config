# Makefile

.PHONY: ignore

# make 명령어를 실행했을 때 기본으로 수행할 동작
all: ignore

# workspace.json 파일 변경 무시 설정
ignore:
	@echo "workspace.json 변경 사항 무시 설정을 적용합니다."
	git update-index --assume-unchanged workspace.json graph.json
	@echo "완료되었습니다."

# (옵션) 다시 추적을 시작하고 싶을 때: make no-ignore
no-ignore:
	@echo "workspace.json 변경 사항 무시 설정을 해제합니다."
	git update-index --no-assume-unchanged workspace.json graph.json
	@echo "완료되었습니다."
