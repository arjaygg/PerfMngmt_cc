.PHONY: ingest validate:preflight validate:outputs batch hooks

PY := python3
CACHE := .cache
TOOLS := tools

$(CACHE):
	mkdir -p $(CACHE)/markdown $(CACHE)/feedback $(CACHE)/roster $(CACHE)/nine_box

ingest: $(CACHE)
	$(PY) $(TOOLS)/ingest_roster.py --manifest inputs.manifest.yaml --out $(CACHE)/roster/roster.json
	$(PY) $(TOOLS)/ingest_feedback.py --manifest inputs.manifest.yaml --roster $(CACHE)/roster/roster.json --out $(CACHE)/feedback
	$(PY) $(TOOLS)/ingest_nine_box.py --manifest inputs.manifest.yaml --out $(CACHE)/nine_box/nine_box.json
	$(PY) $(TOOLS)/convert_to_markdown.py --manifest inputs.manifest.yaml --out $(CACHE)/markdown

validate:preflight:
	$(PY) $(TOOLS)/validate_preflight.py --roster $(CACHE)/roster/roster.json --feedback_dir $(CACHE)/feedback --nine_box $(CACHE)/nine_box/nine_box.json

validate:outputs:
	$(PY) $(TOOLS)/validate_outputs.py --outputs Output_Management-Evaluation --notes Output_Summary/Manager_Notes --roster $(CACHE)/roster/roster.json

batch:
	$(PY) $(TOOLS)/run_batch.py --employees "$(EMPLOYEES)" --roster $(CACHE)/roster/roster.json --feedback_dir $(CACHE)/feedback --nine_box $(CACHE)/nine_box/nine_box.json

hooks:
	./tools/install_hooks.sh
