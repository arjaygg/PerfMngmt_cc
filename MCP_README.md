# MCP Server Configuration

This project uses MCP (Model Context Protocol) servers to extend capabilities across different coding environments.

## Configuration Location

The canonical MCP configuration is stored in **`mcp.json`** in the project root for team sharing and consistency across different IDEs.

## Configured MCP Servers

- **directory-tree**: Deep directory tree visualization
- **markdownify**: Convert various file formats to markdown  
- **context7**: Up-to-date documentation and code examples for libraries
- **office-powerpoint**: PowerPoint presentation creation and editing
- **mcp-video**: Video processing and transcript extraction
- **markitdown**: Universal file-to-markdown conversion

## Usage Across Tools

### Cursor
Copy `mcp.json` to `.cursor/mcp.json`:
```bash
cp mcp.json .cursor/mcp.json
```

### VS Code  
Copy `mcp.json` to `.vscode/mcp.json`:
```bash
mkdir -p .vscode && cp mcp.json .vscode/mcp.json
```

### Claude Code
Uses the project root `mcp.json` automatically, or add servers manually:
```bash
claude mcp add directory-tree npx @andredezzy/deep-directory-tree-mcp
# etc...
```

### Other Tools
Reference `mcp.json` as the canonical configuration.

## Maintenance

When adding new MCP servers, update `mcp.json` in the project root as the single source of truth. Team members can then copy this configuration to their IDE-specific locations as needed.

## Best Practices (2025)

- **Project root `mcp.json`** is committed for team consistency
- **IDE-specific configs** (`.cursor/mcp.json`, `.vscode/mcp.json`) are local copies
- **Update canonical config first**, then propagate to IDE-specific locations
- **Document setup instructions** for new team members