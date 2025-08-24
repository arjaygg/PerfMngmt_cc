# AGENTS.md

This file provides guidance when working with code in this repository using Cursor.

## Canonical Spec and Compliance

- `prompt.md` is the authoritative specification for this workspace. If any guidance here conflicts with `prompt.md`, `prompt.md` prevails.
- Do not hallucinate. Use only facts from inputs and existing outputs.
- Preserve existing file formatting and indentation. All outputs must be Markdown.

## Project Overview

This is a performance management analysis workspace for processing employee performance reviews at ABC Technology (Axos Business Center). The system analyzes multiple data sources to generate calibrated performance evaluations, management feedback, and organizational summaries.

## Data Structure

### Input Directories
- `Input_Self-Evaluation/` - PDF performance reviews and impact statements for individual employees
- `Input_Feedback/` - Excel files containing peer feedback and stakeholder reviews
- `Input_9Box/` - Excel files with performance and potential calibration data (9-box grid assessments)
- `Input_Strategy/` - PDF with organizational strategy and OKRs (ABC Tech Strategy & Execution Plan 2025)
- `Input_TeamInfo/` - PDF with team organizational structure and member information
- `Input_Managers-Assessment/` - Additional manager's assessment based on manager's confidence
- `Input_TeamRoles/` - Role descriptions and expectations used for alignment checks
- `Input_Guidelines/` - Performance review global guidelines and standards

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
- Convert PDF files to text/markdown for processing using available MCP tools
- Parse Excel feedback data and 9-box assessments
- Cross-reference against strategic objectives and team information
- Generate comprehensive manager evaluations with evidence-based ratings

### Output Format
- All outputs must be in Markdown format
- Include comprehensive summaries, ratings, and detailed feedback
- Maintain professional, constructive, and actionable language
- Provide clear rationale for ratings and recommendations

## Processing Instructions

When working with this workspace:
1. **Follow the detailed execution plan in `prompt.md`, Section D (Systematic Workflow per Team Member), for every employee**
2. Convert PDF documents to text format before processing using MCP tools
3. Use Cursor's file search and editing capabilities to work with multiple files
4. Ensure all input documents are fully considered in evaluations
5. Apply consistent calibration methods across similar roles and levels
6. Generate both individual assessments and organizational summaries

## Execution Checklist (Must pass for every evaluation)

- Inputs referenced and used: `Input_Self-Evaluation/`, `Input_Feedback/`, `Input_9Box/`, `Input_Strategy/`, `Input_TeamInfo/`, `Input_Managers-Assessment/`, `Input_TeamRoles/`, `Input_Guidelines/`
- Calibration rules applied:
  - Forced distribution 10/70/20
  - Tenure cap: <6 months → max rating 3
  - 9-Box positioning and rationale included
  - Bias detection and role/level consistency checks
- Required sections present in each manager evaluation:
  - Summary of Ratings (manager vs calibrated) with explicit calibration source/date
  - Calibration Reconciliation (why final rating; distribution rationale; actions if gap)
  - Peer Feedback and 360 Evidence (themes + concrete examples)
  - Goals Assessment (ratings with concise evidence per goal)
  - Competencies Evaluation (ratings summary with justification)
  - Strategic Alignment and 9-Box
- Role Alignment (map key observations to expectations in `Input_TeamRoles/`)
  - Bias and Consistency Checks (tenure, role parity, peer vs manager alignment)
  - Development Focus and Specific Actions
  - Recognition/Retention Actions (if performance-rating gap exists)
  - Manager's Assessment Summary and Review Status
- Outputs written to correct folders; naming: `{Last_First}_{MonthYear}_Manager_Evaluation.md`
- Process in batches of 3–5; group commits per batch with short summary.

## Manager Evaluation Section Template

- Header: Version, Employee, Role, Manager, Period, Date, Confidence
- Summary of Ratings:
  - Manager proposed rating
  - Calibrated rating (cite Final Statistical Calibration Report date)
  - 9-Box position
- Calibration Reconciliation
- Peer Feedback and 360 Evidence (themes + 1–3 examples)
- Goals Assessment (ratings + concise evidence)
- Competencies Evaluation (ratings summary)
- Strategic Alignment and 9-Box
- Bias and Consistency Checks
- Development Focus and Specific Actions
- Recognition/Retention Actions (if applicable)
- Manager's Assessment Summary
- Review Status: Final (Calibrated = X)

## Batching and Commits

- Process 3–5 employees per batch.
- Group changes per team members.
- Commit and push grouped changes with a concise summary listing employees and key adjustments.

## Quality Standards (from prompt.md)

- Evidence-based assessments with specific examples; balanced feedback; forward-looking recommendations.
- Statistical rigor in calibration; consistency across similar roles/levels.
- Tenure rule: employees with <6 months tenure are capped at rating 3.
- Clear, professional, actionable language.
- **CRITICAL RULE**: When there's a rating discrepancy where employee expects higher but manager rates lower, and when the rating is lower than "EE" or "Exceeded Expectations", manager comments MUST provide comprehensive, actionable feedback including:
  - Specific actions/behaviors needed to achieve higher ratings
  - Specific actions/behaviors based on the team member's role as per documented in `Input_TeamRoles/` 
  - Concrete examples of what "exceeds expectations" looks like
  - Measurable milestones and success criteria
  - Timeline expectations for improvement
  - Resources or support available
  - Regular check-in schedule to monitor progress

## File Handling

- Convert PDF files to text/markdown format for processing using MCP tools
- Excel files require parsing for feedback data and statistical analysis
- Output files should follow naming conventions that identify the employee and evaluation type

## Cursor-Specific Workflow

- Use Cursor's file search capabilities to locate relevant documents
- Work with text-based files for analysis and processing
- Leverage Cursor's editing capabilities for generating and updating evaluation documents
- Process files sequentially to maintain context and avoid information overload
- Use available MCP tools for document conversion and processing

## Available MCP Tools in Cursor

This project is configured with MCP servers that provide additional capabilities:

### Markdownify
- Convert PDFs, DOCX, XLSX, PPTX files to markdown
- Process images with OCR
- Convert web pages to markdown

### Context7  
- Access up-to-date library documentation
- Get code examples for any library
- Search through API references

### Office PowerPoint
- Create and edit PowerPoint presentations
- Add slides, charts, tables, and shapes
- Apply professional templates and themes

### Directory Tree
- Generate visual directory structures
- Customize depth and filtering options
- Perfect for documentation

### Video
- Download videos from YouTube, Vimeo, etc.
- Extract transcripts and subtitles
- Process video content for analysis

### Filesystem
- Secure file system operations
- Controlled access to files and directories
- Safe file manipulation

### MarkItDown
- Convert web pages, documents, and resources to markdown
- Microsoft's MarkItDown conversion tool
- Enhanced document processing capabilities

## Manager Confidence Suggestions

Include concise, actionable guidance in every Manager Evaluation (within the relevant Goal sections or in the **Development Focus and Specific Actions** / **Manager Comments**) that helps strengthen the manager's confidence through improved visibility:

- Maintain up-to-date documentation of work and share it with the team and stakeholders.
- Present progress and key achievements in sprint reviews or stakeholder demos.
- Proactively schedule regular 1-on-1s with the manager to surface wins, learnings, and challenges.

## Troubleshooting

If you encounter issues:

1. **Check MCP Configuration**: Verify `.cursor/mcp.json` is properly configured
2. **Install MCP Packages**: Ensure required npm packages are installed in WSL
3. **Restart Cursor**: Fully restart Cursor after configuration changes
4. **Check Logs**: Review Cursor's developer console for error messages
5. **File Permissions**: Ensure proper access to input and output directories

## Additional Resources

- **MCP Setup**: See [CURSOR_MCP_SETUP.md](./CURSOR_MCP_SETUP.md) for detailed configuration
- **Master Plan**: Follow [prompt.md](./prompt.md) for the complete execution workflow
- **Claude Code Guide**: Reference [CLAUDE.md](./CLAUDE.md) for alternative workflows
