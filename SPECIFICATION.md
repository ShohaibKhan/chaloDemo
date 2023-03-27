# SPECIFICATION

## The specification is available [here](https://chalo-assets.sgp1.cdn.digitaloceanspaces.com/assets%2Fspec%2F80434341-ae3f-404d-870c-dc3c24143466%252F1._lets_build_chalo.pdf).

## 1. Let’s Build Chalo

## Aim

I want to make Chalo where we can see waiting periods of various cars, so that

- [ ]  **potential buyers** can survey the waiting periods of various cars, their variants, across India by PIN codes
- [ ]  **dealerships** can access free-to-examine data on who’s looking for an active car purchase, and reach out to them

## What

- [ ]  I need a place to enter data as an **Administrator** of Chalo on
    - [ ]  cars and their variants
        - [x]  it looks we need a MVC instantiation of cars, and their variants
    - [ ]  waiting periods of each variant
        - [x]  it looks like we need a MVC instantiation of waiting periods, defined by the difference between created_at and waiting period from created_at as DateTime
    - [ ]  segmented across pin codes (depending on region segmentation, taluk and so on)
        - [ ]  it looks like we need to import all pin codes with the ability to understand groupings better to simplify addition of waiting period information
- [ ]  I need a place to view data as a **potential buyer**, on
    - [ ]  cars with the maximum waiting period (top 5)
        - [ ]  it looks like we need to show the user a ranked table on the home page
    - [ ]  cars with the minimum waiting periods (top 5)
        - [ ]  it looks like we need to show the user a ranked table on the home page
    - [ ]  car manufacturer **************brands************** with maximum and minimum waiting periods (top 5)
        - [ ]  it looks like we need to show the user a ranked table on the home page, with the average waiting period across a brand’s car variants being used as the indicator
    - [ ]  see any data about waiting period of any variant of any car for an **authenticated user who is a potential buyer**
        - [ ]  a search should trigger a sign-up / sign-in
        - [ ]  any hyperlink not in the above three namespaces should trigger a sign-up and sign-in
        - [ ]  it looks like search functionality is needed to find the right car variant’s waiting period
- [ ]  I need a place to register as a dealership and then contribute to the data as well as gain access to the **individual potential buyers,**
    - [ ]  where the dealership can register on an email address and a dealership flag that’s optional on the user account, which triggers a phone verification within 24 hours,
        - [ ]  it looks like a Dealer Verification flag is essential on an account
    - [ ]  the dealership can gain access to pseudonyms of the users, after verification (dapper-drake is looking for a car with waiting period <5 weeks )
        - [ ]  it looks like user accounts need a two word unique synonym as a username by default
    - [ ]  the dealership can spend credits to access users information for contact, the credits may not be purely financial but could be time-dependent access patterns for example
        - [ ]  it looks like dealer accounts are distinguished by their ability to see through anonymous users through credits usage.


## How

- [ x]  User Accounts
    - [ x]  We need to support a **User**, **Dealer** and **Administrator** as granular roles with increased roles and privileges.
    - [ x]  We need to support usernames for User Accounts
- [ ]  Data Capture
    - [ ]  We are capturing waiting period data at a variant and pin code level from **Administrator**
    - [ ]  We are capturing views on the site from authenticated users, and using it to come up with a machine learning model to identify **potential buyers** to surface in the feed.
- [ ]  Data Reveal
    - [ ]  We are showing the top 5 cars with maximum waiting period, top 5 cars with least waiting period, and top 5 manufacturer brands with highest waiting periods globally
    - [ ]  Individual pages contain more specific information and knobs for authenticated users.
    - [ ]  The feed reveals overall activity on the site **as a potential buyers representation**, which is present on the home page through a section of a segment, but is linked to it’s own page with all details
- [ x]  Walled Garden
    - [ ]  To fit the Data Capture and Data Reveal Requirements
- [ ]  Final pieces
    - [ ]  Search functionality to surface all relevant information
    - [ x]  Dealer Phone Verification
        - [ x]  Our team will verify the Dealer’s legitimacy over a phone call and activate the account via a toggle that’s visible to **Administrators**
    - [ ]  Dealer Credits
        - [ ]  Each dealer can access 100 credits per week for free, and more can be purchased from us wholesale. Depending on the intent-to-buy model, a **new potential buyer** can be worth 5-25 credits


## Learnings
