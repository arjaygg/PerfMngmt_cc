## ABC Technology — Team SMART OKRs (Y26)

Timeframe: Jan 1–Dec 31, 2026 (Y26)
Scope: Org-wide, project-agnostic goals for all ABC Technology squads
Inputs: Strategy 2025, SOW metrics, v6 evaluation themes, AUC objectives (generalized)

Measurement sources: ADO (work items, throughput, lead time), Git/CI (builds, CFR), SonarQube (quality gates, coverage), Observability (SLO/SLI), ServiceNow (incidents/changes), Confluence (docs), Surveys (stakeholder/enablement).

---

### Objective 1: Achieve engineering excellence and predictable delivery across teams

- KR1: First‑pass acceptance (FPA) ≥92% rolling 3‑month avg by Q3; ≥94% by Q4 (ADO/QA)
- KR2: Lead time for change reduced by 20% vs Y25 baseline by Q4 (ADO)
- KR3: 100% active repos pass Sonar quality gate; unit coverage ≥70% and integration ≥50% by Q3 (CI/Sonar)
- KR4: Reopened defect rate ≤3% of closed issues by Q4 (ADO)

### Objective 2: Improve reliability and change safety for Tier‑1 services

- KR1: Define SLOs and error budgets for 100% Tier‑1 services; weekly reviews by Q2 (Observability)
- KR2: Median MTTR ≤60 minutes for Sev1/2; 0 unresolved incidents >30 days by Q4 (ServiceNow)
- KR3: Change Failure Rate (CFR) ≤10% and rollback success ≥95% by Q4 (CI/Change mgmt)
- KR4: Publish runbooks for top 10 incident classes; recurrence reduced by 50% by Q4 (Confluence/ServiceNow)

### Objective 3: Scale AI‑augmented development and reusable enablement

- KR1: Ship AI template packs and DevOps playbooks; ≥75% monthly active usage by Q3 (repo analytics/surveys)
- KR2: Reduce average CI duration by 25% via caching/parallelism by Q3 (CI metrics)
- KR3: Time‑to‑first‑PR for new hires ≤10 days median by Q4 (Git/ADO)
- KR4: 12 enablement sessions delivered; avg usefulness ≥8/10; artifacts published for 100% sessions (Surveys/Confluence)

### Objective 4: Strengthen stakeholder alignment, visibility, and risk management

- KR1: Bi‑weekly squad status (objectives, risks, decisions) published on time ≥95% of cycles (Confluence)
- KR2: ≥90% of raised risks resolved within 2 weeks or with agreed mitigation plan (status logs)
- KR3: Quarterly stakeholder satisfaction ≥8/10 on clarity, predictability, and responsiveness (survey)
- KR4: Scope churn after quarterly commit ≤10% (ADO)

### Objective 5: Develop talent, leadership pipeline, and knowledge systems

- KR1: 100% ICs maintain quarterly growth plans; 90% goals completed per cycle (HRIS/manager review)
- KR2: 40 active mentor–mentee pairs; 80% positive feedback by Q4 (program records/surveys)
- KR3: Convert recurring fixes into 12 reusable assets (templates/checklists/scripts) with adoption in ≥8 squads (repos)
- KR4: Reduce onboarding friction: complete role playbooks for all core roles; new‑hire survey ≥8/10 by Q4 (Confluence/survey)

---

### Execution & Governance

- Cadence: Weekly metric review; monthly readout; quarterly rebaseline if needed
- Ownership: Squad leads report to AVP SDM; platform standards stewarded by Architects and DevOps leadership
- Evidence: Dashboards for FPA, lead time, CFR, MTTR, SLOs, coverage; link to artifacts in status notes

---

### Notes on AUC-to-Universal Generalization

Project‑specific AUC objectives map to these OKRs via: reliability (SLO/MTTR/CFR), engineering excellence (FPA/coverage/lead time), enablement (templates/playbooks/mentoring), and stakeholder cadence. Teams should parameterize services/domains while keeping measurement consistent.


