# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a performance management analysis workspace for processing employee performance reviews at ABC Technology (Axos Business Center). The system analyzes multiple data sources to generate calibrated performance evaluations, management feedback, and organizational summaries.

## Data Structure

### Input Directories
- `Input_Self-Evaluation/` - PDF performance reviews and impact statements for individual employees
- `Input_Feedback/` - Excel files containing peer feedback and stakeholder reviews
- `Input_9Box/` - Excel files with performance and potential calibration data (9-box grid assessments)
- `Input_Strategy/` - PDF with organizational strategy and OKRs (ABC Tech Strategy & Execution Plan 2025)
- `Input_TeamInfo/` - PDF with team organizational structure and member information

### Output Directories
- `Output_Management-Evaluation/` - Generated manager evaluations and individual feedback
- `Output_Summary/` - Consolidated team performance summaries and leadership evaluations

## Key Requirements

### Performance Review Processing
- Process PDF self-evaluations with structured format including Goals, Competencies, and ratings
- Rating scale: Substantially Exceeds Expectations (SE), Exceeds Expectations (EE), Meets Expectations (M)
- Employees with <6 months tenure are capped at rating 3 (Meet Expectations)
- Apply statistical calibration using forced ranking distribution (top 10%, middle 70%, bottom 20%)

### Document Analysis Tasks
- Extract structured data from PDF performance reviews
- Parse Excel feedback data and 9-box assessments
- Cross-reference against strategic objectives and team information
- Generate comprehensive manager evaluations with evidence-based ratings

### Output Format
- All outputs must be in Markdown format
- Include comprehensive summaries, ratings, and detailed feedback
- Maintain professional, constructive, and actionable language
- Provide clear rationale for ratings and recommendations

### Evidence and Ratings Placement (Aug 2025 v4+)
- Ratings must use labels only (SE/EE/M) and appear exclusively in the Calibrated Ratings section. Do not embed ratings inside narrative paragraphs.
- Narrative content must remain qualitative and evidence-based. Do not include self-ratings, numeric scores, goal percentages, bands, or distribution math.
- Under each Goal in the Calibrated Ratings section, add a short “Evidence (qualitative)” sub-list (1–3 bullets) referencing behaviors, artifacts, and peer/stakeholder observations from provided inputs.
- For each Competency, add 1–2 “Observed behaviors” bullets that ground the label in specific qualitative observations.
- Development Focus must include:
  - Current strengths to leverage
  - Growth opportunities
  - Specific development actions split into 3–6 months and 6–12 months
- Include a brief Calibration Context section clarifying that labels are applied only in the Ratings section and narratives are qualitative.

## Processing Instructions

When working with this workspace:
1. Use subagents for complex document processing tasks
2. Split longer documents into readable chunks to avoid truncation
3. Ensure all input documents are fully considered in evaluations
4. Apply consistent calibration methods across similar roles and levels
5. Generate both individual assessments and organizational summaries

## File Handling

- PDF files contain structured performance review data with specific sections (Goals, Competencies, Overall ratings)
- Excel files require parsing for feedback data and statistical analysis
- Output files should follow naming conventions that identify the employee and evaluation type

## Memory Updates

- Use subagents when necessary.
- For longer documents, split them first into chunks that can be read correctly. Do not truncate information, and make sure all input documents and files are consider in this overall process.