# ***Taking those notes helped us focus and beetter understand main concepts.***

- [***Taking those notes helped us focus and beetter understand main concepts.***](#taking-those-notes-helped-us-focus-and-beetter-understand-main-concepts)
  - [Hyperlink](#hyperlink)
  - [Referencja](#referencja)
  - [Obrazek](#obrazek)
  - [Tabela](#tabela)
  - [**Authentication** - *uwierzytelnianie*](#authentication---uwierzytelnianie)
  - [**Authorization** - *upoważnienie/autoryzacja*](#authorization---upoważnienieautoryzacja)
  - [**OAuth 2**](#oauth-2)
    - [High-level interaction or interchange example use of OAuth 2 for authorization](#high-level-interaction-or-interchange-example-use-of-oauth-2-for-authorization)
  - [**OpenID Connect**](#openid-connect)
  - [**JSON Web Token (JWT)**](#json-web-token-jwt)
  - [**Authorization Servers**](#authorization-servers)
  - [**Websites**](#websites)

---

~~temp~~
> cytat

```java
// kod źródłowy
int i;
```

To jest `zmienna`, która przechowuje datę

Lista nienumerowana:

- lista
  - lista
    - lista

lista numerowana:

1. lista
1. lista
   1. lista
      1. lista

## Hyperlink

Kliknij [tu](www.google.com "Wyszukiwarka"), żeby otworzyć wyszukiwarkę

## Referencja

Kliknij [tu][1], żeby otworzyć wyszukiwarkę

[1]: www.google.com "Wyszukiwarka"

## Obrazek

![Logo](Media/logo.png)

## Tabela

Nagłówek 1|Nagłówek 2|Nagłówek 3
-|:-:|-:
Tekst 1|**Tekst 2**|*Tekst 3*

---

## **Authentication** - *uwierzytelnianie*

**Authentication** - the process of validating whether a user/app is who they claim to be:

- User name / password
- Token / pin
- Finger print / retina scan

## **Authorization** - *upoważnienie/autoryzacja*

**Authorization** - the process of determing the actions a user/app can perform. Commonly understood as roles:

- Guest user: minimal actions (read only)
- Authorized user: read/write data in user account
- Admin: full access to all accounts system wide

---

## **OAuth 2**

- Authorization framework that enables applications to have limited access to a resource on behalf of a resource owner (user)
  
> For example you may have had certain scenarios where you want it to share images from your Google Drive to another application and you may have used some of the links within the application the browser will prompt you says, ***Hey, this given app, and this example here, Dummy Uploader wants to view and manage files in your Google drive***, and you can give yes or no if you want to allow them to have permission to do that. So behind the scenes OAuth 2 has being used to provide this type of functionality.

### High-level interaction or interchange example use of OAuth 2 for authorization

1. **Client App** says: *Hey user can I access your Google Drive to do X, Y and Z*?
2. **Recource Owner** can grant authorization and then sends it out to the **Authorization Server**.
3. **Authorizaton Server** will provide an `Auth token`, to the **Client Application**.
4. The **Client App** will use that `Auth token` to also requests a `Access token` from **Authorization Server**. This `Access token` will actually have details as far as how they can access this given resource and also will have details as far as what they can do.
5. Then **Client App** will send over the `Access token` to the **Protected Resource**, and then they can go ahead and use the actual **Protected Resource**.

---

## **OpenID Connect**

- Identity layer on top of **OAuth 2** (OAuth 2 really only provide support for authorization, OpenID Connect will allow you to have authentication)
- Allows clients to receive "identity" infromation about authentiacated resource owners (users)
- Provide a special `ID token` that has information about the user, other details and anything elese that's been published via the authorizaton server

---

## **JSON Web Token (JWT)**

- Open standard that defines self-contained way of describing tokens
- Secure and digitally signed to guarantee integrity
- Used by OAuth and OpenId Connect

> This token is kind of the item that's passed back and forth, like in that previous example. OAuth tokens, access tokens, ID tokens they all make use of the standard way of describing the tokens using JSON Web Tokens.

JSON Web Token well define way of describing the format of a token:
1. **Header** - signing algorithm and type of token
2. **Payload** - contains content for user data
3. **Signature** - guarantee integrity of the token

---

## **Authorization Servers**

- Generate tokens and define security policies (not all Authorization Servers are created equal, some offer more features than others).
- **Simple Solutions**
  - Create your own simple solution with code
  - A lot of low-level coding and vulnerable to security holes
> You can do the very basic, hobby project, weekend project with Auth Server but for anything real time, you need a more enterprise solution.
- **Real-time Enterprise Solutions**
  - Off-the-shelf (*z półki*) solutions from companies specializing in security
  - Cloud-based solutions and on-premise (*lokalne*) solutions

---

## **Websites**

[OAuth 2](www.oauth.net)

[OpenID Connect](www.openid.net/connect)

[JWT](www.jwt.io)

---

