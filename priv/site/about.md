---
layout: _includes/about_layout.slime
current: about
title: "About"
---
### Senior Full Stack Developer

> I am a full stack software developer with experience in generalist software development with a focus on soft real-time systems software and analytics in telecommunications and industrial control systems.  I'm passionate about system reliability and performance, and employ techniques such as functional programming, type-safety, automated testing, and observability to improve software quality.  I like bad puns and loud shirts.

## Skills

### Technology

- **Back-End / Systems**:  Elixir, Erlang, Java, Node.JS, Haskell
- **Front-End**: Javascript, CSS, HTML, TailwindCSS
- **Frameworks/Libraries:** Phoenix (incl. LiveView), React, JSP
- **Databases**: Postgres, MySQL, SQLite, Kafka
- **APIs:** ReST/JSON, gRPC, GraphQL
- **Architecture:** CQRS/ES, PubSub, CRUD, Microliths, Macroservices, Stranglers
- **Cloud:** AWS, Gigalixir, Linode, Netlify
- **Observability:** InfluxDB, Grafana, Syslog, Prometheus
- **OS:** MacOS, NixOS, Ubuntu, Windows (incl. WSL), Docker
- **Tools**: Git, GitHub, Jira, Bitbucket, Bamboo (Atlassian)
- **Misc:** Spacemacs, vim, emacs, tmux, LaTeX

## Work Experience

### Senior Developer

**Alembic**, September 2020 → Present

- Phoenix LiveView and CQRS/ES application development
- Elixir cluster deployment including distributed Mnesia data store
- Observability
- React/GraphQL/Phoenix/Postgres web applications

### Senior Software Engineer

**Telstra T-Live Network Performance Monitoring Platform**

**Telstra**, November 2018 → September 2020

- took an Elixir-based gRPC NMS telemetry collector from prototype to production, processing telemetry from 100s of devices at the edge of Telstra’s networks (NBN and enterprise) on a single node, ~10 telemetry messages per device per second into ~40 metric values per device per second
- co-developed a custom functional DSL (Domain-Specific Language) for telemetry message processing
    - dynamically-typed total language with immutable data types, closures, and strict evaluation
    - lexer and parser written using Erlang’s leex and yecc
    - tree-walking interpreter with property-tested BIFs, hot-code-loading runtime
    - used by network engineers to transform telemetry data from the gRPC edge devices above into useful metrics, aligning with Telstra’s push to develop self-service solutions
- co-led the development of a new meta-data service using Elixir and Postgres resulting in 2-3 orders of magnitude speed-up for queries from client systems; was an enabler for T-Live to increase its scalability of monitored devices by at least 400%
- designed an Elixir rewrite of an NMS metric aggregation service capable of processing in excess of 50k metrics per second on a handful of CPU cores, and mentored a junior engineer who implemented and deployed the service
- helped the team enhance its visualisation skills by mentoring engineers in combining Influx and MySQL timeseries- and meta-data in the development of Grafana dashboards

### Plant Information Management Systems Developer

**Yatala Brewery Process Control and Automation Engineering**

**Carlton&United Breweries (CUB)** September 2004 → October 2018

- development of key site information systems for production tracking and utilities & energy KPI reporting, including timeseries data logging and analytics pipeline in excess of 10 million raw points per day
- moved to more reliable and lower cost software development by introducing functional programming technology, including Haskell, own-built functional libraries in G2, and functional Javascript
    - Haskell used for offline data processing tasks (binary timeseries files and XML files) that automated cumbersome manual processes
    - Developed a functional library for G2 that provides higher-order functions for list traversals
- introduced several innovations to the software ecosystem including automated software data point configuration (leading to a reduction in manual configuration effort by 99%), advanced database design, data analysis and visualisation (SVG, D3.js, Grafana, and R) and web HTTP APIs
- co-authored several academic conference/journal papers on the information systems, energy management and control system activities at the brewery
- mentor to over 20 vacation work experience engineers, CEED students and graduate engineers in the physical engineering disciplines
- established strong collaborative relationships with engineers, technicians, technical brewers and managers
- recognised with a company-wide excellence award for engineering change management

## Links

- LinkedIn: [https://www.linkedin.com/in/robertellen/](https://www.linkedin.com/in/robertellen/)
- Twitter: [https://twitter.com/robertellen](https://twitter.com/robertellen)
- GitHub: [https://github.com/rellen](https://github.com/rellen)

## Talks

[Talks can be found here](talks)

## Education

### Bachelor of Engineering (Electronics) and Bachelor of Information Technology (Software Engineering)

**Queensland University of Technology (QUT), Brisbane**, 1999 → 2003
