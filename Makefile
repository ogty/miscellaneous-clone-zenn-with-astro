name        ?= $(shell uuidgen)
today       := $(shell date '+%Y/%m/%d')
POSTS_PATH  := ./src/pages/posts
LAYOUT_PATH := ../../layouts/ArticleLayout.astro
TEMPLATE    := $(shell echo '---\\nlayout: $(LAYOUT_PATH)\\ntitle:\\nemoji:\\ntype:\\ndate: $(today)\\n---')

article:
	@echo $(TEMPLATE) > $(POSTS_PATH)/$(name).md
