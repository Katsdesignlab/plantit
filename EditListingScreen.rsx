<Screen
  id="EditListingScreen"
  events={[]}
  gap={8}
  headerLeftActions={[
    {
      ordered: [
        { type: "icon" },
        { value: "bold/interface-arrows-button-left" },
        {
          event: {
            ordered: [
              { event: "click" },
              { method: "navigateTo" },
              { pluginId: "" },
              { type: "navigator" },
              { waitMs: 0 },
              { waitType: "debounce" },
              { params: { ordered: [{ screenPluginId: "MyListings" }] } },
            ],
          },
        },
      ],
    },
  ]}
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
                    { title: "Liked " },
                    { description: "save product" },
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
  padding={{
    ordered: [{ left: 12 }, { right: 12 }, { top: 0 }, { bottom: 0 }],
  }}
  title="Edit Listing"
>
  <Container
    id="listItem1"
    align="flex-start"
    justify="flex-start"
    layout="row"
    padding={{
      ordered: [{ left: 64 }, { right: 64 }, { top: 0 }, { bottom: 0 }],
    }}
    style={{ ordered: [{ background: "rgb(169, 189, 161)" }] }}
    widthGrowFactor={1}
  >
    <Container
      id="container5"
      align="center"
      cornerType="square"
      gap={24}
      justify="flex-start"
      layout="row"
      padding={{
        ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
      }}
      widthGrowFactor={3}
    />
    <Container
      id="container6"
      align="center"
      cornerType="square"
      justify="center"
      layout="column"
      padding={{
        ordered: [{ left: 0 }, { right: 0 }, { top: 24 }, { bottom: 24 }],
      }}
      widthGrowFactor={5}
    >
      <Image
        id="image2"
        cornerType="square"
        ratio={1}
        src="{{ myListings.selectedItem.image }}
"
      />
    </Container>
  </Container>
  <Form
    id="editlisiting"
    layout="column"
    requireValidation={true}
    resetAfterSubmit={true}
    scroll={true}
    showBody={true}
    showBorder={true}
    showFooter={true}
    showHeader={true}
  >
    <Include src="./body6.rsx" />
    <Event
      event="submit"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="updateItem"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Form>
</Screen>
