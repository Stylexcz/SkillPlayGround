# Electronic Cats Documentation Style Guide

## 1. Purpose

This document defines the writing style for documentation generated for Electronic Cats products.

It complements:

- the wiki structure;
- the Markdown rules;
- the page templates.

Its purpose is to keep documentation consistent, clear, technical, and accessible to users who may not have advanced knowledge of electronics or software.

---

## 2. Audience

Documentation should be written primarily for **end users and beginners**.

The reader should not be expected to already understand:

- internal implementation details;
- unexplained acronyms;
- undocumented commands;
- development-specific assumptions;
- previous knowledge of the product.

When technical knowledge is necessary, explain it briefly before asking the user to use it.

---

## 3. Tone

Use a tone that is:

- Clear.
- Direct.
- Professional.
- Technical without being unnecessarily complex.
- Helpful.
- Neutral.

Avoid:

- Marketing language.
- Excessive enthusiasm.
- Informal expressions.
- Humor inside technical procedures.
- Condescending language.
- Unnecessary jargon.

Prefer:

```text
Connect the board to your computer using a USB cable.
```

Avoid:

```text
Simply plug the board in and you're good to go!
```

---

## 4. Clarity and Simplicity

Technical information should be expressed as simply as possible without removing information that is necessary for correct operation.

Prefer:

```text
The device must be connected before running the command.
```

Over:

```text
Prior to executing the aforementioned command, ensure that the device is physically connected to the host system.
```

Use short, direct sentences whenever possible.

---

## 5. Explain Before Using

When a technical concept is necessary for the procedure, introduce it before asking the user to use it.

Example:

```text
The CLI (Command-Line Interface) allows you to control the device from a terminal.

Use the following command to list connected devices:
```

Do not introduce an acronym without explanation unless it is already obvious and consistently used throughout the document.

---

## 6. Technical Terminology

Use consistent names for:

- Products.
- Boards.
- Components.
- Tools.
- CLIs.
- TUIs.
- Commands.
- Firmware.
- Protocols.

Use the official name of a product or tool whenever it is known.

Do not alternate between multiple names for the same thing when the distinction could create ambiguity.

Examples:

```text
Electronic Cats
CatSniffer
Minino
Catnip
```

---

## 7. Product Names

Product names should retain their official capitalization.

Do not alter official product names for stylistic reasons.

---

## 8. Commands and Tools

Commands must be presented exactly as the user needs to enter them.

Use inline code when mentioning commands in prose:

```markdown
Use the `catnip devices` command.
```

Use a code block when the user must execute the command:

```bash
catnip devices
```

Explain what an important command does before or immediately after showing it.

---

## 9. Command Output

Distinguish clearly between:

```text
Command
↓
Output
↓
Explanation
```

Example:

````markdown
Run:

```bash
catnip devices
```

Expected output:

```text
Device detected: CatSniffer
```
````

This confirms that the device was detected successfully.

Do not present expected output as something the user should type.

Terminology:

- `Expected output:` — inline label (lowercase, with colon) placed immediately before a ` ```text ` block that shows a command's terminal output.
- `### Expected Output` — Title Case section heading, used only on command reference pages, as in §28 of the Markdown reference.
- `## Expected Result` — Title Case heading of the final section of Getting Started, Feature Application, and Tutorial pages. It describes the observable outcome of the whole procedure, not the output of a command.

---

## 10. Procedures

Procedures should be actionable and sequential.

Prefer:

```text
### Step 1 — Connect the board

Connect the board to your computer using a USB cable.
```

The documentation should tell the user what to do, not only describe what happens.

---

## 11. Instructions

Use imperative language for actions:

```text
Connect the board.
Open the terminal.
Run the command.
Select the device.
Verify the output.
```

Avoid vague instructions such as:

```text
You may want to connect the board.
It would be possible to run the command.
The user should probably verify the result.
```

---

## 12. Context Before Complex Actions

When an action could confuse a beginner, briefly explain its purpose before giving the command or procedure.

Example:

```text
The firmware update process replaces the firmware currently installed on the device.

Before continuing, connect the device to your computer.
```

Do not add long explanations when a short clarification is enough.

---

## 13. Hardware Documentation

When documenting hardware:

- Identify the component before referring to it.
- Use official component names when available.
- Explain unusual connectors or interfaces.
- State important voltage or power requirements clearly.
- Distinguish inputs, outputs, power connections, and communication interfaces.
- Use diagrams or images when they materially improve understanding.

Example:

```text
GPIO3 is a general-purpose digital input/output pin.
```

---

## 14. Software and Firmware Documentation

When documenting software or firmware:

- Identify the tool or firmware by name.
- State prerequisites before the procedure.
- Explain installation and configuration only to the extent necessary.
- Clearly distinguish software versions when relevant.
- Prefer current official tools.

If a procedure depends on a specific version, state it explicitly.

Example:

```text
This feature requires firmware version 1.2.0 or later.
```

---

## 15. Priority to Current Official Tools

Documentation should prioritize official and currently supported tools developed by Electronic Cats.

Preferred order:

```text
Official Electronic Cats tool
        ↓
Current recommended external tool
        ↓
Alternative tool
```

Avoid presenting obsolete development environments as the primary procedure.

When an older tool must be mentioned, clearly identify its status and why it is relevant.

---

## 16. Tables

Use tables when information is naturally structured and comparable.

Good examples:

- Technical specifications.
- Pinouts.
- Parameters.
- Command options.
- Compatibility.
- Supported values.

Do not use tables to replace normal prose or long procedures.

> [!IMPORTANT]
> **All tables must be centered.** Wrap every Markdown table in a `<div align="center">` block so it renders centered on GitHub:

```markdown
<div align="center">

| Heading A | Heading B |
|-----------|-----------|
| Value 1   | Value 2   |

</div>
```

> [!NOTE]
> Centering requires HTML with a blank line before and after the table. This is an explicit exception to the "avoid unnecessary HTML" rule in the Markdown reference, because Markdown itself does not support centering tables. `markdownlint` reports MD033 (inline HTML) for these blocks; accept the warning or disable the rule for wiki pages.

---

## 17. Images

Use images when they help the user:

- identify hardware;
- locate a connector;
- understand a wiring arrangement;
- recognize a software interface;
- verify a result.

Images should be placed close to the text they illustrate.

Use meaningful alternative text.

Example:

```markdown
![Minino USB-C connector](images/minino-usb-connector.png)
```

Avoid decorative images that do not contribute to the documentation.

---

## 18. Notes, Important Information, and Warnings

Use these sparingly.

### Note

```markdown
> [!NOTE]
> This command is available only on Minino V3.
```

### Important

```markdown
> [!IMPORTANT]
> Close the terminal before disconnecting the device.
```

### Warning

```markdown
> [!WARNING]
> Disconnect the board before changing the wiring.
```

### Caution

```markdown
> [!CAUTION]
> Disconnect power before changing the module.
```

Do not turn ordinary instructions into alerts.

---

## 19. Error Messages

When documenting an error:

1. Show the error exactly as it appears when possible.
2. Explain what it means.
3. Explain likely causes.
4. Provide the solution.
5. Explain how to verify the fix.

Example:

````markdown
## Device not detected

If the command returns:

```text
Device not detected
```

the board may not be connected correctly.

### Solution

1. Disconnect the board.
2. Reconnect it using a USB cable.
3. Run the command again.

### Verification

The command should list the connected device.
````

---

## 20. Versions and Compatibility

When information depends on a specific:

- hardware revision;
- firmware version;
- operating system;
- software version;

state the dependency explicitly.

Prefer:

```text
This procedure applies to Minino V3 with firmware 1.2.0 or later.
```

Avoid vague statements such as:

```text
This should work on recent versions.
```

---

## 21. Terminology Consistency

Use the same term throughout a document for the same concept.

For example, choose one:

```text
device
```

and avoid unnecessarily alternating with:

```text
board
unit
hardware
module
```

unless those terms actually refer to different things.

Consistency is more important than stylistic variation in technical documentation.

---

## 22. Links and References

Links should have descriptive names.

Prefer:

```markdown
[Minino GitHub repository](...)
```

Over:

```markdown
[Click here](...)
```

References should be directly relevant to the page.

Avoid creating a generic list of unrelated external resources.

---

## 23. Cross-References

When a topic is documented elsewhere, link to it rather than duplicating the entire explanation.

Example:

```markdown
For detailed firmware update instructions, see the
[Firmware Update Guide](...).
```

This helps prevent duplicated and conflicting information.

Every page ends with a `## Related Documentation` section linking to the relevant wiki pages.

---

## 24. Avoid Unnecessary Repetition

Do not repeat the same explanation in multiple sections unless the repetition significantly improves usability.

Prefer:

```text
General explanation
        ↓
Link to detailed procedure
```

over copying the same full procedure into several pages.

---

## 25. Avoid Assumptions

Do not assume that the reader:

- knows where a command comes from;
- knows which cable to use;
- knows which port to select;
- understands an acronym;
- knows which firmware version is required;
- knows what successful output should look like.

If the information is necessary to complete the task, document it.

---

## 26. Keep Documentation Focused

Every page should have a clear purpose.

Examples:

```text
Understanding [Product]
→ Understand the product.

Hardware
→ Explain the hardware.

Software & Firmware
→ Explain the software and firmware.

Getting Started
→ Start using the product.

Feature/Application
→ Explain a specific feature.

Tutorial
→ Accomplish a specific task.

Reference
→ Look up technical information.

Troubleshooting
→ Solve a problem.

FAQ
→ Answer common questions.

Resources
→ Point to relevant external resources.
```

If a page begins serving several different purposes, consider moving part of its content to a more appropriate section.

---

## 27. Quality Checklist

Before considering a document complete:

```text
[ ] The purpose of the page is clear.
[ ] The target user can understand the instructions.
[ ] Technical terminology is consistent.
[ ] Acronyms are explained when necessary.
[ ] Commands are clearly distinguished from output.
[ ] Required versions are identified.
[ ] Required hardware and software are identified.
[ ] Links have descriptive names.
[ ] Images have useful alternative text.
[ ] Tables are used only when appropriate.
[ ] Warnings are used only when necessary.
[ ] Procedures are sequential and reproducible.
[ ] The expected result is clear when applicable.
[ ] Obsolete tools are not presented as the primary method.
```

---

## 28. General Writing Principle

> **Write technical documentation so that a user can understand what they are doing, perform the required action, and verify the result without needing undocumented knowledge.**
