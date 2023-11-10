<MobileApp>
  <Include src="./functions.rsx" />
  <TabScreen
    id="tabscreen"
    items={[
      {
        ordered: [
          { screen: "SearchScreen" },
          { detailScreen: "" },
          { title: null },
          { icon: null },
        ],
      },
      {
        ordered: [
          { screen: "SellScreen" },
          { detailScreen: "" },
          { title: null },
          { icon: "bold/shopping-business-handshake" },
        ],
      },
      {
        ordered: [
          { screen: "profileScreen" },
          { icon: "bold/interface-user-single" },
        ],
      },
    ]}
  />
  <Include src="./src/SearchScreen.rsx" />
  <Include src="./src/EditListingScreen.rsx" />
  <Include src="./src/SellScreen.rsx" />
  <Include src="./src/MyListings.rsx" />
  <Include src="./src/detailScreen.rsx" />
  <Include src="./src/profileScreen.rsx" />
  <Frame id="$main" sticky={false} type="main" />
</MobileApp>
