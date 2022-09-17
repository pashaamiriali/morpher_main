# MORPHER

## How it works

In this section we will explore how the application works by going through the app's workflow from the very start to it's full features.
### Starting up for the first time 
#### Splash Screen
When the user opens the app he will face the following screen which is the splash screen:

<img src="https://user-images.githubusercontent.com/43525992/182077118-ecf9799b-62fa-4db4-be59-fb7256d16a8a.png" alt="Splash Screen" height="300"/>

  The way this is implemented is that we first exported the text (vertical morpher) from Adobe XD (4x) and putted it in the assets folder. Then using the flutter_native_splash package and its build command, we created teh splash screen. You can find the instructions here (Note that in small screens the splash screen will not show the complete image if it's too big) [flutter_native_splash Package Page](https://pub.dev/packages/flutter_native_splash)

#### Intro Screen

<img src="https://user-images.githubusercontent.com/43525992/182087481-ae702bf6-a86c-46ba-a2fe-af7ee5b92116.png" alt="Intro Screen" height="300">


When the app starts off for the first time, it goes to the intro screen and shows this page as an introduction (there are plans to improve it trust me! ;). 
The logical steps to show the intro screen on first app startup are taken in main file before the app renders anything. Using the FirstAppStartupUsecase which out of it's handle function returns a boolean value we determine whether to show the intro screen or the home screen. If the usecase returns true it will be intro. it happens where we define the initial route to the application. the code that finds it out will look like this: 
    
    Future<bool> findIfFirstStart() async {
      bool isFirstStart = true;
      var unfolded =
          await FirstAppStartUseCase(morpherRepo: injection.sl()).handle    (Null);
      unfolded.fold(
        (left) => {isFirstStart = true},
        (right) => isFirstStart = right,
      );
      return isFirstStart;
    }

and the code using the results: 

    initialRoute: isFirstStart?Routes.MORPHER_INTRO: Routes.

The intro page will also include these buttons that will be shown after the next button is pressed. for this to work the page is stateful.

<img src="https://user-images.githubusercontent.com/43525992/183733285-6145e09e-87cf-40cc-b219-2adf0a1ede89.png" alt="Intro Choose Start mode" height="300">

## Folder Structure 

<img src="https://user-images.githubusercontent.com/43525992/181011216-a07f77f9-34e1-49aa-8d95-610ea8a85d75.png" alt="Whiteboard" width="200"/>

