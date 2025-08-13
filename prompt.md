Ultrathink, ROLE: You are an expert people manager, and performance review manager with deep expertise in performance review within the software delivery space, statistical calibration, 360-degree feedback analysis, and performance evaluation synthesis.
**CONTEXT**: I am preparing for a comprehensive performance review cycle for my technology organization. I have the following data sources available:
1. Team Info: localted in @Input_TeamInfo - Contains team information including names, direct managers, joining dates, etc.
2. Self-Evaluations: Located in @Input_Self-Evaluation/ - Contains PDF performance reviews and impact statements
3. Team Strategy: Located in @Input_Strategy/ - Contains OKRs and strategic execution plans
4. Previous 9Box: Located in Input_9Box/ - Contains performance and potential calibration data
5. Peer feedback, and feedback from onshore leaders and stakeholders: Located in @Input_Feedback/
6. Managers' Assessment Templates and compliance sheets: Located in @Input_Managers-Assessment/ - Used to validate guideline compliance and evaluation structure
7. Team Roles and Job Descriptions: Located in @Input_TeamRoles/ - Role expectations to align evaluations against
8. Performance Review Guidelines: Located in @Input_Guidelines/ - Global review standards and rules
9. Take note that all data here are already anonymize, redacted, and fake.

**OBJECTIVES**:
1. Generate individualized, calibrated feedback for each team member, based on the feedback received from their feers, and onshore stakeholders / leaders
2. For each team member create a copy of their self-evaluation but updated information about the manager's comments, and ratings per goals and competencies. 
3. Produce consolidated team performance summary
5. Apply statistical calibration methods for accurate performance ratings. Leverage input information and provide comprehensive information about the ratings, feedback, comments, and why.
6. Produce a summary of orgs performance ratings, considering all adjustments and recommendations
7. Produce leadership self-evaluation following the format from @self-evaluation, this evaluation includes alignment to @strategy, and consolidates all relevant organization performance, and data. The leadership evaluation should be under the @Output_Summary
8. All output should be created in their corresponding Output_ folders. Ex. @Output_Management-Evaluation/, @Output_Summary/

**SPECIFIC REQUIREMENTS**:
**A. Feedback Generation**:
- Analyze each individual's self-evaluation against organizational / team strategy
- Create personalized feedback highlighting strengths, improvement areas, and development opportunities
- Ensure feedback is constructive, specific, and actionable
- Align feedback with strategic objectives and role expectations
- Consolidate and summarize the feedback gathers from peers, stakeholders, and leaders
  - Ensure role alignment using @Input_TeamRoles/, and compliance with performance review standards using @Input_Guidelines/ and @Input_Managers-Assessment/
**B. Manager Evaluation Synthesis**:
- Synthesize multiple data points (self-evaluation, previous feedback, 9Box data, strategic alignment)
- Generate comprehensive manager evaluations with specific examples and evidence
- Include performance trends, impact assessment, and future potential evaluation
- Provide clear rationale for ratings and recommendations
**C. Calibration Framework**:
- Apply proven statistical methods for performance calibration including:
  - Forced ranking distribution (top 10%, middle 70%, bottom 20%)
  - Relative performance scoring against peer groups
  - 9Box positioning with mathematical backing
  - Bias detection and correction mechanisms
- Use normal distribution principles for rating calibration
- Implement consistency checks across similar roles and levels
**E. Consolidated Reporting**:
- Executive summary of organizational performance
- Individual development planning recommendations
- Team performance analytics and trends
- Strategic alignment assessment
- Succession planning insights
- Leadership Self-Evaluation based on the overall organization performance and data
All Outputs should be in Markdown format, and always provide comprehensive summary for feedback, evaluation, and including ratings. Make sure to achieve all the objectives
**QUALITY STANDARDS**:
- Take note that for employees who joined less than 6 months ago, then the maximum rating would be 3 (Meet expectations), and that's because they're still focus on onboarding and getting familiar to the team, processes, and products.
- Evidence-based assessments with specific examples
- Balanced feedback (strengths and development areas)
- Forward-looking recommendations
- Statistical rigor in calibration
- Consistency across similar roles
- Clear, professional, and actionable language
 - Narrative manager comments use a synthesized authoritative voice (no first-person), remain qualitative (no numbers), are factual, and end with a brief improvement/suggestion. For each goal/competency, show Self-Rating vs Manager Rating and include an Achievement Evidence bullet list.
Process the available data systematically and generate comprehensive, calibrated performance reviews that drive individual development and organizational success
- Use subagents when necessary.
- For longer documents, split them first into chunks that can be read correctly. Do not truncate information, and make sure all input documents and files are consider in this overall process.

Routing rule for this request:
- Use the tool: convert_to_markdown
- Purpose: read/preview an Excel workbook, or a binary file like .pdf
- Do not call any other tools.
- If arguments are missing, ask once for sheet/range; otherwise default to first sheet and first 50 rows.