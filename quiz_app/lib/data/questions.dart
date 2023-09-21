import 'package:quizapp/models/quiz_question.dart';


const questions = [
  Question(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),

  Question(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),

  Question(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),

  Question(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),

  Question(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),

  Question(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  Question(
    'What is Flutter and what is its main purpose?',
    [
      'Flutter is an open-source UI framework by Google for building natively compiled applications for mobile, web, and desktop from a single codebase.',
      'Flutter is a programming language used for building mobile apps.',
      'Flutter is a database management system.',
      'Flutter is a design tool for creating user interfaces.',
    ],
  ),
  Question(
    'What is a Widget in Flutter?',
    [
      'A Widget is a basic building block for the user interface in Flutter.',
      'A Widget is a type of snack in Flutter.',
      'A Widget is a navigation tool in Flutter.',
      'A Widget is a state management solution in Flutter.',
    ],
  ),

  Question(
    'Explain the difference between StatelessWidget and StatefulWidget.',
    [
      'StatelessWidget is used for UI elements that do not change their state over time, while StatefulWidget is used for UI elements that can change and be updated.',
      'StatelessWidget can only be used in Android apps, while StatefulWidget is for iOS apps.',
      'StatelessWidget is more efficient than StatefulWidget.',
      'StatefulWidget is used for UI elements that do not change their state over time.',
    ],
  ),

  Question(
    'What is the purpose of the "setState" method in Flutter?',
    [
      'The "setState" method is used to update the state of a StatefulWidget and trigger a rebuild of the widget.',
      'The "setState" method is used to change the color of a widget.',
      'The "setState" method is used to navigate to a different screen in Flutter.',
      'The "setState" method is used to define the layout of a widget.',
    ],
  ),

  Question(
    'Explain the concept of Hot Reload in Flutter.',
    [
      'Hot Reload is a feature in Flutter that allows developers to instantly see the changes they make in the code reflected in the app without restarting it.',
      'Hot Reload is a way to optimize app performance in Flutter.',
      'Hot Reload is used to update the Flutter SDK.',
      'Hot Reload is a tool for debugging Flutter apps.',
    ],
  ),
];
