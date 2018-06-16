---
permalink: /dev/addons/namespaces/regex/
title: "Namespace: regex"
toc: true
---

The `regex` namespace contains functions that implement the C++11 (and higher) Regular Expression functionalities. These are added to enhance what regex can be done from within Lua as Lua's built-in regex features are limited.

You can access this namespace via:
```lua
ashita.regex.
```

Below are the functions available in this namespace.

---

### ashita.regex.match

Applies the given pattern to a message to find all matches. (std::regex_match)<br />
For more info, visit: [https://en.cppreference.com/w/cpp/regex/regex_match](https://en.cppreference.com/w/cpp/regex/regex_match)
```lua
function ashita.regex.match(msg, pattern);
```
**Parameters**
  * **msg** - _(string)_ The message to search for the pattern within.
  * **pattern** - _(string)_ The pattern to apply while matching.

**Returns**
  * **table\|nil** - A table of matches on success, nil otherwise.

---

### ashita.regex.search

Applies the given pattern to a message to find all matches. (std::regex_search)<br />
For more info, visit: [https://en.cppreference.com/w/cpp/regex/regex_search](https://en.cppreference.com/w/cpp/regex/regex_search)
```lua
function ashita.regex.search(msg, pattern);
```
**Parameters**
  * **msg** - _(string)_ The message to search for the pattern within.
  * **pattern** - _(string)_ The pattern to apply while matching.

**Returns**
  * **table\|nil** - A table of matches on success, nil otherwise.

---

### ashita.regex.replace

Replaces all matches within a string. (std::regex_replace)<br />
For more info, visit: [https://en.cppreference.com/w/cpp/regex/regex_replace](https://en.cppreference.com/w/cpp/regex/regex_replace)
```lua
function ashita.regex.replace(msg, pattern, replace);
```
**Parameters**
  * **msg** - _(string)_ The message to search for the pattern within.
  * **pattern** - _(string)_ The pattern to apply while matching.
  * **replace** - _(string)_ The replacement string to use.

**Returns**
  * **string\|nil** - The new replaced string on success, nil otherwise.

---

### ashita.regex.split

Splits a string via the given pattern. (std::sregex_token_iterator)<br />
For more info, visit: [https://en.cppreference.com/w/cpp/regex/regex_token_iterator](https://en.cppreference.com/w/cpp/regex/regex_token_iterator)
```lua
function ashita.regex.split(msg, pattern);
```
**Parameters**
  * **msg** - _(string)_ The message to search for the pattern within.
  * **pattern** - _(string)_ The pattern to apply while matching.

**Returns**
  * **table\|nil** - A table of the split parts on success, nil otherwise.

---
