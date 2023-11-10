<Container
  id="body6"
  align="center"
  cornerType="square"
  justify="flex-start"
  layout="column"
  padding={{ ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }] }}
  widthGrowFactor={1}
>
  <TextArea
    id="plantName"
    formDataKey="name"
    label="Name"
    minLines="1"
    placeholder="{{ myListings.selectedItem.name }}"
    required={true}
    value="{{ myListings.selectedItem.name }}"
  />
  <TextArea
    id="plantDescription"
    formDataKey="description"
    label="Description"
    minLines="4"
    placeholder="{{ myListings.selectedItem.description }}"
    required={true}
    value="{{ myListings.selectedItem.description }}"
  />
  <TextArea
    id="ImageLink"
    formDataKey="image"
    label="Image Link"
    minLines="1"
    placeholder="{{ myListings.selectedItem.image }}"
    required={true}
    value="{{ myListings.selectedItem.image }}"
  />
  <NumberInput
    id="plantprice"
    formDataKey="price"
    label="Price NZD"
    placeholder="{{ myListings.selectedItem.price }}"
    required={true}
    stepSize={1}
    value="{{ myListings.selectedItem.price }}"
  />
  <Spacer id="spacer1" />
  <Spacer id="spacer2" />
  <NumberInput
    id="plantid"
    formDataKey="id"
    hidden="true"
    label="ID"
    placeholder="{{ myListings.selectedItem.id }}"
    required={true}
    stepSize={1}
    value="{{ myListings.selectedItem.id }}"
  />
  <TextArea
    id="profileemail"
    formDataKey="email"
    hidden="true"
    label="Email"
    minLines="1"
    placeholder="{{ myListings.selectedItem.email }}"
    required={true}
    value="{{ myListings.selectedItem.email }}"
  />
  <Container
    id="buttonbox"
    align="flex-start"
    cornerType="square"
    gap={8}
    justify="flex-start"
    layout="row"
    padding={{
      ordered: [{ left: 12 }, { right: 12 }, { top: 32 }, { bottom: 32 }],
    }}
    widthGrowFactor={1}
  >
    <Container
      id="container3"
      align="center"
      cornerType="square"
      gap={8}
      justify="flex-start"
      layout="row"
      padding={{
        ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
      }}
      widthGrowFactor={1}
    >
      <Button
        id="Delete"
        iconBefore="bold/interface-delete-bin-5"
        size="large"
        style={{ ordered: [{ background: "rgb(210, 76, 74)" }] }}
        submitTargetId=""
      >
        <Event
          event="click"
          method="open"
          params={{
            ordered: [
              { title: "Warning" },
              { description: "Are you sure you want to delete it?" },
              {
                actionItems: [
                  {
                    ordered: [
                      { label: "No" },
                      {
                        event: {
                          ordered: [
                            { event: "click" },
                            { method: null },
                            { pluginId: "" },
                            { type: "widget" },
                            { waitMs: 0 },
                            { waitType: "debounce" },
                            { params: { ordered: [] } },
                          ],
                        },
                      },
                    ],
                  },
                  {
                    ordered: [
                      { label: "Yes" },
                      {
                        event: {
                          ordered: [
                            { event: "click" },
                            { method: "trigger" },
                            { pluginId: "deleteItem" },
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
          }}
          pluginId=""
          type="alert"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </Container>
    <Container
      id="container4"
      align="center"
      cornerType="square"
      justify="flex-start"
      layout="column"
      padding={{
        ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
      }}
      widthGrowFactor={3}
    >
      <Button
        id="Edit"
        iconBefore="bold/interface-edit-write-1"
        size="large"
        submit={true}
        submitTargetId="editlisiting"
      />
    </Container>
  </Container>
</Container>
