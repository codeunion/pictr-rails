A multi-user photo upload site built in rails.

## Learning Objectives
As you work through this project, focus on:

1. Learning the major moving parts of a Rails application and how they fit
   together both as software and on your computers file system.
1. Writing the clearest code you can by [following the 4 rules of simple
   design](http://www.jbrains.ca/permalink/the-four-elements-of-simple-design).
2. Following [Github
   Flow](https://guides.github.com/introduction/flow/index.html).
3. Effectively testing your code at the feature and unit levels.
4. Documenting your code with
   [YARD](http://rubydoc.info/gems/yard/file/docs/GettingStarted.md).

## Examples

If you've worked through this project (in whole or in part) and want to have
your code listed, send a pull request!

* [CodeUnion's Devise, CarrierWave, and Rails
  Example](http://github.com/codeunion/example-rails-4-image-gallery/)

## Releases
Each release is made of individual features. For each feature, create a
[branch and pull
request](https://help.github.com/articles/using-pull-requests#initiating-the-pull-request).
When you submit the pull request, *make sure you [submit the pull request
against your
fork*](https://help.github.com/articles/using-pull-requests#changing-the-branch-range-and-destination-repository).
Github will default to submitting the pull request against the Codeunion master
repository.

Submit each pull request as a request for feedback. You may merge them into your
fork immediately; or wait for feedback.

Each feature should take between 30 minutes to 3 hours to complete.

### Release 1.0.0

- [ ] A guest may register as a `User` - [Rails
  Example](https://github.com/codeunion/example-rails-4-image-gallery/pull/1)
- [ ] A `User` may upload a `Image`
- [ ] A `User` may see a list of their `Image`s
- [ ] A guest may not find a `User`s `Image`
- [ ] A guest may view a `User`s `Image` if they are given a secret
  read-only link.

### Release 1.1.0

- [ ] A `User` may create a `Gallery`
- [ ] A `User` may add one of their `Image`s to a `Gallery`
- [ ] A guest may not find a `User`s `Gallery`
- [ ] A guest may view a `User`s `Gallery` if they are given a secret read-only
  link.

### Release 1.2.0

- [ ] A `User` may make a `Gallery` public
- [ ] A guest may browse public `Gallery`s

### Release 1.3.0

- [ ] A guest may suggest a `Tag` for a public `Image`
- [ ] A `User` may approve a `Tag` for a public `Image`
- [ ] A guest may browse public `Image`s by `Tag`

### Release 1.4.0

- [ ] A guest may search public `Gallery`s for `Image`s

## Definitions

1. "public", "find" and "browse" - Imply discovery through the applications user
   interface.
2. "secret read-only link" - A url that is revealed to the owner of a
   `Image` or `Gallery`. This may be distributed so that people other than
   the creator of a `Image` or `Gallery` may see them.
