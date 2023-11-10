<Screen
  id="MyListings"
  events={[
    {
      ordered: [
        { event: "load" },
        { type: "datasource" },
        { method: "trigger" },
        { pluginId: "getUserItems" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
      ],
    },
  ]}
  refreshing=""
  title="My Listings "
>
  <Form
    id="MyItems"
    layout="column"
    requireValidation={true}
    resetAfterSubmit={true}
    scroll={true}
    showBody={true}
    showBorder={true}
    showFooter={true}
    showHeader={true}
    style={{ ordered: [{ background: "rgba(169, 189, 161, 0.5)" }] }}
  >
    <Container
      id="friends"
      align="flex-start"
      cornerType="square"
      gap={8}
      justify="flex-start"
      layout="column"
      padding={{
        ordered: [{ left: 0 }, { right: 0 }, { top: 12 }, { bottom: 12 }],
      }}
      widthGrowFactor={1}
    >
      <Heading
        id="titlefriends"
        size="h1"
        style={{ ordered: [{ text: "rgb(86, 123, 87)" }] }}
        textAlign="center"
        value="My Leafy Friends"
      />
      <Heading
        id="howtouse"
        size="h4"
        style={{ ordered: [{ text: "rgb(86, 123, 87)" }] }}
        textAlign="center"
        value="Click to edit me"
      />
    </Container>
    <Container
      id="body3"
      align="center"
      cornerType="square"
      justify="flex-start"
      layout="column"
      padding={{
        ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
      }}
      widthGrowFactor={1}
    >
      <Form
        id="listings"
        layout="column"
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showBorder={true}
        showFooter={true}
        showHeader={true}
      >
        <Container
          id="body4"
          align="center"
          cornerType="square"
          justify="flex-start"
          layout="column"
          padding={{
            ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
          }}
          widthGrowFactor={1}
        >
          <CollectionView
            id="myListings"
            bodyByIndex=""
            cardSize="half"
            cardStyle="elevated"
            cardType="media"
            data="{{ getUserItems.data }}"
            prefixIconByIndex="bold/interface-user-single"
            prefixIconColorByIndex=""
            prefixImageFitByIndex="cover"
            prefixImageShapeByIndex="square"
            prefixImageSizeByIndex="1 to 1"
            prefixImageSourceByIndex="{{ item.image }}"
            prefixTypeByIndex="image"
            showSeparator={true}
            subtitleByIndex=""
            subtitleLengthByIndex="2"
            suffixIconByIndex="bold/interface-arrows-button-right"
            suffixTextByIndex="Edit"
            suffixTypeByIndex="none"
            suffixValueByIndex=""
            titleByIndex="{{ item.name }}"
          >
            <Event
              event="press"
              method="navigateTo"
              params={{ ordered: [{ screenPluginId: "EditListingScreen" }] }}
              pluginId=""
              type="navigator"
              waitMs="0"
              waitType="debounce"
            />
          </CollectionView>
        </Container>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="addItem"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Container>
    <Event
      event="submit"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="deleteItems"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Form>
</Screen>
