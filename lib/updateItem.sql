UPDATE items
SET quantity = {{ quantityInput.value }}, price = {{ priceInput.value }}
WHERE id = {{ itemCollection.selectedItem.id }}