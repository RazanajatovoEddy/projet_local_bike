{% docs mrt_local_bike__one_big_table %}
This model consolidates multiple  source tables from the `local_bike` dataset into a single wide table.  
It provides a unified view of all data related to an order, including:

- **Order details** (ID, status, date)
- The **customer** who placed the order
- The **store** where the order was made
- The **products** in the order (with price, brand, and category)
- The **staff** member involved in the sale
- The **manager** supervising the staff member

This model is ideal for exploratory analysis, dashboards, or customer/store-level reporting.
{% enddocs %}
