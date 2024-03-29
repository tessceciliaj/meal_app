# Meal App


## Day one
### GridView & Categories

- **GridView Implementation:**
  - Utilized Flutter's **GridView()** to create a grid layout for displaying meal categories.
  - Configured the grid with a fixed cross-axis count, child aspect ratio, and spacing.
  - Populated the grid with placeholder Text widgets.

- **Category Model:**
  - Introduced a **Category** class with properties like id, title, and color.
  - Set default color using Color.fromARGB.
  - This model serves as the blueprint for individual meal categories.

- **Category Grid Item Widget:**
  - Developed a **CategoryGridItem** widget to represent each category in the grid.
  - Styled the widget with a gradient background based on the category color.
  - Displayed the category title with appropriate theming.

- **Dummy Data for Categories:**
  - Provided dummy data for various meal categories using the **availableCategories** list.

### Category Screen & Navigation

- **Category Screen Widget:**
  - Created the **CategoryScreen** widget responsible for displaying the category grid.
  - Utilized GridView to showcase available meal categories.

- **InkWell for Tap Interaction:**
  - Made categories interactive using **InkWell**, providing visual feedback on tapping.
  - Chose InkWell over GestureDetector for its splash effect.

- **Navigator & Screen Stack:**
  - Explained the use of Flutter's **Navigator** for screen navigation.
  - Highlighted the concept of the screen stack, where the user interacts with the top screen.
  
- **Example of Screen Transition:**
  - Demonstrated the use of **Navigator.push()** to navigate to different meal pages based on selected categories.
  - The example showed how to filter meals and push to a new screen using **MaterialPageRoute**.

## Day Two
### Alternative Navigation Pattern: Using Named Routes

- **Named Routes Approach:**
  - Discussed an alternative navigation approach using named routes.
  - Mentioned the assignment of names to routes for loading screens via those names.

- **Documentation Reference:**
  - Provided a link to the official Flutter documentation for using named routes.
  - Highlighted that while this approach exists, it is not recommended for most apps.

### Conclusion

Day One focused on creating a visually appealing category screen with interactive elements, including GridView, Category model, CategoryGridItem widget, dummy data, InkWell for tap interaction, and Navigator for screen navigation. The groundwork has been laid for further development, including the integration of real meal data and the creation of detailed meal pages.

Day Two introduced an alternative navigation pattern using named routes, with a reference to the official documentation. However, it was noted that this approach is not recommended for most apps, and the current implementation with `Navigator.push()` and `MaterialPageRoute` remains the recommended approach for the Meal App.
