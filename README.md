# sql_business_exploration

## Eniac case
Eniac is an online marketplace specializing in Apple-compatible accessories.
It was founded ten years ago in Spain and has since grown and expanded to other neighboring countries.
Eniac is exploring an expansion to the Brazilian market.
Data shows that Brazil has an eCommerce revenue similar to that of Spain and Italy: an already huge market with an even bigger potential for growth.
The problem for Eniac is the lack of knowledge of such a market. The company doesn’t have ties with local providers, package delivery services, or customer service agencies. 
Creating these ties and knowing the market would take a lot of time, while the board of directors has demanded the expansion to happen within the next year.

## Magist
Here comes Magist. Magist is a Brazilian Software as a Service company that offers a centralized order management system to connect small and medium-sized stores with the biggest Brazilian marketplaces.
In addition, Magist provides after-sales services such as stock and warehouse management, product shipment, and customer service related to the shipment.
Magist is already a big player and allows small companies to benefit from its economies of scale:
it has signed advantageous contracts with the marketplaces and with the Post Office, thus reducing the cost of fees and, most importantly, the bureaucracy involved in getting things started.

## Question of collaboration
Eniac sells through its own e-commerce store in Europe, with its own site and direct providers for all the steps of the supply chain. 
In Brazil, however, Eniac is considering signing a 3-year contract with Magist as an intermediate step, while it tests the market, creates brand awareness,
and explores the option of setting up its own supply chain management.
The economic conditions of the deal are already being discussed. But not everyone in the company is happy moving on with this. There are two main concerns:

Eniac’s catalogue is 100% tech products and heavily based on Apple-compatible accessories. It is not clear that Magist is a good partner for these high-end tech products.
Among Eniac’s efforts to have happy customers, fast deliveries are key. The delivery fees resulting from Magist’s deal with the public Post Office might be cheap, but at what cost? 
Are deliveries fast enough?

## Data exploration and analys 
Exploring [schema](https://github.com/khovalla/sql_business_exploration/blob/main/magist_schema.pdf) of the database and understand how data goes from real customers purchasing products to the rows of these tables.
Answering the questions:
How many orders are there in the dataset?
Are orders actually delivered?
Is Magist having user growth?
Which are the categories with the most products?
How many of those products were present in actual transactions?
What are the highest and lowest payment values?
[Answers](https://github.com/khovalla/sql_business_exploration/blob/main/1.sql)

## Answering business questions
What categories of tech products does Magist have?
How many products of these tech categories have been sold (within the time window of the database snapshot)? What percentage does that represent from the overall number of products sold?
What’s the average price of the products being sold?
Are expensive tech products popular?
How many months of data are included in the magist database?
How many sellers are there? How many Tech sellers are there? What percentage of overall sellers are Tech sellers?
What is the total amount earned by all sellers? What is the total amount earned by all Tech sellers?
Can you work out the average monthly income of all sellers? Can you work out the average monthly income of Tech sellers?
What’s the average time between the order being placed and the product being delivered?
How many orders are delivered on time vs orders delivered with a delay?
Is there any pattern for delayed orders, e.g. big products being delayed more often?
[Answers](https://github.com/khovalla/sql_business_exploration/blob/main/2.sql)


## Conclusions
Presentation and exlanations: [Presentation] (https://github.com/khovalla/sql_business_exploration/blob/main/Magists%20presentation.pdf)
