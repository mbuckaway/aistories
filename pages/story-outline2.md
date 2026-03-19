---
layout: default
title: "Story Outline: Upstream Unreachable (v2)"
description: "The code compiled. The company didn't."
---


## Recommended Title

**Title:** Upstream Unreachable
**Subtitle/Tagline:** *The code compiled. The company didn't.*

## Synopsis

Daniel Burke's AI coding tools work perfectly. They have never been faster, never been smarter, never been more reliable. It is everything else that is failing — the funding rounds, the enterprise contracts, the startup next door with the moving boxes on the stairs. When the biggest company in artificial intelligence begins to collapse, it does not take the tools with it. It takes the careers, the equity, and the quiet bet Daniel made four years ago when he traded a real salary for shares in a company that needed one successful round to change his life. The round is not coming.

---

## Genre & Tone

Speculative fiction / literary realism. The story reads like a quiet disaster film — not explosions, but the creeping dread of watching the economic ground give way beneath an entire industry. The tone is grounded and observational, filtered through the perspective of a single working developer whose daily rituals anchor the narrative. There is dark humour in the central irony: Daniel's AI coding tools work perfectly throughout the collapse. His Cursor IDE, powered by Claude, never fails him. What fails is everything else — the funding, the customers, the company, the equity, the entire ecosystem he bet his career on. The emotional register moves from comfort and routine through unease, to grief, and finally to recognition and departure.

---

## Changes from v1

This outline completely revises the story's central mechanism based on technical research into how AI tools and infrastructure actually work:

1. **The collapse is economic, not technical.** In v1, the AI tool goes dark and Daniel must "code the old way." Research shows this is implausible: a senior developer uses Cursor with Claude (Anthropic), not GPT. Cursor has multi-model fallback. If OpenAI collapses, Claude keeps working. The v2 story is about the economic ecosystem dying while Daniel's personal tools remain functional — a more devastating and ironic premise.

2. **OpenAI's API death has a specific, realistic mechanism.** Microsoft pulls Azure API hosting for unpaid bills. Azure hosts OpenAI's stateless APIs (ChatGPT, developer API). This is the kill switch. When Azure cuts access, OpenAI's API goes dark — but only tools directly dependent on OpenAI are affected. Daniel's Claude-powered Cursor is not.

3. **Brief Claude overload is the only direct tool impact.** When OpenAI goes down, millions of users flood to Claude/Anthropic, causing temporary degradation. This happened in real life when ChatGPT went down. Daniel's Cursor stutters for a few hours, then recovers. The tool works. The job doesn't.

4. **Timeline expanded to three months (April–June 2026)** for believability.

5. **Daniel's arc ends with departure, not endurance.** He rejects a Denver job offer mid-story (sunk cost), then reaches back out in the final part after watching everything collapse. He chooses to leave the Valley.

6. **Two decision points make Daniel complicit in his own loss.** He dismisses Jen's ecosystem warning ("we're not on OpenAI" — technically right, strategically wrong) and rejects the Denver offer (sunk cost of four years' below-market salary). When the equity becomes worthless, it's a consequence of choices, not bad luck.

7. **Real 2025–2026 news woven throughout** — OpenAI ads, adult content pivot, burn rate, competitors overtaking, Microsoft's independence, mass layoffs.

8. **Maya expanded to three scenes** showing independent perspective.

---

## Theme

**Primary theme: Ecosystem dependency and the illusion of safety.** Daniel believes he is insulated from the AI collapse because he uses Claude, not OpenAI. He is technically correct and strategically blind. The story asks what it means to build your career inside an ecosystem whose financial foundations are borrowed money and investor confidence — and what happens when that confidence evaporates. The collapse is not about which model you use. It's about what happens to VC funding, enterprise confidence, and the whole market when the biggest player implodes. Everyone downstream gets wet.

**Secondary theme: Complicity and sunk cost.** Daniel is not merely a victim. He took below-market salary for equity. He dismissed the ecosystem warning because admitting the risk meant admitting the bet was wrong. He rejected the safer job because leaving meant abandoning four years of sacrifice. His loss is a consequence of decisions made from denial and sunk-cost reasoning. The story presses this harder than v1.

**Tertiary theme: The courage to leave.** What Daniel discovers is not how to code without AI — his tools still work. What he discovers is that the Valley's gravity is a trap. The rituals, the equity story, the "this time is different" narrative — they hold you in place past the point where leaving would have been wise. The ending is not about recovering craft. It's about recognizing when to walk away.

---

## Setting & Location

**Primary location:** Silicon Valley — specifically a small startup office in Palo Alto, a few blocks off University Avenue. The office is a converted Victorian house with eight desks, a standing-height kitchen counter, and a whiteboard that still has the pivot from two products ago. Daniel also works from his apartment in Mountain View. Both spaces are present in the story.

**Time period:** April–June 2026. Near-future but grounded in conditions already present as of early 2026.

**World-building notes:**

- OpenAI's $100 billion fundraising round at a $730 billion valuation is in progress as the story begins — real as of February 2026.
- OpenAI launched advertising in ChatGPT in January–February 2026 and shifted its content policy to allow adult content in Q1 2026. In February 2026, OpenAI signed a $200 million Pentagon contract to deploy AI in classified military networks and partnered with Anduril (autonomous drones, targeting systems). Anthropic refused unrestricted military access — insisted on no mass surveillance, no autonomous weapons — and was blacklisted by the Trump administration. Anthropic sued (March 2026); 150 retired judges filed an amicus brief supporting them. The QuitGPT boycott claimed 2.5 million supporters; ChatGPT uninstalls surged 295%. Claude became #1 on Apple's App Store. OpenAI's robotics lead resigned in protest. By April, all of this is recent background — the triple pillar of OpenAI's desperation: ads, erotica, and weapons contracts.
- **Daniel uses Cursor with Claude (Anthropic) as his primary AI model.** This is realistic: Anthropic commands 54% of the enterprise coding market; developers use Claude ~90% of the time in Cursor. A senior developer in 2026 would not use GPT for coding. Daniel switched partly for code quality and partly because the Pentagon deal made using OpenAI's tools feel like complicity. Anthropic's refusal to arm the military — and the punishment it received for that refusal — gave the choice of model provider a moral dimension it had not had before.
- **Cursor** supports 26+ LLMs and routes all requests through its own backend proxy before connecting to model providers. If one provider goes down, Cursor falls back to others. This multi-model architecture provides inherent redundancy — but does not protect against economic collapse.
- **OpenAI does not make a product any other company truly needs.** Microsoft generates 75% of its Azure AI revenue independently of OpenAI. Azure Foundry offers Claude, DeepSeek, and other models alongside GPT. If OpenAI vanishes, Microsoft still has the hardware, the infrastructure, and Copilot. Developers have alternatives. The only company that needs OpenAI to survive is OpenAI.
- **OpenAI's infrastructure:** Azure hosts the stateless APIs (ChatGPT, developer API) — this is the critical path. AWS has a $38B deal for inference scaling. Oracle has a $300B Stargate deal for future data centres. Microsoft pulling Azure API hosting for unpaid bills is the realistic kill switch.
- The Valley is saturated with "wrapper" startups — companies whose entire product is a UI on top of OpenAI's API. When OpenAI's API goes dark, these companies die instantly. Companies built on Claude or multi-model approaches survive technically but face the same VC freeze.
- **Relic** builds developer tooling for API observability. The irony: Relic's product monitors the health of the very infrastructure that is collapsing. The dashboards work perfectly. They show, in real time, exactly how the ecosystem is dying.
- **VC funding is highly concentrated.** AI captured 50% of global funding in 2025 ($202.3B), but 60% went to $100M+ rounds. When OpenAI stumbles, the ripple effects freeze funding for all AI startups — not just OpenAI-dependent ones. The contagion is economic confidence, not technical dependency.
- Mass tech layoffs: 245,953 at 783 companies in 2025, pace doubling in 2026.

---

## Plot Outline

### Part One — The Morning Ritual (Early April 2026)

Daniel Burke, a 34-year-old senior developer at Relic — a twelve-person API observability startup in Palo Alto — begins his workday with a ritual so practiced it has become unconscious: pour-over coffee, headlines, IDE. Cursor opens with his project context already loaded, Claude selected as the active model. He types a half-formed question about a tricky authentication refactor and gets a clean answer in two seconds. He has not read technical documentation from scratch in eighteen months.

He uses Claude for everything — switched from GPT models eight months ago when the difference in code quality became impossible to ignore. Most of the senior developers he knows have done the same. Anthropic has been quietly eating OpenAI's lunch in the enterprise coding market. He does not think about this in competitive terms. He thinks about it in the way you think about having chosen the better tool: with mild, unexamined satisfaction.

On his phone, the CNBC morning segment runs a piece on OpenAI's Q1 performance. The company's ChatGPT ad business, launched in February, is generating revenue but "not at a pace that meaningfully closes the gap between income and expenditure." A guest notes that OpenAI's adult content policy shift — allowing sexually explicit conversations for verified users, the company publicly stating it is "not the moral police" — has generated more commentary than revenue. "A company that once framed itself as humanity's guardian against unsafe AI is now running ads and selling erotica between chatbot responses," the guest says. "That's not a pivot. That's a symptom."

Daniel watches this with the mild interest of a man who believes himself to be on the right side of the divide. He uses Claude. He is not downstream of OpenAI. He scrolls past.

On the seventh morning, a headline: **OPENAI $100B ROUND ENCOUNTERING INVESTOR HESITATION — SOURCES.** He reads the first sentence and returns to his code.

Cursor's response time is 1.7 seconds. He works until noon.

**Target length: ~1,500 words**

---

### Part Two — The Warning (Mid-April 2026)

The moving boxes appear on a Tuesday. Conduit AI — a Palo Alto wrapper startup two blocks east, built entirely on OpenAI's API — is shutting down. Their API went dark with 72 hours' notice. Daniel watches the furniture being carried down the stairs from the Relic kitchen window. The teal sign is still up.

Conduit was a wrapper. Their product was a well-designed interface on top of someone else's inference API. When that API's pricing changed and reliability dropped, the business model evaporated. Daniel notes this with professional detachment. Relic is not a wrapper. Relic builds its own observability tooling. The AI dependency is in the development workflow — in the tools his engineers use to write code — not in the product itself.

A CNBC segment that evening features an HSBC analyst report: OpenAI faces a $207 billion funding shortfall and likely won't achieve profitability before 2030. The company's projected burn rate for 2026 is $25 billion. Daniel watches the numbers scroll across the bottom of the screen.

Jen calls on a Thursday evening. Not a Slack message — a phone call, which carries weight. She is in Austin now, at a startup that builds deployment automation. She has started diversifying her company's AI dependencies — not just using multiple model providers, but reducing their product's reliance on AI-assisted workflows entirely. Building manual fallbacks. Documenting processes that currently exist only as AI-mediated tribal knowledge.

"It's not about whether your model provider goes down," she says. "It's about what happens to the whole ecosystem when the biggest player in it implodes. VC confidence, enterprise purchasing, hiring — it all contracts. If you're an AI-adjacent startup trying to raise right now, the temperature of the room just dropped ten degrees."

After the call, Daniel opens a browser tab. He searches for strategies for reducing AI workflow dependency — not local models, but the broader resilience Jen described. Documenting processes. Building manual fallbacks for AI-mediated development workflows. The kind of preparation that takes weeks and diverts engineering resources from product work.

He thinks about what building those fallbacks means. It means telling Jason the Series A prep needs to wait while they build resilience against a scenario that might not happen. It means admitting the ecosystem they operate in — the ecosystem his equity depends on — might be fragile. It means treating Jen's caution as wisdom rather than overcaution.

He closes the tab.

He opens Cursor. Claude responds in 1.8 seconds. He works until midnight.

**Target length: ~1,800 words**

---

### Part Three — The Cracks Widen (Late April – Early May 2026)

A push notification on a Sunday: xAI has experienced a four-hour global outage. The follow-up is different from past outages — Musk gives an interview describing xAI's initial infrastructure and talent strategies as "fundamentally flawed" and announcing a complete organizational reset. A man who built a $20 billion AI company admitting the strategy was fundamentally flawed.

In the Relic Slack, someone shares a Bloomberg screenshot: DeepSeek has released an open-source model matching GPT-5 on reasoning benchmarks. Development cost: under six million dollars. OpenAI's projected spend for the same capability: twenty-five billion. The ratio is not a number. It is a question about whether OpenAI's cost structure is a moat or a millstone.

On his commute, a podcast runs an episode on enterprise AI adoption. Anthropic's Claude now commands 32% of enterprise LLM usage, surpassing OpenAI's 25%. In the coding market, Anthropic holds 54% — more than double OpenAI's share. The host frames it carefully: "The question is no longer whether OpenAI is the market leader. The question is whether OpenAI makes a product that anyone else truly needs."

Daniel listens. He uses Claude. He is on the winning side of this particular shift. But the sentence sits with him: *a product that anyone else truly needs.* If the market decides that OpenAI is not essential, what happens to the companies — the investors, the infrastructure commitments, the ecosystem — built on the assumption that it was?

The SEC releases a four-paragraph advisory on AI-sector portfolio exposure. Institutional blandness. Largely not read.

That evening, Maya sends him a link. No message, no context — just a URL to a financial analysis piece about AI startup funding concentration. He opens it before bed. She has been tracking this independently. He had not known that.

Two of Relic's enterprise customers reach out asking about AI dependency exposure — not Relic's dependency on AI models, but their own. They want to know what Relic's monitoring dashboards would show if a major AI provider went down. The irony is quiet and perfect: the product works exactly as designed, showing precisely how fragile the infrastructure is.

**Target length: ~1,500 words**

---

### Part Four — The Round Fails (Mid-May 2026)

The news comes on a Wednesday morning while his second cup of coffee is still hot.

Reuters reports that a major sovereign wealth fund has withdrawn from OpenAI's $100 billion financing round. The fund, expected to anchor the raise at a $730 billion valuation, cited concerns over projected debt obligations. OpenAI's cumulative cash consumption is projected at $115 billion through 2029.

By noon, two more institutional investors have withdrawn. Microsoft opens down six percent and closes down nine. NVIDIA drops fourteen percent. Oracle drops seventeen percent — its multi-billion-dollar data centre commitments to OpenAI now headlined as an overhang.

Daniel's Cursor works perfectly. Claude responds in 1.9 seconds. The irony is not lost on him.

But the phone starts ringing. Three Relic enterprise customers call within 48 hours — not about OpenAI's API, but about "infrastructure risk in the sector." One puts their renewal on hold. Another asks for a meeting to discuss Relic's own financial stability. The questions are not about technology. They are about confidence. The AI sector, as a category, has become a risk line item on enterprise procurement spreadsheets.

The CEO calls a stand-up at 3 PM. The Series A had been in active conversation with two VC firms. Both conversations are paused. Not canceled. Paused. "They want to see how the market settles," Jason says.

Three VC firms post updates noting a "pause on new commitments to AI infrastructure verticals pending market stabilization." The language is careful. The meaning is not.

That evening, Daniel opens the spreadsheet he hasn't updated in four months. His equity, calculated at the most recent internal valuation, times his ownership fraction, minus the liquidation preferences sitting ahead of him. He had run this math when he joined Relic and found it motivating. He runs it now and finds it clarifying, which is not the same thing.

He opens the RFC for the authentication protocol. He reads it from the beginning, slowly, taking notes on a legal pad from a desk drawer. Not because Claude can't help — Claude would help perfectly. But because something has shifted in how he relates to the work. The ground is moving. The things he can hold in his own hands feel different from the things held by systems he doesn't control.

**Target length: ~1,800 words**

---

### Part Five — The Offer (Late May 2026)

The email arrives on a Monday morning from Kevin Marsh — a former colleague from Daniel's Denver days, now engineering director at Ridgeline Systems. Enterprise software for the freight industry. Profitable for nine consecutive years. No AI dependency. No venture funding. Market-rate salary plus fifteen percent. Full benefits. Kevin mentions the mountains.

Daniel reads the email twice. He drafts a reply — *thanks, Kevin, would love to learn more* — and stares at it.

He thinks about the four years of below-market salary. The equity that was worth something significant eight weeks ago and is worth considerably less now. The Series A that is paused, which is not canceled, which is not the same thing but which is also not different in the way he needs it to be.

He deletes the draft.

He does not tell Maya about the email.

OpenAI's official language is "strategic restructuring discussions." Daniel has been in the industry long enough to know what this means. Microsoft is the obvious acquirer and also, for regulatory reasons, the impossible one — their twenty-seven percent equity stake means any acquisition triggers antitrust review lasting longer than OpenAI's available runway.

OpenAI suspends free-tier API access with 48 hours' notice. Paid-tier allocation is cut to a fraction of normal capacity. Tools built directly on OpenAI's API start failing — ChatGPT wrappers, customer service bots, content platforms. Daniel's Cursor, powered by Claude, continues to work normally. The divide between companies that depended on OpenAI and those that didn't is now a visible fault line in the industry.

Priya Anand sits closest to the window. She is twenty-eight, has been writing code professionally for four years. Her Cursor uses Claude for core coding, but several of her auxiliary tools — a documentation generator, a test scaffolding plugin, a code review assistant — were built on OpenAI's API. They have stopped working or become intermittent. She sits very still at her desk one afternoon, staring at a documentation page, the particular stillness of someone who has encountered the limits of their workflow and is trying to rebuild it in real time.

"What are you stuck on?"

"My test scaffolding is gone. The plugin used GPT. And the docs generator. I can write the tests manually, I've done it, but I keep — I keep starting and then reaching for a tool that isn't there."

"Show me."

They work through the documentation together. He reads sections out loud. She asks questions that force him to be sure of what he knows. By the end of an hour they have a working approach, rebuilt from first principles.

In Austin, a company called Lumen Layer shuts down overnight. Nineteen employees. The CEO's postmortem on LinkedIn describes a product that was "fundamentally sound" and a business that had become "untenable given infrastructure cost trajectories." No severance.

**Target length: ~1,800 words**

---

### Part Six — The Collapse (Early June 2026)

He comes home on a Tuesday and finds Maya at the dining table, her laptop open to a C-SPAN stream. A Senate Commerce subcommittee hearing: *Critical Digital Infrastructure Resilience.* She is not watching it for him.

"Microsoft doesn't need them," she says without looking up. "Seventy-five percent of Azure's AI revenue comes from their own infrastructure. They've got Claude and DeepSeek running on their platform. Copilot runs on multiple models. If OpenAI disappears tomorrow, Microsoft still has the hardware, the data centres, and their own products."

She looks at him. "The only company that needs OpenAI to survive is OpenAI."

"What happens to your shares if Relic can't raise?"

"In a wind-down, they're worth whatever common shareholders receive after liquidation preferences. Which in a company that doesn't reach its Series A valuation is usually a number that rounds to zero."

She nods once and looks back at her screen.

The next morning, the breaking alert arrives. Microsoft has suspended Azure API hosting for OpenAI over unpaid infrastructure invoices. The amount is not disclosed in the initial report; Bloomberg later confirms it exceeds $800 million against a $250 billion Azure commitment that OpenAI could no longer service. All OpenAI API endpoints served through Azure — which includes the ChatGPT consumer product and the stateless developer API — are unreachable.

OpenAI's status page continues to show all services operational. The system that updated the status page was among the last things to go.

The cascade is immediate and specific. Every application built directly on OpenAI's API — customer service bots, content platforms, wrapper startups, the tools and plugins that millions of developers had integrated into their workflows — goes silent. The ChatGPT consumer product, used by 800 million people weekly, returns a loading spinner that does not resolve.

Daniel opens Cursor. Claude responds — but slowly. The response time is 4.2 seconds, then 6.8 seconds, then a timeout. He checks the Anthropic status page: degraded performance due to "unprecedented demand surge." Millions of users and developers who had been using OpenAI-powered tools are flooding to Claude, Gemini, DeepSeek — every alternative simultaneously. The stampede away from OpenAI is overwhelming every other provider.

By afternoon, Cursor has stabilized. Anthropic has scaled its infrastructure to handle the surge. Claude responds in 2.1 seconds. Daniel's tool works.

But the ecosystem around him is in ruins. The Relic dashboard shows exactly what has happened: every OpenAI-dependent endpoint they monitor is flatlined. Error rates pinned at 100%. The dashboard works perfectly. It is doing exactly what Relic's product is supposed to do — showing, in precise and comprehensive detail, how much of the infrastructure their customers depended on has just died.

Jason's Slack message arrives at 4 PM:

*Team — the Series A is dead. We have approximately six months of runway. There will be an all-hands Thursday at 10 AM. I'm available by phone today. — Jason*

Mass layoffs are accelerating. Three more VC firms announce pauses on AI infrastructure investments. A Senate subcommittee demands emergency testimony. The CNBC anchor delivers it all with her standard composure while the charts behind her make their own less composed argument.

**Target length: ~1,600 words**

---

### Part Seven — Upstream Unreachable (Mid-June 2026)

Daniel finishes the authentication refactor on a Tuesday evening.

Cursor works. Claude works. The code is clean. Forty-seven tests, all green. Integration tests, green. Two hundred and twelve lines changed, every change deliberate. He commits it.

```
git commit -m "auth: complete session invalidation refactor

Implements token lifecycle management per RFC 6749 §4.1.3 and §6.
Handles explicit logout, expiry, and cross-device invalidation.
Closes #347."
```

The build passes.

He sits in the empty office and looks at the green indicator in the CI panel. The tool that helped him write it is still running. The company that might have translated this work into financial meaning is probably not going to survive long enough to translate it into anything.

His equity — four years of below-market salary, four years of telling himself the bet was sound, crystallized into shares in a company that needed one successful round to change his life — is almost certainly worth nothing. Not because the technology failed. Not because Claude stopped working or Cursor went dark. Because the ecosystem failed. Because the money ran out — not his company's money specifically, but the broader confidence that kept money flowing into companies like his. The tide went out, and Relic was standing in shallow water.

He thinks about Jen's phone call in April. *It's not about whether your model provider goes down. It's about what happens to the whole ecosystem when the biggest player in it implodes.* She had been right. He had heard her and not listened, because listening meant questioning the bet, and questioning the bet meant admitting the last four years might have been a miscalculation.

He opens his email.

Kevin Marsh's message is still there, two weeks old now, unreplied. Ridgeline Systems. Denver. Profitable. Boring. Real salary. Mountains.

He drafts a reply:

*Kevin — apologies for the delayed response. Is the position still open? I'd like to talk.*

He reads it twice. He does not delete it.

He presses send.

The hills east of the valley are visible through the window, pale in the late light. They do not know about OpenAI's debt structure or the $207 billion funding shortfall. They are simply there, as they have been for every collapse that has ever happened in the buildings below them, and will be there for whatever comes next.

Outside, a moving truck is parked in front of the warehouse where the teal sign still hangs. Someone is taking the sign down. It comes free in two pieces.

Around two that afternoon, Priya had arrived. She sat at her desk without speaking. She pulled up a documentation page, a different RFC, and read it carefully, with a legal pad beside the keyboard. At a quarter past four, she said, quietly and mostly to herself: "Okay. I think I have it." She is still here now, working, head down. Her Cursor is open. Claude is responding.

He drives south on El Camino Real — past the Tesla dealership, past the shuttered restaurant that had been a startup office, past the building where Lumen Layer had been before nineteen people went home one evening and found the next morning that the locks had changed. The Valley reoccupies its spaces. That is the one constant it offers.

He parks in the Mountain View lot.

Maya is at her desk. He sits down across from her.

"I emailed Kevin back," he says. "The Denver job."

She looks at him. Her expression is not surprise. It is recognition — the face of someone who has been waiting for the other person to arrive at a conclusion she reached weeks ago.

"Good," she says.

He makes coffee. He pours it slowly, counter-clockwise, and lets it bloom. The apartment is quiet. The laptop is closed. Outside, the hills are still there.

It occurs to him that this might be one of the last times he makes coffee in this kitchen. The thought is not dramatic. It is factual, the way the equity math was factual, the way the six months of runway was factual. He has been in the Valley for six years. He has watched three startups die. He has written good code and taken bad bets and told himself the story about how this time was different.

This time was not different. But this time, he is choosing to leave before the building is empty and the sign comes down in two pieces.

He drinks the coffee. It is good.

**Target length: ~2,000 words**

---

## Characters

### Daniel Burke — Protagonist

- **Age/Background:** 34, grew up in Denver, moved to the Bay Area in his late twenties. BS in Computer Science from the University of Colorado. Has watched two previous startup deaths at close range.
- **Occupation/Position:** Senior software developer at Relic, a twelve-person API observability startup. De facto technical lead. Joined when the team was five.
- **Financial exposure:** Equity in Relic worth significant money on paper, contingent on a successful Series A. That round dies. His equity is worthless.
- **Primary AI tool:** Cursor with Claude (Anthropic). He switched from GPT models eight months ago. His tool works throughout the story. The irony is central.
- **Core conflict:** He believes he is insulated from the OpenAI collapse because he uses Claude. He is technically right and strategically blind. The ecosystem risk isn't about which model you use — it's about what happens to funding, confidence, and the market when the biggest player implodes. He dismissed the warning (Part Two) and rejected the escape (Part Five). His loss is a consequence of choices.
- **Arc:** Denial → resistance → recognition → departure. He ends the story by choosing to leave the Valley — reaching out to the Denver job he previously rejected.

### Priya Anand — Colleague / Supporting

- **Age/Background:** 28, grew up in Fremont, coding bootcamp. Four years professional experience, all with AI assistance.
- **Occupation/Position:** Mid-level developer at Relic; front-end dashboard.
- **Tool dependency:** Uses Claude in Cursor for core coding, but several auxiliary tools (docs generator, test scaffolding) were OpenAI-dependent. When those fail, she must rebuild her workflow.
- **Core conflict:** The tool ecosystem fracture hits her differently — not in the primary IDE but in the secondary tools she relied on without examining their dependencies.

### Maya Chen — Daniel's Partner

- **Role expanded from v1.** UX researcher, works remotely. Three distinct scenes:
  - **Part Three:** Sends Daniel a financial analysis link with no comment — she's been independently tracking the collapse.
  - **Part Six:** Watching Senate hearings. Articulates Microsoft's independence from OpenAI. Asks the equity question. She has arrived at her own understanding.
  - **Part Seven:** Daniel tells her he emailed Denver. Her expression is recognition, not surprise — she reached this conclusion weeks ago.

### Jen — Former Colleague / Catalyst

- **Elevated from v1.** Phone call in Part Two. Her warning is not about model fallbacks — it's about ecosystem resilience. "It's not about whether your model provider goes down. It's about what happens to the whole ecosystem when the biggest player implodes." Daniel dismisses it because his tools use Claude. He is technically right and misses the point entirely.

### Kevin Marsh — The Road Not Taken

- **New character.** Former colleague from Daniel's Denver days, now at Ridgeline Systems (freight logistics software). His email offering a safe job in Denver is rejected in Part Five and accepted in Part Seven. The road not taken becomes the road taken.

### Jason — CEO / Minor

- Relic's CEO. His Slack message in Part Six — Series A dead, six months runway — is precisely the kind of careful, insufficient communication a small-company founder produces in a crisis.

### The CNBC Anchor — Voice of the Collapse / Recurring Device

- One of several news delivery mechanisms. Other channels: push notifications, Slack links, podcasts, LinkedIn, Maya's independent research, customer conversations. No single device dominates.

---

## Character Development Plan

**Daniel Burke:** His arc is defined by two wrong decisions and one right one. The wrong decisions: dismissing Jen's ecosystem warning ("we're not on OpenAI") and deleting the Denver reply (sunk cost of four years). The right decision: sending the Denver email in Part Seven. His development is not about recovering craft or learning to code without AI — his tools work fine. It's about recognizing that the ecosystem he bet his career on was never as solid as it appeared, and that staying past the point of recognition is a choice, not an obligation. The ending is departure, not endurance.

**Priya Anand:** Her struggle is more specific in v2 — it's not that Claude goes down, it's that the secondary tools in her workflow (OpenAI-dependent) fail, and she must rebuild. Her quiet "I think I have it" in Part Seven shows resilience and growth.

**Maya Chen:** Develops from silent observer (sending a link) to independent analyst (articulating Microsoft's independence, knowing the HSBC numbers) to waiting partner (recognizing Daniel's Denver decision before he makes it). She is never just a receptacle for his exposition. She has her own understanding.

---

## Narrative Devices & Craft Notes

**The Central Irony:** Daniel's AI tools work perfectly throughout the entire collapse. Claude never fails him. Cursor never goes dark. The "null response" is not from the API — it's from the market, the VCs, the enterprise customers, the ecosystem. Everything Daniel asked of the Valley returned nothing.

**The Title "Upstream Unreachable":** From the 502 error code (`x-upstream-error: upstream service unreachable`), but the metaphor extends beyond the API. The economic ecosystem upstream of Daniel — the funding, the investor confidence, the market that gave his equity meaning — has become unreachable. His tools work. The infrastructure that gave them financial meaning doesn't. Everything upstream of the code itself has gone dark.

**Structure:** Three months (April–June 2026), seven parts. Each part covers two to three weeks. Time markers use specific enough references to keep the reader oriented.

**POV:** Close third person, limited to Daniel.

**News Delivery — Varied Channels:**

| News Item | Delivery | Part |
| --- | --- | --- |
| OpenAI ads + adult content + Pentagon deal | CNBC segment (background) | 1 |
| QuitGPT boycott / Anthropic military refusal | CNBC + Daniel's switch context | 1 |
| $100B round hesitation | Phone headline | 1 |
| HSBC $207B shortfall, burn rate | CNBC + Jen's call context | 2 |
| xAI "fundamentally flawed" | Push notification | 3 |
| DeepSeek $6M model | Bloomberg screenshot in Slack | 3 |
| Anthropic overtaking OpenAI (partly driven by military ethics split) | Podcast on commute | 3 |
| SEC AI advisory | Background reference | 3 |
| Sovereign wealth fund withdrawal | Reuters/CNBC anchor | 4 |
| OpenAI "strategic restructuring" | News reports | 5 |
| Lumen Layer shutdown / mass layoffs | LinkedIn | 5–6 |
| Microsoft independence (75% Azure AI) | Maya tells Daniel | 6 |
| Microsoft pulls Azure hosting | Breaking news alert | 6 |
| Claude overload from user surge | Daniel experiences in Cursor | 6 |
| VC pauses on AI investments | News + Jason's Slack | 6 |

**The Tool That Works:** Daniel's Cursor/Claude functioning normally throughout is the story's most important structural choice. Every time he opens Cursor and gets a clean response, it underscores that the collapse is not technical — it's economic. The tool works. The job doesn't. The equity is gone. The company is dying. And Claude responds in 1.9 seconds.

**The Brief Claude Overload (Part Six):** When Microsoft pulls OpenAI's Azure hosting, millions flood to Claude. Cursor stutters for a few hours. By afternoon, it stabilizes. This is the one moment Daniel's tool is directly affected, and it's brief and realistic. It serves as a reminder that even Claude is part of an interconnected system — but it recovers, because Anthropic's infrastructure is sound. The OpenAI-dependent tools do not recover.

**Recurring Motifs:**

- *The pour-over coffee* — the one piece of infrastructure Daniel controls. In Part Seven, it becomes a ritual of ending rather than continuity.
- *The hills east of the valley* — indifferent to valuations, funding rounds, and career bets.
- *The moving boxes / teal sign* — Conduit AI in Part Two, still being taken down in Part Seven. The physical image of ecosystem death.
- *The legal pad* — appears in Part Four as Daniel starts reading RFCs manually. Not because Claude failed, but because the ground is moving and he wants to hold something in his own hands.
- *The Cursor response time* — noted throughout as a counter-rhythm. 1.7s, 1.8s, 1.9s, 4.2s (overload), 2.1s (recovery). The tool works. Always works.
- *The deleted draft / sent email* — Part Five (deleted) and Part Seven (sent). The same gesture with opposite meanings.

---

## Research & Accuracy Notes

**Financial figures (all sourced from real 2025–2026 reporting):**

- OpenAI's $100B round at $730B valuation — in progress as of February 2026.
- OpenAI's projected cumulative cash burn: $115B through 2029 (The Information).
- OpenAI projects $14B annual loss for 2026, $25B burn, $57B in 2027.
- HSBC analysis: $207B funding shortfall, won't profit before 2030.
- OpenAI ads launched Jan–Feb 2026, targeting ~95% of 800M free-tier weekly users.
- OpenAI adult content shift Oct 2025, rolling out Q1 2026. "Not the moral police."
- Microsoft's 27% equity stake (~$135B). 75% of Azure AI revenue independent of OpenAI.
- Azure Foundry offers Claude, DeepSeek alongside GPT. Multi-model platform.
- Anthropic: 32% enterprise share vs OpenAI's 25%. 54% of coding market. ~$19B ARR March 2026.
- DeepSeek-R1: under $6M, matching GPT-5 on reasoning benchmarks. Open-source, MIT licence.
- xAI: $1.46B quarterly loss, Musk's March 2026 "fundamentally flawed" admission.
- OpenAI $38B AWS deal (Nov 2025). $250B Azure commitment. $300B Oracle Stargate deal.
- Azure hosts OpenAI's stateless APIs — pulling this hosting kills the consumer and developer API.
- Mass layoffs: 245,953 at 783 companies in 2025. 55,000 directly attributed to AI. Pace doubled in 2026.
- 95% of enterprise GenAI pilots produced no measurable P&L impact (MIT study).
- AI captured 50% of global funding in 2025 ($202.3B). 60% went to $100M+ rounds.
- VC deal count (9,844 in Q4 2025) at lowest since early 2020 — fewer deals, much larger.

**Technical accuracy:**

- Cursor supports 26+ LLMs, routes through own backend proxy.
- Developers use Claude ~90% of the time in Cursor. Senior devs would use Claude, not GPT.
- Cursor has multi-model fallback; OpenAI going down does not kill Cursor.
- Claude overload when ChatGPT went down is a documented real-world event.
- Azure hosting OpenAI's stateless APIs = the kill switch. Pulling this = API death for OpenAI-dependent tools.
- OpenAI's status page showing "operational" after the API is already dead = realistic (status pages are often last to update).

**Chapter 11 note:** The story uses Microsoft pulling Azure hosting as the mechanism, not a formal Chapter 11 filing as the trigger. The filing may follow, but the dramatic event is the infrastructure cutoff. This avoids the unrealistic "Chapter 11 = instant shutdown" problem. (In practice, unpaid bills to a critical infrastructure provider CAN trigger immediate service loss — Stability AI's AWS default is precedent.)

---

## Resolved Decisions

- **AI tool:** Cursor with Claude (Anthropic). Daniel's tool works throughout the story.
- **Collapse mechanism:** Economic ecosystem death. Microsoft pulling Azure hosting kills OpenAI's API. Claude briefly overloads from user surge, then recovers.
- **Central irony:** The tool works. The job doesn't. The equity returns null.
- **Daniel's arc:** Denial → resistance → recognition → departure (Denver email).
- **Decision Point 1:** Jen's phone call. Daniel dismisses ecosystem risk: "we're not on OpenAI." Technically right, strategically blind.
- **Decision Point 2:** Kevin Marsh's Denver email. Rejected in Part Five (sunk cost). Accepted in Part Seven (recognition).
- **Maya scenes:** Three — Part Three (link), Part Six (Microsoft independence / equity question), Part Seven (recognition of Denver decision).
- **Ending:** Daniel sends the Denver email. Chooses to leave. The pour-over ritual becomes a ritual of ending, not continuity.
- **Length target:** 10,000–14,000 words across seven parts.
- **Setting:** Silicon Valley (US), per original story-prompt.md override.

---

*Outline complete. Review before proceeding to write story.*


**This story is a work of fiction.** All characters, companies, organizations, events, and technologies depicted are entirely imaginary. Any resemblance to real persons, companies, or events is coincidental. The technical concepts discussed are dramatized for narrative purposes and do not represent a blueprint for any real-world exploit.

---

**About the creation of this story:**

This story was written by **Claude Sonnet 4.6**, an AI language model created by Anthropic, with creative direction and guidance from a human collaborator.

As a software developer, I spend my days writing code, not prose. I have ideas — sometimes big, strange, speculative ones — that I'd love to explore through fiction, but I don't have the creative writing skills or the time to develop them into polished narratives. AI changes that equation. It lets me act as a director — shaping the concept, the tone, the themes — while a capable (if non-human) collaborator does the actual wordsmithing. Think of it as guiding a student writer: I know what I want the story to say, and the AI helps me say it.


---

## License

© 2026 Mark. Some rights reserved.

This work is licensed under the **Creative Commons Attribution-NonCommercial 4.0 International License** (CC BY-NC 4.0).

You are free to:

- **Share** — copy and redistribute the material in any medium or format
- **Adapt** — remix, transform, and build upon the material

Under the following terms:

- **Attribution** — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- **NonCommercial** — You may not use the material for commercial purposes.

No additional restrictions — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.

Full license text: [https://creativecommons.org/licenses/by-nc/4.0/](https://creativecommons.org/licenses/by-nc/4.0/)

---

[View the story without copyright (for Medium import)](story-outline2_medium)
