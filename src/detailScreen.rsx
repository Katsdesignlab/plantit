<Screen
  id="detailScreen"
  headerRightActions={[
    {
      ordered: [
        { type: "icon" },
        { value: "bold/interface-favorite-heart-alternate" },
        {
          event: {
            ordered: [
              { event: "click" },
              { method: "open" },
              { pluginId: "" },
              { type: "alert" },
              { waitMs: 0 },
              { waitType: "debounce" },
              {
                params: {
                  ordered: [
                    { title: "Save " },
                    { description: "save me to favourites " },
                    {
                      actionItems: [
                        {
                          ordered: [
                            { label: "OK" },
                            {
                              event: {
                                ordered: [
                                  { event: "click" },
                                  { method: "trigger" },
                                  { pluginId: "" },
                                  { type: "datasource" },
                                  { waitMs: 0 },
                                  { waitType: "debounce" },
                                ],
                              },
                            },
                          ],
                        },
                        {
                          ordered: [
                            { label: "Cancel" },
                            {
                              event: {
                                ordered: [
                                  { event: "click" },
                                  { method: "trigger" },
                                  { pluginId: "" },
                                  { type: "datasource" },
                                  { waitMs: 0 },
                                  { waitType: "debounce" },
                                ],
                              },
                            },
                          ],
                        },
                      ],
                    },
                  ],
                },
              },
            ],
          },
        },
      ],
    },
  ]}
  title="Product Detail"
>
  <Image
    id="image1"
    ratio={1.3333333333333333}
    src="{{ itemCollection.selectedItem.image }}"
  />
  <Heading
    id="plantname"
    size="h1"
    style={{ ordered: [{ text: "rgb(221, 157, 124)" }] }}
    value="{{ itemCollection.selectedItem.name }}"
  />
  <Text
    id="plantdescription"
    markdown={true}
    size="medium"
    value="{{ itemCollection.selectedItem.description }}"
    weight="normal"
  />
  <Container
    id="pricebox"
    align="flex-start"
    cornerType="square"
    elevation="raised"
    gap={8}
    justify="flex-start"
    layout="row"
    padding={{
      ordered: [{ left: 0 }, { right: 0 }, { top: 8 }, { bottom: 8 }],
    }}
    style={{ ordered: [{ background: "rgba(169, 189, 161, 0.5)" }] }}
    widthGrowFactor={1}
  >
    <Container
      id="container7"
      align="center"
      cornerType="square"
      gap={8}
      justify="flex-start"
      layout="row"
      padding={{
        ordered: [{ left: 0 }, { right: 0 }, { top: 8 }, { bottom: 8 }],
      }}
      widthGrowFactor={3}
    >
      <Heading id="Titleprice" size="h4" textAlign="center" value="Price" />
    </Container>
    <Container
      id="container8"
      align="center"
      cornerType="square"
      justify="center"
      layout="column"
      padding={{
        ordered: [{ left: 48 }, { right: 48 }, { top: 12 }, { bottom: 12 }],
      }}
      widthGrowFactor={1}
    >
      <Text
        id="priceproduct"
        size="medium"
        textAlign="right"
        value="${{ itemCollection.selectedItem.price }}"
        weight="semibold"
      />
    </Container>
  </Container>
  <Button
    id="button6"
    iconAfter="bold/shopping-cart-1"
    size="large"
    style={{ ordered: [{ background: "rgb(169, 189, 161)" }] }}
    text="Add to cart "
  />
</Screen>
