kittenholder
===========

Uses placekitten.com website to generate placeholders which you can use on your website

## Installation:

In your Gemfile add:
`
gem 'kittenholder'
`

In bash console run:
`
bundle install
`


## Usage examples:

### In rails views:


1 Image width 200, height 300, black and white
```rb
<%= image_tag(kittenholder(200, 300, true)), alt: 'image' %>
```

-> HTML Output:
```html
<img src="https://placekitten.com/g/200/300", alt="image">
```

2. Image (width 500, height 600, color)
```rb
<%= image_tag(kittenholder(500, 600)), alt: 'image' %>
```

-> HTML Output:
```html
<img src="https://placekitten.com/500/600", alt="image">
```

3. Default image (width 100, height 100, color)
```rb
<%= image_tag(kittenholder), alt: 'image' %>
```

-> HTML Output:
```html
<img src="https://placekitten.com/100/100", alt="image">
```
