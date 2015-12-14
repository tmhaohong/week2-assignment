# Week 2 - *Coder Chat*

**Coder Chat** is a Ruby on Rails chat application.

Submitted by: **Hao Tran**

Time spent: **28** hours spent in total

URL: **http://shrouded-wave-3038.herokuapp.com/**

## User Stories

The following **required** functionality is complete:

* [x] User can sign up by providing their email, password, and name.
* [x] User can login using an email and password.
* [x] After logging in, the user is taken to a page that has a list of incoming messages, sorted in descending chronological order (newest messages at top), a “new message” link, an “add friends” link, and a “sent messages” link.
* [x] Unread messages should be bold or something similar in the list of messages.
* [x] Clicking the “add friends” link takes the user to a page with all users listed, with a link to “add user to friends list”.
* [x] Clicking on “new message” takes the user to a page where they can write a new mesasge. The recipient field should be a dropdown, where the options are names from the user’s friends.
* [ ] Clicking on “sent messages” takes the user to a page listing messages they have sent. Each message should display at what time it was read by the recipient, or “unread”. The user cannot read the contents of the messages.
* [x] User can read a message’s content only once. Once the message has been read, the user will see a page indicating the message has already been read.
* [x] User can only read messages where they are the recipient.

The following **optional** features are implemented:
* [x] User A can “block” User B. If User A blocks User B, they will not see messages from User B. User B will not know they have been blocked.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

[Video Walkthrough](http://i.imgur.com/9HCTGJk.gifv)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

- Still not validate input
- Don't know how to query mutil tables 
- Write the bad codes

## License

    Copyright [2015] [Hao Tran]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
