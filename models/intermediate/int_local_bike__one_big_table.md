{% docs int_local_bike__one_big_table %}
This model joins multiple staging tables from the `local_bike` source system to create a single, comprehensive table ("one big table") for each order.

It contains all the contextual data  related to an order, including:

- **Order information**: ID, status, date
- **Store**: ID, name, and city
- **Customer**: ID, name, contact details, and location
- **Product**: ID, name, model year, price, brand, and category
- **Order item**: quantity, unit price, discount, and total price
- **Staff**: staff involved in the transaction
- **Manager**: manager of the staff

This model is well-suited for exploratory analysis, dashboards, and general reporting use cases where a flattened dataset is more convenient than normalized structures.
{% enddocs %}
