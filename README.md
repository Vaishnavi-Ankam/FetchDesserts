# Fetch Desserts App

Welcome to the Fetch Desserts App! This native iOS app is developed using Swift UI in Xcode, allowing users to browse and explore delicious recipes from the MealDB API. The app focuses on desserts, providing a seamless experience for users to discover, view details, and cook their favorite desserts.

## Features

- **Browse Desserts:** Utilizing the MealDB API, the app fetches a list of meals in the Dessert category, sorted alphabetically for easy navigation.

- **Detailed View:** Users can select a specific meal from the list to access a detailed view, which includes:
  - Meal name
  - Instructions
  - Ingredients with respective measurements

## API Endpoints

The app interacts with the following endpoints from the MealDB API:

- **Dessert List Endpoint:**
  - Endpoint: `https://themealdb.com/api/json/v1/1/filter.php?c=Dessert`
  - Purpose: Fetches the list of meals in the Dessert category.

- **Meal Details Endpoint:**
  - Endpoint: `https://themealdb.com/api/json/v1/1/lookup.php?i=MEAL_ID`
  - Purpose: Fetches detailed information about a specific meal based on its ID.

## Guidelines

Please keep the following guidelines in mind while working on this project:

- **Null/Empty Values:** Ensure that null or empty values from the API are filtered out before displaying them to the user.

- **UI/UX Design:** While UI/UX design is not the primary focus, the app should be user-friendly and follow basic app design principles.

- **Xcode Compatibility:** The project should compile seamlessly using the latest version of Xcode.

## Getting Started

Follow these steps to get the app up and running on your local machine:

1. Clone the repository to your local machine.
   ```bash
   git clone https://github.com/your-username/recipe-browser-app.git
   ```

2. Open the project in Xcode.

3. Build and run the project.

4. Explore and enjoy browsing delicious dessert recipes!

## Contributing

Feel free to contribute to the project by opening issues, submitting pull requests, or providing feedback. Your contributions are highly appreciated!
