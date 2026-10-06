# Power BI DAX Measures

```DAX
Total Orders = DISTINCTCOUNT(sales_orders[order_id])

Net Revenue = SUM(sales_orders[net_sales])

Total Profit = SUM(sales_orders[profit])

Average Order Value = DIVIDE([Net Revenue], [Total Orders])

Profit Margin % = DIVIDE([Total Profit], [Net Revenue])

Total Units = SUM(sales_orders[quantity])

Average Discount % = AVERAGE(sales_orders[discount_pct])

Completed Orders =
CALCULATE([Total Orders], sales_orders[order_status] = "Completed")

Return Rate % =
DIVIDE(
    CALCULATE([Total Orders], sales_orders[order_status] = "Returned"),
    [Total Orders]
)

Cancelled Orders =
CALCULATE([Total Orders], sales_orders[order_status] = "Cancelled")

Revenue per Unit = DIVIDE([Net Revenue], [Total Units])
```

## Suggested model
Create a Calendar table and relate `Calendar[Date]` to `sales_orders[order_date]`.

```DAX
Calendar = CALENDAR(MIN(sales_orders[order_date]), MAX(sales_orders[order_date]))
Year = YEAR(Calendar[Date])
Month = FORMAT(Calendar[Date], "MMM")
Month Number = MONTH(Calendar[Date])
Quarter = "Q" & FORMAT(Calendar[Date], "Q")
```

## 4-page dashboard
1. **Executive Overview** — KPI cards, monthly revenue/profit line, category contribution donut, regional revenue map/bar, profit margin.
2. **Sales Drivers** — category ranking, city revenue/profit scatter, channel performance, segment value.
3. **Product & Pricing** — top products, discount-band vs profit, units vs revenue scatter, return/cancel mix.
4. **Action Plan** — opportunity matrix, bottom performers, quarterly trend, recommendations.

Use slicers for Date, Region, Category, Channel and Customer Segment.
