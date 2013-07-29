Scribble
========

A jekyll theme. [Want a demo? click and read instruction. :point_left:](http://scribble.muan.co/2013/05/06/scribble-the-jekyll-theme/)
<br />(I am currently working on a collection of themes, here's [a preview for one of them](http://themes.muan.co/personal/2013/05/19/sore-throat/). You know how to [stay](https://twitter.com/muanchiou) [posted](https://github.com/muan). :flushed: )

![screenshot](http://scribble.muan.co/images/screenshot.png)

There is no clever design philosophy to talk about, I tried to find something to work with, and 'scribble' came to my mind. 

This theme uses Open Sans powered by Google Web Fonts, and was written in plain HTML, SCSS & CoffeeScript, though .scss & .coffee files wouldn't be included in the theme. 

The theme is mobile optimised but I did not check browser compatibility. It looks great in Chrome, Safari and Firefox though.

---

### Get started

1. [Fork the repository](https://github.com/muan/scribble/fork).
2. Clone the repository to your computer.<br /> `git clone https://github.com/username/scribble`
3. `bundle install`
4. **Using older versions of Jekyll**<br />
  Build and run jekyll using `jekyll --server --auto`.<br />
  **Using [Jekyll 1.0](http://blog.parkermoore.de/2013/05/06/jekyll-1-dot-0-released/)**<br />
  Build Jekyll using `jekyll build`.<br />
  Then run Jekyll using `jekyll serve --watch`, go to http://localhost:4000 for your site.

---

### Make it yours

1. I have extract most user specific information to `_config.yml`, you should be able to set up almost everything from it.
2. Change about.md for blog intro.
3. For domain settings, see [the guide from GitHub](https://help.github.com/articles/setting-up-a-custom-domain-with-pages).

---

### Options

When writing a post, there are 3 options you can add to the header.

1. **disqus: y**<br />
  If disqus is set to 'y', at the end of the post there will be a disqus thread, just like this one. To use disqus, you MUST [set up your own disqus account](http://disqus.com/).

2. **share: y**<br />
  An option for showing tweet and like button under a post.

3. **date**: 2013-05-06 18:07:17<br />
  Date is not a required header since Jekyll reads the file name for date, this was added in only for the **signoff time**. (as shown at the end of this post) If you don't want the signoff time, go into `/includes/signoff.html` remove the `<span>`, and remove `{% include signoff.html %}` from `/layouts/post.html`.

---

### The end

Like it? [Tell me](http://twitter.com/muanchiou).<br/>
Question? [Use GitHub Issues](https://github.com/muan/scribble/issues).
