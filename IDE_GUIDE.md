# IDE Selection Guide

Choose the appropriate guide based on your development environment:

## 🟣 Claude Code Users

**Use**: [CLAUDE.md](./CLAUDE.md)

**Best for**:
- Specialized document processing with subagents
- Complex multi-step analysis workflows
- Advanced PDF and document parsing
- Parallel processing of multiple data sources

**Key Features**:
- Subagent workflows for document analysis
- Specialized PDF processing capabilities
- Advanced statistical analysis tools
- Complex multi-source data synthesis

## 🔵 Cursor Users

**Use**: [CURSOR.md](./CURSOR.md)

**Best for**:
- File search and editing workflows
- Sequential document processing
- MCP-powered document conversion
- Code editing and file manipulation

**Key Features**:
- MCP server integration (markdownify, context7, etc.)
- File search and navigation capabilities
- Text-based document processing
- Sequential workflow execution

## 📋 MCP Setup (Cursor Users)

**Use**: [CURSOR_MCP_SETUP.md](./CURSOR_MCP_SETUP.md)

**Required for**:
- Setting up MCP servers in Cursor
- Installing required npm packages
- Configuring document conversion tools
- Troubleshooting MCP connectivity

## 🔄 Common Workflow

Regardless of IDE, all users must:

1. **Follow the master plan** in [prompt.md](./prompt.md)
2. **Process the same inputs** from `Input_*/` directories
3. **Generate outputs** in `Output_*/` directories
4. **Apply calibration rules** (10/70/20 distribution)
5. **Maintain quality standards** for evaluations

## 📊 Feature Comparison

| Feature | Claude Code | Cursor |
|---------|-------------|---------|
| Document Processing | Advanced with subagents | MCP-powered conversion |
| Workflow Execution | Parallel processing | Sequential processing |
| PDF Analysis | Native support | Convert to text first |
| Excel Processing | Direct parsing | MCP tools available |
| File Management | Integrated | File search + editing |
| Statistical Analysis | Built-in tools | Manual processing |
| Output Generation | Automated workflows | Manual file creation |

## 🚀 Getting Started

1. **Choose your IDE** from the options above
2. **Read your IDE-specific guide** (CLAUDE.md or CURSOR.md)
3. **Follow the master execution plan** in prompt.md
4. **Process employee evaluations** using your IDE's workflow
5. **Generate outputs** in the specified directories

## 🔧 Troubleshooting

- **Claude Code issues**: Check CLAUDE.md for workflow guidance
- **Cursor issues**: Check CURSOR.md and CURSOR_MCP_SETUP.md
- **General issues**: Review prompt.md for execution requirements
- **MCP problems**: Follow setup guide in CURSOR_MCP_SETUP.md

## 📚 Additional Resources

- **Master Plan**: [prompt.md](./prompt.md) - Required for all users
- **Project Overview**: [README.md](./README.md) - Repository structure and goals
- **Input Data**: `Input_*/` directories - Source materials
- **Output Examples**: `Output_*/` directories - Generated evaluations
