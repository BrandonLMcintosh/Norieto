# Norieto

Norieto is a topology mapping software for simplistic yet effective topologies for IT environments of any scale / size

# Project Proposal: LegislatR

-    What goal will your website be designed to achieve?

     -    The goal of this website is to fill in the gaps of topology mapping that I've been lacking with many other free alternatives. L3 Switch port mapping with advanced labeling, zone, and DMZ partitioning. The aim is simple, readable port mapping software in an easy-to-navigate, clean design.

-    What kind of users will visit your site? In other words, what is the demographic of your users?

     -    Any network administrator or IT professional would be interested in this tool.

-    What data do you plan on using? You may not have picked your actual API yet, which is fine, just outline what kind of data you will like it to contain.

     -    This application won't utilize any external API's, but will have its own API functionality. All data will be represented as directed graphs in on the front-end using adjacency matrices and stored in the DB as a string representation of the directed graph structure.

-    In brief, outline your approach to creating your project (knowing that you may not know everything in advance and that these details might change later). Answer questions like the ones below, but feel free to add more information:

     -    What does your database schema look like?
          -    ![schema](https://i.imgur.com/Pqtz1kR.png)
          -    All nodes and node types will be stored front-end. The actual tree itself will be coded as a string and stored server-side under "projects" and re-coded when needed.
     -    What kinds of issues might you run into with your API?
          -    Difficulty exporting n-ary device trees efficiently
     -    Is there any sensitive information you need to secure?
          -    No
     -    What functionality will your app include?
          -    Association specification
               -    One-way, two-way
          -    association labeling
               -    Tag a link to a device efficiently with the port number and
          -    Bill tagging / following tags
               -    Allowing the user base to generate tags for each bill allowing an open-source categorization of all bills in circulation across all states.
               -    Allowing user to follow tags to see what bills come out in relation to each tag sorted by date (newest to oldest)
     -    What will the user flow look like?
          -    Register > Login > projects > new project -->
               -    project page contains:
                    -    Add / Delete / Edit / Associate devices
                    -    Save / export / import toplogies as either JSON (import or export) or PDF (export)
                    -    Add / remove collaborators
     -    What features make your site more than CRUD? Do you have any stretch goals?
          -    Exporting / Importing of useful visual topological data makes this more useful than just basic CRUD

-    API Routes as they stand thus far:

     -    API URL: https://lgsltr.herokuapp.com/

     -    Unauthenticated routes:
          -    `/user/register`
          -    `/user/login`
     -    Authenticated routes:
          -    `/user/delete-account/`
          -    `/project/create`
          -    `/project/[id]`
          -    `/project/[pid]/edit`
          -    `/project/[pid]/delete`
          -    `/project/[pid]/export`
          -    `/project/[pid]/share/[username]`
          -    `/project/[pid]/element/add/[type]`
          -    `/project/[pid]/element/[eid]/edit`
          -    `/project/[pid]/element/[eid]/delete`
          -    `/project/[pid]/element/[eid]/child/[cid]`
          -    `/project/[pid]/element/[eid]/parent/[pid]`
