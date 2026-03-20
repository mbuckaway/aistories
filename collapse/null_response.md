# Null Response

### *A developer watches the AI bubble burst, one error message at a time.*

### A Story by Claude & Mark Buckaway

---

## Part One: The Morning Ritual

The coffee was ready before his laptop was open.

That was the ritual: grind the beans while the kettle came to temperature, pour slowly in a counter-clockwise spiral over the grounds, let it bloom for thirty seconds, then pour the rest. Check the headlines on his phone propped against the coffee maker while it finished. Then sit down. The order mattered. He'd never articulated why, but disrupting it — opening the laptop too soon, checking Slack before the news — left a faint wrongness to the morning, a skip in the record that persisted until lunch.

Daniel Burke had been a developer long enough to know that the rituals were load-bearing. The work itself was resistant to routine: every problem was new, every architecture had its particular pathologies, and days that looked identical on a calendar were entirely different from the inside. The rituals were the thing you could control. So he controlled them.

He was thirty-four years old, a senior developer at Relic, and had been in Silicon Valley for six years — long enough to have watched two startups fail at close range, long enough to have developed the specific wariness of someone who had been burned without changing his behavior. The Valley had a gravity to it. You came for the work, stayed for the equity, and told yourself the story about how this time was different.

Relic actually solved a problem. That was one thing.

The company built developer tooling for API observability — dashboards and alerting systems that monitored third-party API health in real time, so that when the services your application depended on started failing, you knew about it before your users did. Twelve people in a converted Victorian house three blocks off University Avenue in Palo Alto. A standing-height kitchen counter they used for stand-ups, a whiteboard with the ghost of the previous product still visible under the current one, and four engineers including Daniel and Priya, who sat closest to the window.

He had joined when the team was five people. He had taken a below-market salary — thirty-two thousand below market, which he had calculated precisely and then tried not to think about — in exchange for a meaningful equity stake. The equity was currently worth something significant on paper, contingent on a Series A their CEO had been quietly preparing for a spring announcement. He tried not to think about it in concrete numbers, which was its own kind of thought.

He took his coffee to the desk.

OpenCode launched with his project context already loaded, a feature he had stopped noticing in the way you stop noticing that a light switch works. His current project was a medium-sized authentication refactor — the kind of work that required holding the full architecture in mind simultaneously, and that OpenCode was particularly good at, better than Daniel had ever been alone. He typed a half-formed question about the OAuth flow they were replacing. The answer arrived in two seconds: clean, precise, three paragraphs that addressed exactly what he'd meant rather than what he'd said.

He had not read technical documentation from scratch in eighteen months.

He told himself this was efficiency. This was what the tools were for.

On his phone, the CNBC anchor delivered the morning's market summary in her measured, unhurried register — earnings reports, a natural gas pipeline decision in Louisiana, the Fed's latest signal about rates. Background noise, professional and unremarkable. He had started keeping the stream running during the pour-over as an ambient way of staying current, the way people used to keep a newspaper on the counter. Most mornings it was texture rather than content.

On the third morning, there was a segment about AI investment trends: a bar chart showing capital deployed into AI companies over three years, a number with too many zeros to function as a number and not enough context to function as a warning. He watched it with the mild interest of a man whose daily tools were downstream of the sector, and returned to his code.

On the fifth morning, he worked from the Mountain View apartment — a two-bedroom on the second floor of a building whose bones still showed the motel it had been. Maya was at her desk by the time he got up, headphones on, the particular stillness of someone deep in research. She was a UX researcher, fully remote, and they had arrived at the equilibrium of two people who understood that proximity and silence were compatible.

He set up at the kitchen table and opened OpenCode. The authentication refactor loaded. He typed a question about session invalidation behavior in a distributed environment. The answer came back in 1.9 seconds.

On the seventh morning, between the kettle and the pour, a headline moved across his phone screen:

**OPENAI $100B ROUND ENCOUNTERING INVESTOR HESITATION — SOURCES**

It was the second item in a market wrap, below a piece about Treasury yields and above a segment on quarterly earnings from a consumer electronics company. He read the first sentence — *Several institutional investors have expressed concern over return timelines as OpenAI seeks to close its landmark financing round at a $730 billion valuation* — and scrolled past it.

He opened OpenCode. The response time was 1.7 seconds. He worked until noon.

---

## Part Two: First Tremors

The moving boxes appeared on a Tuesday.

Conduit AI occupied two floors of a converted warehouse two blocks east of the Relic office, identifiable from the street by the large teal sign above the entrance. Daniel had watched their team pitch at a demo day the previous autumn — a clean product, an articulate founding team, a business model that was essentially a well-designed interface built on top of someone else's AI inference API. The question of what happened to that business if the API underneath it changed its terms had come up once in Q&A and had been handled with the practiced confidence of people who had not deeply considered it.

Now the teal sign was still up and there were men carrying furniture down the stairs into a truck.

He watched from the Relic kitchen window while his pour-over finished. The boxes were generic brown, the kind that could mean anything — a sublease, an expansion, an ordinary company death. He found out from Slack before the morning was over: Conduit AI was shutting down. Their API had gone dark at midnight with 72 hours' notice to customers, a timeline they described in their public statement as "the most responsible given our circumstances." The developer channels filled with the usual mixture: sympathy for the team, professional calculation about blast radius, speculation about what came next.

Daniel pulled up Relic's observability dashboard as a matter of professional habit. The AI inference endpoints they monitored were healthy. His own OpenCode sessions were running at 210-millisecond average response time, 99.4% uptime over the trailing week. Whatever had happened at Conduit, it wasn't happening here. He was paying enough attention to know the difference.

But over the days that followed, he noticed the latency inching upward. Not dramatically — 210 milliseconds became 280, became 320, became 350 on a particularly slow Thursday afternoon. The kind of movement you could classify as noise if you were inclined to classify things as noise. He made a note in a personal Slack message to himself and did not act on it.

CNBC added a new segment. It ran in the evening, after markets closed: *The AI Funding Question*, fifteen minutes of rotating guests from Sand Hill Road and Wall Street, overlapping charts and the particular energy of financial television when it has identified a story it doesn't yet know how to calibrate. The anchor delivered each segment with her standard measured cadence — the same tone she used for housing data and Fed minutes. The subject was not equivalent to housing data, but her voice didn't acknowledge this, and the gap between the tone and the material had begun to produce a specific unease in Daniel, the way a very calm person describing an emergency can be more frightening than one who is visibly panicking.

The SEC released a four-paragraph advisory on AI-sector portfolio exposure. It was titled with institutional blandness and largely not read.

xAI went down for four hours on a Thursday. Grok users treated it as a weather event — briefly disruptive, quickly forgotten, posted about on X with a mixture of irritation and irony that did not outlast the afternoon.

A former colleague named Jen, now at a startup in Austin, sent a message:

*hey — for what it's worth, we've started building local fallbacks for every AI-assisted process we have. just in case. might be overcautious but wanted to say.*

Daniel looked at the message for a while. She was a careful engineer, the kind who wrote tests for edge cases she hadn't encountered yet and kept documentation current because she believed someone besides herself would need to read it eventually. He had always respected this.

*probably overkill,* he replied. *seems stable here.*

He did not start a fallback.

---

## Part Three: The Round Fails

The news came on a Wednesday morning while his second cup of coffee was still hot.

He had the CNBC feed running on his phone while he worked through a problem with how their authentication service was handling token expiration at the boundary between two session states. OpenCode had suggested an approach he wasn't fully convinced by; he was reading through the relevant specification to check it when the anchor's delivery shifted — a subtle change, the kind that happens when the next item wasn't in the morning briefing:

*Reuters is reporting this morning that a major sovereign wealth fund has withdrawn from OpenAI's financing round. According to sources familiar with the terms, the fund, which had been expected to anchor the $100 billion raise at a $730 billion valuation, cited concerns over the company's projected debt obligations. According to a leaked document first reported by The Information, OpenAI's cumulative cash consumption is projected at $115 billion through 2029. We'll have more as this develops.*

Daniel put his phone down.

He looked at the compile error in his IDE. He did not fix it.

By noon, two more institutional investors had withdrawn. Microsoft opened down six percent and closed down nine. NVIDIA dropped fourteen percent — its AI infrastructure exposure suddenly a liability on every analyst's model. Oracle dropped seventeen percent, its multi-billion-dollar data center commitments to OpenAI now headlined in every market report as an overhang. The word *liability* was doing considerable work across every segment he watched, the anchor delivering it with her standard composure while the charts behind her made their own less composed argument.

He was watching a CNBC livestream when his IDE returned this:

```
Error: 429 Too Many Requests
Retry-After: 60
x-ratelimit-limit: 100
x-ratelimit-remaining: 0
x-ratelimit-reset: 1742910622
```

He had not seen this before. He stared at it for a moment — the clinical integers, the Unix timestamp, the implication that he had used whatever he was allocated and would need to wait for the counter to reset. He took a screenshot and sent it to the Relic engineering Slack channel with the message: *well that's new (probably fine lol)*

Nobody laughed. One person sent the grimacing face. Another sent a link to a Reddit thread where every reply was a screenshot of the same error.

He fixed the compile error manually, by reading the specification and understanding the relevant section without assistance. It took eleven minutes. Eleven minutes for something that would have taken ninety seconds. He sat with this arithmetic for a moment and then let it go.

The CEO called an unscheduled stand-up at 3 PM. Two enterprise customers had reached out in the past 24 hours asking about Relic's AI dependency exposure — specifically, what would happen to Relic's product and pricing if AI inference APIs became unavailable or significantly more expensive. One was reviewing vendor contracts across their entire stack. Another had put their renewal on hold pending "a clearer picture of infrastructure risk in the sector."

The Series A, Jason said, had been in active conversation with two VC firms. Both conversations were paused. Not canceled. Paused. He said they would revisit in two weeks and asked if there were questions.

There were questions. They were the kind that didn't have answers yet.

That evening, Daniel opened a spreadsheet he hadn't updated in four months. His equity, calculated at the most recent internal valuation, times his ownership fraction, minus the liquidation preferences sitting ahead of him in the capital structure. He had run this math when he joined Relic and found it motivating. He ran it now and found it clarifying, which was not the same thing.

He closed the spreadsheet.

He opened the RFC he had been half-reading that afternoon. He read it from the beginning, slowly, taking notes on a legal pad he found in a desk drawer — the kind of notes he had stopped taking when OpenCode made it unnecessary to externalize his thinking. He wrote down things he had known once and re-learned now. He underlined a paragraph about token expiry edge cases that he had been handling incorrectly, not because OpenCode had told him the wrong thing, but because he had not understood it deeply enough to know when the suggestion didn't apply.

He did not finish until nearly midnight.

---

## Part Four: Degradation

The official language from OpenAI was "strategic restructuring discussions."

Daniel had been in the industry long enough to know what this meant. It meant acquisition talks that were not going well enough to announce. It was the language companies used when they needed to tell their employees and investors that something was happening without specifying that what was happening might not result in survival. It was, in the specific economy of corporate communication, the sentence you issued when silence had become worse than ambiguity.

Microsoft was the obvious acquirer and also, for regulatory reasons, the impossible one. Their twenty-seven percent equity stake — worth approximately $135 billion at the last internal valuation — meant any acquisition would trigger antitrust review lasting longer than OpenAI's available runway. Amazon was reported to be in conversations; then Amazon was reported to have gone quiet. The silence around Google was the kind of silence that meant nothing because all silences meant nothing during an event like this.

Free tier API access was suspended first, with 48 hours' notice. Then paid tier allocation was cut to a fraction of normal capacity, the specific fraction not disclosed, the practical effect immediately apparent to anyone relying on the tools. OpenCode now worked roughly half the time. When it responded, the responses had changed character — shorter, more clipped, sometimes truncating mid-sentence as if the system had started an answer and exhausted whatever it needed to complete it.

One afternoon he asked OpenCode to walk him through the session invalidation logic for a component he was refactoring. The response began:

*In a stateless authentication architecture, session invalidation needs to handle three distinct cases: explicit user logout, token expiry, and forced invalidation from the server side. For the first case, you'll want to*

Then nothing. Thirty seconds of a blinking cursor, followed by:

```
Error: 503 Service Temporarily Unavailable
Retry-After: 300
```

He looked at the screen for a moment.

Then he found his legal pad and went back to the RFC.

Priya Anand sat closest to the window in the Palo Alto office. She was twenty-eight, had trained at a coding bootcamp in San Jose, and had been writing code professionally for four years — her entire working life conducted with AI assistance present from the first week. She was faster than anyone else at the front-end dashboard, capable of holding the full component architecture in her head and moving through it with a precision that Daniel had always found impressive. She had come up with the tools. They had been infrastructure to her, the way electricity was infrastructure: you used it without thinking about it because thinking about it was not part of the job.

He found her one afternoon sitting very still at her desk, staring at a documentation page open beside a code editor. OpenCode had returned nothing useful for the third time in an hour. She was not panicking — she was not the kind of person who panicked visibly — but he could see the particular stillness of someone who has encountered the edge of what they know and is waiting for the ground to reappear.

"What are you stuck on?" he said.

"Component state management. I know how it works. I've done it. But I keep — I keep starting and not being sure whether I'm doing it right, and when I ask—" She gestured at the screen. "It either doesn't answer or it answers wrong and I can't tell the difference right now."

"Show me."

They worked through the documentation together. He read sections out loud, which slowed him down enough to catch the things he would otherwise have skimmed. She asked questions that required him to explain rather than assume, which forced him to be sure of what he knew and honest about what he didn't. By the end of an hour they had a working implementation, and he had re-learned three things he hadn't known he'd allowed himself to forget.

On the walk to his car that evening he thought about what it felt like to know something directly, without intermediary. It felt slower. Harder to begin. Less like reaching and more like excavating.

He was not sure what to do with this observation, so he set it aside.

That night he came home to the Mountain View apartment and found Maya at the dining table, her laptop open, the CNBC stream playing quietly from her phone. She had been watching more financial news lately — not because she worked in the sector but because she had noticed, before he had, that the shape of what was happening mattered beyond the technical details.

He poured a glass of water and sat across from her.

"How bad is it," she said. Not a question.

"Depends on how you measure."

"Measure it for me."

He thought about how to do that. "OpenAI spends approximately forty billion dollars a year to keep its infrastructure running. That's the floor — servers, compute, power, the API staying alive. Their revenue last year was around eleven billion. The gap between those two numbers exists because investors have been absorbing it, on the theory that revenue would eventually catch up. About ninety-five percent of their eight hundred million weekly users don't pay. Every free query costs them money. The theory is that scale justifies the cost. That theory is now under pressure."

Maya was quiet.

"Four million developers have products running on their API," he continued. "Not counting the tools built on top of those products, or the companies depending on those tools. If the inference layer goes dark, the cascade is—" He stopped. "Large."

She looked at him steadily.

"What happens to your shares if Relic can't raise?"

He looked back at her. The question was not unkind. It was the only question worth asking, which was why she had asked it instead of the easier ones.

"In a wind-down, they're worth whatever common shareholders receive after liquidation preferences," he said. "Which in a company that doesn't reach its Series A valuation is usually a number that rounds to zero."

She nodded once and looked back at her screen. He looked at the table.

He didn't sleep well. He lay in the dark and tried to remember what it had felt like before all of this — before the tools, before the equity, before the particular gravity of the Valley. Denver. A smaller job at a company that made industrial scheduling software and did not describe itself as changing anything. He had been good at that job. He had read documentation, had opinions about specification details, had come home at a reasonable hour and not carried the work with him. He had known what he knew.

He was not sure what to call the feeling that produced.

In Austin, a company called Lumen Layer shut down overnight. Nineteen employees. The notification arrived by email at 11 PM; the office was inaccessible by 8 AM. Their postmortem, posted to LinkedIn by the CEO the following morning, described a product that was "fundamentally sound" and a business that had become "untenable given infrastructure cost trajectories." No severance was mentioned. There was none to mention.

A Senate Commerce subcommittee convened emergency hearings the following Monday: *Critical Digital Infrastructure Resilience: Gaps in Federal Preparedness for AI Service Disruption.* A former Treasury official testified that no federal contingency plan existed for the failure of a major AI service provider, and that the developer ecosystem's concentration of dependency on a small number of companies represented a systemic risk that had not been adequately modeled by any regulatory body. This was reported, clipped, shared widely on LinkedIn for 48 hours, and then the news cycle moved.

Three VC firms posted updates noting a "pause on new commitments to AI infrastructure verticals pending market stabilization." The language was careful. The meaning was not.

Daniel opened OpenCode at the end of a long Wednesday and asked it for help thinking through error-handling logic for the session invalidation service. After fourteen seconds — four times the usual response time — the system returned two sentences and a partial code block before a 503 cut it off mid-bracket.

He looked at the half-formed code. He looked at his legal pad.

He finished the function himself. It took twenty-two minutes. When he tested it, it worked.

---

## Part Five: Null Response

He opened his IDE at 8:47 AM on a Tuesday.

The coffee was ready. His phone was propped against the maker, but he hadn't turned on the CNBC stream — he had stopped doing that in the mornings. It was a thing you stopped doing when the weather report became irrelevant because you were already in the storm.

OpenCode launched. The project context loaded: his files, the authentication refactor in progress, five weeks of accumulated context. At the bottom of the interface, the small animated spinner indicated that the system was reaching out to its inference backend.

The spinner turned.

He refreshed.

The spinner turned.

He opened the network console.

```
GET https://api.opencode.dev/v1/session/init
Status: 502 Bad Gateway
x-upstream-error: upstream service unreachable
x-request-id: req_01J9K7...
Response time: 30047ms (timeout)
```

He looked at the error. He had been watching error codes for five weeks and had learned to read them the way a pilot reads instrument gauges — quickly, without drama, with attention to what the specific failure was telling him. The 429 meant *wait*. The 503 meant *try again in a few minutes, the system is under load*. He had seen both dozens of times and had learned not to interpret them as anything more than they were.

A 502 was different. A 502 meant the system behind the system had stopped responding. It meant the infrastructure upstream of the API had gone quiet.

He picked up his phone.

The alert had already come through. Reuters first, then Bloomberg, then everywhere else. He read the Reuters headline twice to make sure he had understood it:

*OpenAI filed for Chapter 11 bankruptcy protection Tuesday in the U.S. Bankruptcy Court for the Southern District of New York. Amazon Web Services confirmed it suspended compute access to OpenAI infrastructure clusters at 3:15 AM EST over unpaid invoices exceeding $800 million. All API endpoints are currently unreachable. OpenAI's status page continues to show all services operational.*

He read the last sentence a second time.

The status page said everything was fine. The system that updated the status page had been among the last things to go.

He called Priya. She picked up after two rings and did not say anything for a moment.

"Yeah," she said.

"You saw."

"Yeah."

University Avenue was visible through the office window — the ordinary Tuesday morning of it, unchanged, a cyclist in the bike lane and a man with a dog waiting for the light and the same buildings that had been there for years. The Relic office was dark except for his desk lamp. He was the only one who had come in.

He set his phone face-down on the counter.

He thought about the Relic dashboard, which he could picture without opening it: every AI inference endpoint they monitored either flatlined or gone, error rate graphs pinned against the top of their range, the uptime indicators scrolling through shades of red. The dashboard was working correctly. It was reporting an accurate picture. It was doing exactly the thing Relic's product was supposed to do — showing you precisely what had broken in the infrastructure you depended on, so you knew before your users did.

He opened a browser tab.

Not the news. Not Slack. The RFC for the authentication protocol — the full specification, the dry and unglamorous one, the document written for engineers who needed precision rather than comfort. He had been reading it in sections for weeks; he had not read it end-to-end since before he'd started using OpenCode. He opened it at the beginning.

He read.

He read for forty minutes, with his coffee going cold beside the keyboard. He took notes. He re-read two sections he had not understood well enough the first time. He held the architecture of the refactor in his head without externalizing it — let it sit there, full and complicated, resisting simplification, requiring him to remain attentive in a way that the tools had gradually made unnecessary.

At 9:43 AM, a message arrived in the company Slack from their CEO:

*Team — as you know by now, OpenAI's API services are offline following their bankruptcy filing this morning. I know this is a difficult day. We're working through what it means for our customers and for Relic. The short version: our Series A conversations are suspended indefinitely. We have approximately six months of runway. I want to talk to everyone together before you hear more from outside — there will be an all-hands this Thursday at 10 AM. I'm available by phone today if anyone needs to talk before then. — Jason*

Daniel read the message. He did the arithmetic: six months meant early September. His final vesting tranche cliff was in month eleven. The liquidation preference structure meant that in any realistic wind-down or distressed acquisition below the Series A valuation, common shareholders received whatever was left after everyone else had been paid, which was generally close to nothing. He had known this math for four years. He had chosen, for four years, to believe it would not be the relevant math.

He closed Slack.

He opened his code editor.

He opened his legal pad.

He wrote code without assistance, which was its own kind of silence. Without OpenCode, without the particular convenience of half-forming a thought and having something complete it, he had to hold everything simultaneously — the architecture, the edge cases, the exact behaviors the RFC described for boundary conditions he was now deliberately handling rather than accidentally avoiding. He made notes when he was working through complexity. He re-read specification sections when he was not sure. He wrote a function, reviewed it, saw a flaw in how he had modeled the token expiry case, deleted it, and thought for several minutes before writing it again. The second version was correct.

Around two in the afternoon, Priya arrived. She sat at her desk without speaking. He didn't speak either. She pulled up a documentation page — a different RFC, one he recognized as adjacent to the component state management they had worked through together. She read it the way he was reading his: carefully, with a legal pad beside the keyboard.

At a quarter past four, she said, quietly and mostly to herself: "Okay. I think I have it."

He looked up.

She was tracing a line of text with her finger, her expression the particular one of someone who has re-found a thing they had known and lost track of. He recognized the expression because he had been making it all day.

He went back to his code.

At 6:47 PM, the authentication refactor was finished.

He ran the test suite. Forty-seven tests, all green. He ran integration tests. Green. He reviewed the diff: two hundred and twelve lines changed, one hundred and nine added, one hundred and three removed. Every change deliberate. Every decision accounted for. He committed it.

```
git commit -m "auth: complete session invalidation refactor

Implements token lifecycle management per RFC 6749 §4.1.3 and §6.
Handles explicit logout, expiry, and cross-device invalidation.
Closes #347."
```

He pushed. The build ran. The build passed.

He sat in the empty office and looked at the green indicator in the CI panel.

There was no satisfaction in it. There was no particular feeling at all — just the fact of the thing, finished, correct, committed. The tool that would have made it faster was gone. The company that might have translated this work into financial meaning was probably not going to survive long enough to translate it into anything. His equity — four years of below-market salary, four years of telling himself the bet was sound, crystallized into shares in a company that had needed one successful round to change his life — was almost certainly worth nothing.

He turned off his desk lamp.

The hills east of the valley were visible through the window, the dry grass pale in the late light, the same hills that had been there for every previous version of this. They did not know about OpenAI's debt structure or the Federal Reserve's stability report or the two sentences about counterparty concentration risk that almost nobody had read. They did not care about Series A valuations or liquidation preferences or the particular arithmetic of a bet that had not paid off. They were simply there, as they had been for every collapse that had ever happened in the buildings below them, and would be there for whatever came next.

Outside the window, a moving truck was parked in front of the warehouse where the teal sign still hung. Someone was taking the sign down.

He watched them work it loose from the brackets. It came free in two pieces.

He picked up his laptop bag and walked out.

Priya was still at her desk. She had her head down, working. She did not look up. He did not interrupt her.

He drove south on El Camino Real — past the Tesla dealership, past the shuttered restaurant that had been a startup office two years before it became a restaurant, past the building where Lumen Layer had been before nineteen people had gone home one evening and found the next morning that the locks had been changed. The Valley reoccupied its spaces. That was the one constant it offered. The buildings persisted. The next company would sign the lease and move in and the whiteboard would show the new product and someone would take a below-market salary in exchange for equity they believed in.

He parked in the Mountain View apartment building lot and sat in the car.

He did not know if Relic would survive the six months. He did not know if his job would be there in September, or whether the all-hands on Thursday would be the kind where Jason said the runway had stretched, or the kind where Jason said it had run out. He did not know whether the Series A materialized from somewhere none of them had thought of, or whether the twelve of them scattered the way everyone scattered eventually.

He knew the code was written. He knew he had written it himself, without assistance, and that it was correct. He knew the shape of the RFC now — not the approximate shape, not the shape you get from asking someone to summarize it for you, but the actual shape, the one you only get from sitting with the thing until it becomes familiar.

He did not know if this constituted anything. He was not sure what it would have constituted even in a world where everything else had gone differently.

He went inside.

Maya was at her desk. She looked up. He shook his head — meaning: *I know, I saw, I don't want to explain it again.* She nodded — meaning: *okay.*

He made coffee.

He poured it slowly, counter-clockwise, and let it bloom.

---

*fin.*
