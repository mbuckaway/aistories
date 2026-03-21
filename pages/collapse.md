---
layout: default
title: "Upstream Unreachable"
description: "The code compiled. The company didn't."
---


Daniel Burke's AI coding tools work perfectly. They have never been faster, never been smarter, never been more reliable. It is everything else that is failing — the funding rounds, the enterprise contracts, the startup next door with the moving boxes on the stairs. When the biggest company in artificial intelligence begins to collapse, it does not take the tools with it. It takes the careers, the equity, and the quiet bet Daniel made four years ago when he traded a real salary for shares in a company that needed one successful round to change his life. The round is not coming.

---

## Part One: The Morning Ritual

The coffee was ready before his laptop was open.

That was the ritual: grind the beans while the kettle came to temperature, pour slowly in a counter-clockwise spiral over the grounds, let it bloom for thirty seconds, then pour the rest. Check the headlines on his phone propped against the coffee maker while it finished. Then sit down. The order mattered. He had never articulated why, but disrupting it — opening the laptop too soon, checking Slack before the news — left a faint wrongness to the morning, a skip in the record that persisted until lunch.

Daniel Burke had been a developer long enough to know that the rituals were load-bearing. The work itself was resistant to routine: every problem was new, every architecture had its particular pathologies, and days that looked identical on a calendar were entirely different from the inside. The rituals were the thing you could control. So he controlled them.

He was thirty-four years old, a senior developer at Relic, and had been in Silicon Valley for six years — long enough to have watched two startups fail at close range, long enough to have developed the specific wariness of someone who had been burned without changing his behaviour. The Valley had a gravity to it. You came for the work, stayed for the equity, and told yourself the story about how this time was different.

Relic actually solved a problem. That was one thing.

The company built developer tooling for API observability — dashboards and alerting systems that monitored third-party API health in real time, so that when the services your application depended on started failing, you knew about it before your users did. Twelve people in a converted Victorian house three blocks off University Avenue in Palo Alto. A standing-height kitchen counter they used for stand-ups, a whiteboard with the ghost of the previous product still visible under the current one, and four engineers including Daniel and Priya, who sat closest to the window.

He had joined when the team was five people. He had taken a below-market salary — thirty-two thousand below market, which he had calculated precisely and then tried not to think about — in exchange for a meaningful equity stake. The equity was currently worth something significant on paper, contingent on a Series A their CEO had been quietly preparing for a spring announcement. He tried not to think about it in concrete numbers, which was its own kind of thought.

He took his coffee to the desk.

Cursor launched with his project context already loaded, Claude selected as the active model — a configuration he had stopped noticing in the way you stop noticing that a light switch works. He had switched from GPT models eight months ago. The code quality had been the initial reason — Claude was simply better at understanding architecture, at producing clean implementations that did not require three rounds of correction. But the switch had hardened into something more permanent in February, when OpenAI signed a $200 million contract with the Pentagon to deploy AI in classified military networks and announced a partnership with Anduril, the defence technology company that built autonomous drones and missile systems. Anthropic had refused — had insisted on red lines against mass surveillance and autonomous weapons, and had been blacklisted by the administration for it. The QuitGPT boycott that followed had claimed two and a half million supporters; ChatGPT uninstalls surged 295% in a single day. Most of the senior developers Daniel knew had already switched to Claude for the code quality. The Pentagon deal made the switch feel like something more than a technical preference.

Anthropic had been quietly eating OpenAI's lunch in the enterprise coding market — 54% of coding workloads now, more than double OpenAI's share. He did not think about this in competitive terms. He thought about it in the way you think about having chosen the right side of a line you did not draw.

His current project was a medium-sized authentication refactor — the kind of work that required holding the full architecture in mind simultaneously, and that Claude was particularly good at, better than Daniel had ever been alone. He typed a half-formed question about the OAuth flow they were replacing. The answer arrived in two seconds: clean, precise, three paragraphs that addressed exactly what he had meant rather than what he had said.

He had not read technical documentation from scratch in eighteen months.

On his phone, the CNBC anchor delivered the morning's market summary in her measured, unhurried register. Between a piece on Treasury yields and a segment on quarterly earnings, there was a report on OpenAI's Q1 performance. The company's ChatGPT ad business, launched in February, was generating revenue but "not at a pace that meaningfully closes the gap between income and expenditure." A venture capital guest ticked off the litany: the ad launch targeting 95% of ChatGPT's free users. The adult content policy shift — allowing sexually explicit conversations for verified users, the company publicly stating it was "not the moral police." And the Pentagon contract — $200 million to deploy AI in classified military networks, in partnership with Anduril, the defence tech company that built autonomous drones and targeting systems. "A company that once positioned itself as humanity's guardian against unsafe AI," the guest said, "is now running ads, selling erotica, and arming the Pentagon. That's not a pivot. That's a company that will sell to anyone who's buying." The anchor noted that OpenAI's robotics lead had resigned in protest of the military deal, and that the QuitGPT boycott movement was now claiming over two million supporters. Then she moved on to housing data.

Daniel watched this with the mild interest of a man who believed himself to be on the right side of the divide. He used Claude. He was not downstream of OpenAI. He scrolled past.

On the third morning, he worked from the Mountain View apartment — a two-bedroom on the second floor of a building whose bones still showed the motel it had been. Maya was at her desk by the time he got up, headphones on, the particular stillness of someone deep in research. She was a UX researcher, fully remote, and they had arrived at the equilibrium of two people who understood that proximity and silence were compatible.

He set up at the kitchen table and opened Cursor. The authentication refactor loaded. Claude responded in 1.9 seconds.

On the seventh morning, between the kettle and the pour, a headline moved across his phone screen:

**OPENAI $100B ROUND ENCOUNTERING INVESTOR HESITATION — SOURCES**

It was the second item in a market wrap, below a piece about Treasury yields and above a segment on consumer electronics earnings. He read the first sentence — *Several institutional investors have expressed concern over return timelines as OpenAI seeks to close its landmark financing round at a $730 billion valuation* — and scrolled past it.

He opened Cursor. Claude responded in 1.7 seconds. He worked until noon.

---

## Part Two: The Warning

The moving boxes appeared on a Tuesday.

Conduit AI occupied two floors of a converted warehouse two blocks east of the Relic office, identifiable from the street by the large teal sign above the entrance. Daniel had watched their team pitch at a demo day the previous autumn — a clean product, an articulate founding team, a business model that was essentially a well-designed interface built on top of OpenAI's inference API. The question of what happened to that business if the API underneath it changed its terms had come up once in Q&A and had been handled with the practiced confidence of people who had not deeply considered it.

Now the teal sign was still up and there were men carrying furniture down the stairs into a truck.

He watched from the Relic kitchen window while his pour-over finished. The boxes were generic brown, the kind that could mean anything — a sublease, an expansion, an ordinary company death. He found out from Slack before the morning was over: Conduit AI was shutting down. OpenAI's API pricing had increased for the third time in six months, and the rate limits imposed during the funding uncertainty had made Conduit's response-time guarantees impossible to honour. Their public statement described the timeline as "the most responsible given our circumstances."

Daniel noted this with professional detachment. Conduit was a wrapper — their entire product was a user interface on top of someone else's inference API. When that API's terms changed, the business evaporated. Relic was not a wrapper. Relic built its own observability tooling. The AI dependency was in the development workflow — in the tools his engineers used to write code — not in the product itself. And the tools used Claude, not OpenAI.

A CNBC segment that evening featured an HSBC analyst report: OpenAI faced a $207 billion funding shortfall and would likely not achieve profitability before 2030. The company's projected burn rate for 2026 was $25 billion. The segment included a chart that showed the gap between revenue and expenditure as a steadily widening red area that bore an uncomfortable resemblance to a mouth opening. Daniel watched the numbers scroll across the bottom of the screen.

Jen called on a Thursday evening.

Not a Slack message — a phone call, which she did infrequently enough that it carried weight. She was in Austin now, at a startup that built deployment automation. She had started diversifying her company's approach — not just using multiple model providers, but reducing their product's reliance on AI-assisted workflows entirely. Building manual fallbacks. Documenting processes that currently existed only as AI-mediated tribal knowledge.

"It's not about whether your model provider goes down," she said. "It's about what happens to the whole ecosystem when the biggest player in it implodes. VC confidence, enterprise purchasing, hiring — it all contracts. If you're an AI-adjacent startup trying to raise right now, the temperature of the room just dropped ten degrees."

"We're not on OpenAI," Daniel said. "We're on Claude. Different provider, different company, different financial situation."

"That's not what I'm talking about." There was a pause on the line that had the quality of someone choosing their words carefully. "I'm talking about the water level. When it drops, everyone's boat goes down, not just the ones with holes."

After the call, Daniel opened a browser tab. He searched for strategies for reducing AI workflow dependency — not local models, but the broader resilience Jen described. Documenting processes. Building manual fallbacks. The kind of preparation that took weeks and diverted engineering resources from product work.

He thought about what building those fallbacks meant. It meant telling Jason the Series A prep needed to wait while they built resilience against a scenario that might not happen. It meant admitting the ecosystem they operated in — the ecosystem his equity depended on — might be fragile in ways that had nothing to do with which model provider you used. It meant treating Jen's caution as wisdom rather than overcaution.

He closed the tab.

He opened Cursor. Claude responded in 1.8 seconds. He worked until midnight.

---

## Part Three: The Cracks Widen

A push notification on a Sunday morning: xAI had experienced a four-hour global outage. Grok users posted about it on X with the usual mixture of irritation and irony. But the follow-up was different from past outages — Musk gave an interview describing xAI's initial infrastructure and talent strategies as "fundamentally flawed" and announcing a complete organizational reset. He promised to rebuild "from the foundations up." Daniel read the quote twice. A man who had built a $20 billion AI company admitting the strategy was fundamentally flawed. He filed this away without acting on it.

In the Relic Slack, someone shared a Bloomberg screenshot: a Chinese AI lab called DeepSeek had released an open-source model that matched GPT-5 on reasoning benchmarks. Development cost: under six million dollars. OpenAI's projected spend for the same period: twenty-five billion. The ratio between those numbers was not a number. It was a question about whether OpenAI's cost structure was a moat or a millstone.

On his commute, a podcast he followed ran an episode on enterprise AI adoption. The data: Anthropic's Claude now commanded 32% of enterprise LLM usage, surpassing OpenAI's 25%. In the coding market specifically, Anthropic held 54% — more than double OpenAI's share. The host noted that the shift was not purely technical — the Pentagon deal had accelerated it. Healthcare systems, universities, and European enterprises had moved to Claude explicitly because Anthropic had refused military contracts and been punished for it. The QuitGPT boycott had not just hurt consumer numbers; it had made enterprise procurement departments nervous about OpenAI's brand in ways that no product improvement could fix. "The question is no longer whether OpenAI is the market leader," the host said. "The question is whether OpenAI makes a product that anyone else truly needs — or even wants to be associated with."

Daniel listened to this sentence and did not turn the podcast off. He used Claude. He was on the winning side of this particular shift. But the sentence sat with him, unanswered, for the rest of the drive: *a product that anyone else truly needs.* If the market decided that OpenAI was not essential, what happened to the companies — the investors, the infrastructure commitments, the ecosystem of four million developers and their dependents — built on the assumption that it was?

The SEC released a four-paragraph advisory on AI-sector portfolio exposure. It was titled with institutional blandness and largely not read.

That evening, Maya sent him a link. No message, no context — just a URL to a financial analysis piece about AI startup funding concentration. He opened it before bed: a detailed breakdown of how AI had captured 50% of global venture funding in 2025, but 60% of that had gone to rounds over $100 million. The money was not drying up. It was concentrating. And if the centre of that concentration cracked, the periphery would feel it first.

She had been tracking this. He had not known that.

Two of Relic's enterprise customers reached out the following week, asking about AI dependency exposure — not Relic's dependency on AI models, but their own. They wanted to understand what Relic's monitoring dashboards would show if a major AI provider went down. Could the dashboards model a catastrophic failure scenario? Could they simulate cascade effects across interconnected APIs?

The irony was quiet and perfect: the product worked exactly as designed, showing precisely how fragile the infrastructure was. And the more fragile the infrastructure looked, the more valuable the product that measured its fragility became — until the moment the fragility itself scared the customers away.

Daniel opened Cursor at the end of a long Wednesday. Claude responded in 1.8 seconds. The code was clean. The code was always clean.

---

## Part Four: The Round Fails

The news came on a Wednesday morning while his second cup of coffee was still hot.

He had the CNBC feed running on his phone while he worked through a problem with how their authentication service handled token expiration at the boundary between two session states. Claude had suggested an approach he was not fully convinced by; he was reading through the relevant specification to check it when the anchor's delivery shifted — the subtle change that happens when the next item was not in the morning briefing:

*Reuters is reporting this morning that a major sovereign wealth fund has withdrawn from OpenAI's financing round. According to sources familiar with the terms, the fund, which had been expected to anchor the $100 billion raise at a $730 billion valuation, cited concerns over the company's projected debt obligations. According to a leaked document first reported by The Information, OpenAI's cumulative cash consumption is projected at $115 billion through 2029. We'll have more as this develops.*

Daniel put his phone down.

He looked at the compile error in his IDE. He did not fix it.

By noon, two more institutional investors had withdrawn. Microsoft opened down six percent and closed down nine. NVIDIA dropped fourteen percent — its AI infrastructure exposure suddenly a liability on every analyst's model. Oracle dropped seventeen percent, its multi-billion-dollar data centre commitments to OpenAI now headlined in every market report as an overhang. The word *liability* was doing considerable work across every segment he watched, the anchor delivering it with her standard composure while the charts behind her made their own less composed argument.

Daniel's Cursor worked perfectly. Claude responded in 1.9 seconds. The irony was not lost on him.

But the phone started ringing. Three Relic enterprise customers called within forty-eight hours — not about OpenAI's API, but about "infrastructure risk in the sector." One put their renewal on hold. Another asked for a meeting to discuss Relic's own financial stability. The questions were not about technology. They were about confidence. The AI sector, as a category, had become a risk line item on enterprise procurement spreadsheets. It did not matter that Relic's product monitored APIs rather than depending on them for its core function. It did not matter that Daniel's team used Claude. The sector had a smell, and procurement departments could smell it.

The CEO called an unscheduled stand-up at 3 PM. The Series A had been in active conversation with two VC firms. Both conversations were paused. Not canceled. Paused. "They want to see how the market settles," Jason said. He asked if there were questions.

There were questions. They were the kind that did not have answers yet.

Three VC firms posted updates that week noting a "pause on new commitments to AI infrastructure verticals pending market stabilization." The language was careful. The meaning was not.

That evening, Daniel opened a spreadsheet he had not updated in four months. His equity, calculated at the most recent internal valuation, times his ownership fraction, minus the liquidation preferences sitting ahead of him in the capital structure. He had run this math when he joined Relic and found it motivating. He ran it now and found it clarifying, which was not the same thing.

He closed the spreadsheet.

He opened the RFC for the authentication protocol he had been half-reading. He read it from the beginning, slowly, taking notes on a legal pad he found in a desk drawer — the kind of notes he had stopped taking when Claude made it unnecessary to externalize his thinking. Not because Claude could not help. Claude would help perfectly. But something had shifted in how he related to the work. The ground was moving. The things he could hold in his own hands felt different from the things held by systems he did not control.

He did not finish until nearly midnight.

---

## Part Five: The Offer

The email arrived on a Monday morning from a name he had not thought about in three years.

Kevin Marsh had worked two desks down from Daniel at a company in Denver that built industrial scheduling software — the kind of company that did not describe itself as changing anything. Kevin was an engineering director now, at Ridgeline Systems, which made logistics platforms for the freight industry. Profitable for nine consecutive years. No AI dependency. No venture funding. His message was brief and specific: they were hiring a senior backend engineer. Market-rate salary plus fifteen percent. Full benefits. He mentioned the mountains.

Daniel read the email twice. He drafted a reply — *thanks, Kevin, would love to learn more* — and stared at it for several minutes.

He thought about the four years of below-market salary. The equity that was worth something significant eight weeks ago and was worth considerably less now. The Series A that was paused, which was not canceled, which was not the same thing but which was also not different in the way he needed it to be. He thought about what leaving meant: it meant admitting that the bet — four years of sacrifice, the story he had told himself about why the sacrifice was rational — had been placed on ground that was not solid. It meant the thirty-two thousand dollars a year, times four, was simply gone. Not deferred. Gone.

He deleted the draft.

He did not tell Maya about the email. He would think about why later.

OpenAI's official language was "strategic restructuring discussions." Daniel had been in the industry long enough to know what this meant. It meant acquisition talks that were not going well enough to announce. Microsoft was the obvious acquirer and also, for regulatory reasons, the impossible one — their twenty-seven percent equity stake meant any acquisition would trigger antitrust review lasting longer than OpenAI's available runway. Amazon was reported to be in conversations; then Amazon went quiet.

OpenAI suspended free-tier API access with 48 hours' notice. Paid-tier allocation was cut to a fraction of normal capacity. Tools built directly on OpenAI's API began failing — ChatGPT wrappers, customer service bots, content platforms, the documentation generators and code review plugins that millions of developers had integrated into their workflows without examining the dependency chain. Daniel's Cursor, powered by Claude, continued to work normally. The divide between companies that depended on OpenAI and those that did not was now a visible fault line running through the industry.

Priya Anand sat closest to the window. She was twenty-eight, had trained at a coding bootcamp in San Jose, and had been writing code professionally for four years — her entire working life conducted with AI assistance present from the first week. Her Cursor used Claude for core coding, but several of her auxiliary tools — a documentation generator, a test scaffolding plugin, a code review assistant she had integrated into her workflow the previous year — were built on OpenAI's API. They had stopped working or become intermittent.

He found her one afternoon sitting very still at her desk, staring at a documentation page open beside her code editor. She was not panicking — she was not the kind of person who panicked visibly — but he could see the particular stillness of someone who had encountered the limits of their workflow and was trying to rebuild it in real time.

"What are you stuck on?"

"My test scaffolding is gone. The plugin used GPT. And the docs generator." She paused. "I can write the tests manually — I've done it. But I keep starting and then reaching for a tool that isn't there."

"Show me."

They worked through the documentation together. He read sections out loud, which slowed him down enough to catch the things he would otherwise have skimmed. She asked questions that required him to explain rather than assume, which forced him to be sure of what he knew and honest about what he did not. By the end of an hour they had a working approach, rebuilt from first principles, and he had re-learned three things he had not known he had allowed himself to forget.

In Austin, a company called Lumen Layer shut down overnight. Nineteen employees. The notification arrived by email at 11 PM; the office was inaccessible by 8 AM. Their postmortem, posted to LinkedIn by the CEO the following morning, described a product that was "fundamentally sound" and a business that had become "untenable given infrastructure cost trajectories." No severance was mentioned. There was none to mention.

Daniel read the post on his phone during his commute. Below it, LinkedIn's sidebar showed a number: 245,953 tech workers laid off in 2025. The pace had doubled in 2026.

He opened Cursor when he got to the office. Claude responded in 1.9 seconds. The code was clean.

---

## Part Six: The Collapse

He came home on a Tuesday and found Maya at the dining table, her laptop open to a C-SPAN stream. A Senate Commerce subcommittee hearing: *Critical Digital Infrastructure Resilience: Gaps in Federal Preparedness for AI Service Disruption.* A former Treasury official was testifying that no federal contingency plan existed for the failure of a major AI service provider.

Maya was not watching it for him. She had arrived at her own understanding of what was happening, through her own reading, at her own pace.

"Microsoft doesn't need them," she said without looking up. "Seventy-five percent of Azure's AI revenue comes from their own infrastructure. They've got Claude and DeepSeek running on their platform. Copilot runs on multiple models. If OpenAI disappears tomorrow, Microsoft still has the hardware, the data centres, and their own products."

She looked at him. "The only company that needs OpenAI to survive is OpenAI."

He poured a glass of water and sat across from her.

"What happens to your shares if Relic can't raise?"

The question was not unkind. It was the only question worth asking, which was why she had asked it instead of the easier ones.

"In a wind-down, they're worth whatever common shareholders receive after liquidation preferences," he said. "Which in a company that doesn't reach its Series A valuation is usually a number that rounds to zero."

She nodded once and looked back at her screen.

He did not sleep well. He lay in the dark and thought about Denver — a smaller job at a company that made industrial scheduling software and did not describe itself as changing anything. He had been good at that job. He had read documentation, had opinions about specification details, had come home at a reasonable hour and not carried the work with him. Kevin Marsh's email sat in his inbox, unreplied. He thought about the draft he had deleted. He thought about why he had deleted it.

The next morning, the breaking alert arrived.

Microsoft had suspended Azure API hosting for OpenAI over unpaid infrastructure invoices. Bloomberg confirmed the amount exceeded $800 million against a $250 billion Azure commitment that OpenAI could no longer service. All OpenAI API endpoints served through Azure — which included the ChatGPT consumer product and the stateless developer API — were unreachable.

OpenAI's status page continued to show all services operational. The system that updated the status page had been among the last things to go.

The cascade was immediate and specific. Every application built directly on OpenAI's API — customer service bots, content platforms, wrapper startups, the tools and plugins that millions of developers had integrated into their workflows — went silent. The ChatGPT consumer product, used by 800 million people weekly, returned a loading spinner that did not resolve.

Daniel opened Cursor.

Claude responded — but slowly. The response time was 4.2 seconds, then 6.8 seconds, then a timeout. He checked the Anthropic status page: degraded performance due to "unprecedented demand surge." Millions of users and developers who had been using OpenAI-powered tools were flooding to Claude, to Gemini, to DeepSeek — every alternative simultaneously. The stampede away from OpenAI was overwhelming every other provider.

For a few hours, Daniel's tools stuttered. Not because of OpenAI. Because of the stampede away from it.

By afternoon, Cursor had stabilized. Anthropic had scaled its infrastructure to handle the surge. Claude responded in 2.1 seconds. Daniel's tool worked.

But the ecosystem around him was in ruins.

He opened the Relic dashboard out of professional habit and found exactly what he expected: every OpenAI-dependent endpoint they monitored was flatlined. Error rates pinned at 100%. Uptime indicators scrolling through shades of red. The dashboard worked perfectly. It was doing exactly what Relic's product was supposed to do — showing, in precise and comprehensive detail, how much of the infrastructure their customers depended on had just died.

The irony was no longer quiet.

Jason's message arrived in the company Slack at 4 PM:

*Team — the Series A is dead. We have approximately six months of runway. There will be an all-hands Thursday at 10 AM. I'm available by phone today. — Jason*

Daniel read the message. He did the arithmetic: six months meant December. His final vesting tranche cliff was in month eleven. The liquidation preference structure meant that in any realistic wind-down or distressed acquisition below the Series A valuation, common shareholders received whatever was left after everyone else had been paid, which was generally close to nothing. He had known this math for four years. He had chosen, for four years, to believe it would not be the relevant math.

Three more VC firms announced pauses on AI infrastructure investments. The CNBC anchor delivered it all with her standard composure while the charts behind her made their own less composed argument.

He closed Slack.

He opened Cursor. Claude responded in 2.1 seconds. The code was clean.

The code was always clean.

---

## Part Seven: Upstream Unreachable

Daniel finished the authentication refactor on a Tuesday evening.

Cursor worked. Claude worked. The code was clean. He ran the test suite: forty-seven tests, all green. Integration tests: green. He reviewed the diff — two hundred and twelve lines changed, one hundred and nine added, one hundred and three removed. Every change deliberate. Every decision accounted for. He committed it.

```
git commit -m "auth: complete session invalidation refactor

Implements token lifecycle management per RFC 6749 §4.1.3 and §6.
Handles explicit logout, expiry, and cross-device invalidation.
Closes #347."
```

He pushed. The build ran. The build passed.

He sat in the empty office and looked at the green indicator in the CI panel.

The tool that had helped him write it was still running. Claude responded in 1.9 seconds, the same as it had in April, the same as it had every day for the past three months while everything else fell apart. The AI had not failed him. The AI had never failed him. It was the thing that worked in a season when nothing else did — the one piece of infrastructure that had delivered exactly what it promised, at the speed it promised, with the quality it promised.

The company that might have translated this work into financial meaning was probably not going to survive long enough to translate it into anything.

His equity — four years of below-market salary, four years of telling himself the bet was sound, crystallized into shares in a company that had needed one successful round to change his life — was almost certainly worth nothing. Not because the technology failed. Not because Claude stopped working or Cursor went dark. Because the ecosystem failed. Because the money ran out — not Relic's money specifically, but the broader confidence that had kept money flowing into companies like Relic. The tide went out, and Relic was standing in shallow water.

He thought about Jen's phone call in April. *It's not about whether your model provider goes down. It's about what happens to the whole ecosystem when the biggest player in it implodes.* She had been right. He had heard her and not listened, because listening meant questioning the bet, and questioning the bet meant admitting the last four years might have been a miscalculation. He had said *we're not on OpenAI* and believed this was an answer. It was not an answer. It was a description of one thing that was not the problem, offered in place of a reckoning with the thing that was.

He opened his email.

Kevin Marsh's message was still there, three weeks old, unreplied. Ridgeline Systems. Denver. Profitable for nine consecutive years. No AI dependency. No venture funding. Market-rate salary plus fifteen percent. Full benefits. Mountains.

He had deleted the draft reply three weeks ago. He had sat in this chair and thought about the four years and the equity and the story he had been telling himself, and he had decided that leaving meant the sacrifice was wasted. He understood now that the sacrifice was wasted whether he left or not. The only question was whether he wasted more on top of it.

He drafted a new reply:

*Kevin — apologies for the delayed response. Is the position still open? I'd like to talk.*

He read it twice. He did not delete it.

He pressed send.

He turned off his desk lamp.

The hills east of the valley were visible through the window, the dry grass pale in the late light, the same hills that had been there for every previous version of this. They did not know about OpenAI's debt structure or the $207 billion funding shortfall or the two sentences about counterparty concentration risk that almost nobody had read. They did not care about Series A valuations or liquidation preferences or the particular arithmetic of a bet that had not paid off. They were simply there, as they had been for every collapse that had ever happened in the buildings below them, and would be there for whatever came next.

Outside the window, a moving truck was parked in front of the warehouse where the teal sign still hung. Someone was taking the sign down.

He watched them work it loose from the brackets. It came free in two pieces.

Around two that afternoon, Priya had arrived. She sat at her desk without speaking. She pulled up a documentation page — a different RFC, one he recognized as adjacent to the component work they had rebuilt together. She read it carefully, with a legal pad beside the keyboard. At a quarter past four, she said, quietly and mostly to herself: "Okay. I think I have it." She was still here now, working, head down. Her Cursor was open. Claude was responding.

He picked up his laptop bag and walked out.

He drove south on El Camino Real — past the Tesla dealership, past the shuttered restaurant that had been a startup office two years before it became a restaurant, past the building where Lumen Layer had been before nineteen people went home one evening and found the next morning that the locks had been changed. The Valley reoccupied its spaces. That was the one constant it offered. The buildings persisted. The next company would sign the lease and move in and the whiteboard would show the new product and someone would take a below-market salary in exchange for equity they believed in.

He parked in the Mountain View apartment building lot. He did not sit in the car. He went inside.

Maya was at her desk. He sat down across from her.

"I emailed Kevin back," he said. "The Denver job."

She looked at him. Her expression was not surprise. It was recognition — the face of someone who has been waiting for the other person to arrive at a conclusion she reached weeks ago.

"Good," she said.

He made coffee. He poured it slowly, counter-clockwise, and let it bloom. The apartment was quiet. The laptop was closed. Outside, the hills were still there.

It occurred to him that this might be one of the last times he made coffee in this kitchen. The thought was not dramatic. It was factual, the way the equity math was factual, the way the six months of runway was factual. He had been in the Valley for six years. He had watched three startups die — two at close range and one from inside, which was a different kind of watching. He had written good code and taken bad bets and told himself the story about how this time was different.

This time was not different. But this time, he was choosing to leave before the building was empty and the sign came down in two pieces.

He drank the coffee. It was good.

---

*fin.*


**This story is a work of fiction.** All characters, companies, organizations, events, and technologies depicted are entirely imaginary. Any resemblance to real persons, companies, or events is coincidental. The technical concepts discussed are dramatized for narrative purposes and do not represent a blueprint for any real-world exploit.

---

**About the creation of this story:**

This story was written by **Claude Sonnet 4.6**, an AI language model created by Anthropic, with creative direction and guidance from a human collaborator. Because, let's face it, what are LLM's good at? Making things up.

As a software developer, I spend my days writing code, not prose. I have ideas — sometimes big, strange, speculative ones — that I'd love to explore through fiction, but I don't have the creative writing skills or the time to develop them into polished narratives. AI changes that equation. It lets me act as a director — shaping the concept, the tone, the themes — while a capable (if non-human) collaborator does the actual wordsmithing. Think of it as guiding a student writer: I know what I want the story to say, and the AI helps me say it.


---

## License

© 2026 Mark Buckaway. Some rights reserved.

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

[View the story without copyright (for Medium import)](collapse_medium)
