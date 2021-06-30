---
title: "robertellen.dev is live!"
date: 2021-07-01
layout: "_includes/post_layout.slime"
summary: " After a little bit of tinkering, I'm going live with robertellen.dev, a blog about technology and developer life."
tag:
  - post
---

Hello, World!!!

After a little bit of tinkering, I'm going live with robertellen.dev, a blog about technology and developer life.

## The tech
You can see in the footer of the page that I'm using [Still][stillstatic], a static-site generator (SSG) written in Elixir. 
This is an interesting choice, as SSGs aren't necessarily in Elixir's wheelhouse.
However, since Elixir is my current language of choice for my work at [Alembic][alembic] and side-projects, I thought it would be fitting to try to use it to make a static blog site.

Getting a basic site with no styles and practically no content up and running was initially quite easy.
I've taken a lot of cues from the [personal site][gabrielpoca] of Still's author, Gabriel Poça.
Borrowing from there, I was able to get a blog pipeline going that takes markdown files and produces templated HTML files.

Still is evolving rapidly and I've had to adapt the skeleton of my site in-place to keep up with the latest.
The most challenging upgrade was making the move to Snowpack so that working with the JS/npm world is made easier (ironic, no?).
But in all seriousness, the changes were worth it because it's made using [TailwindCSS][tailwindcss] more straight forward.

At the time of writing this post, the site is not styled well at all.
I hope to update it as I go, but for now, it's workable.
It's at a point where posts like this one can actually be published.

## The blog

Going forward, I intend to blog about tech and tech life.

I'm a software engineer with experience in full-stack web development, industrial control systems software, telecommunications, and other systems software.
As mentioned, Elixir is my main language at the moment, and I also work on Javascript or Typescript frontends (mostly using Next.js).
I'm a fan of the BEAM, functional programing, and real-time systems, and I'd really like to get back into hardware, embedded systems, and (I)IoT.
So, I expect I'll write about things like that.

I have also had a somewhat-unusual career path, and feel like its course took an interesting turn a few years ago.
For over a decade, I was working in a niche field of software engineering, in a situation that meant I wasn't able to use a lot of mainstream tech and development practices.
Then, out of the blue, I got an opportunity to join a team that was much closer to what's typical in most development shops.
That course change will also be good to write about, because I believe it gives me some insights into how to break into the industry as a newcomer.
The journey I am on may be of interest to some developers, either starting out at a later stage in life, or coming into mainstream software engineering from niche domains.
Without wanting to preempt my future writing on this, I think the main leason to learn is to, in whatever capacity you can, keep in touch with the mainstream without wasting time on the hype.

## The end of the beginning

Working with Still to get this blog going has been fun and rewarding.
I'm excited to write my first 'Hello, world!!!' post soon so that I can go legit.
See you there!


[stillstatic]: https://stillstatic.io/
[alembic]: https://alembic.com.au/
[gabrielpoca]: https://gabrielpoca.com/
[tailwindcss]: https://tailwindcss.com/
