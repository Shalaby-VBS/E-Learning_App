import 'package:quiz_flutter/models/comment.dart';
import 'package:quiz_flutter/models/course_lesson.dart';
import 'package:quiz_flutter/models/models.dart';

abstract class AppBase {
  /*--------------------------------- Product --------------------------------*/
  Future<List<Quiz>> getQuizByLimit(int limit);

  Future<QuizLesson> getLessonById(String lessonId);

  Future<Question> getQuestionById(String questionId);

  Future<List<Course>> getCourseByLimit(int limit);

  Future<CourseLesson> getCourseLessonById(String lessonId);

  Future<CourseVideo> getCourseVideoById(String lessonId);

  Future<List<Course>> getCourse();

  Future<Course> getCourseById(String limit);

  Future<void> setCommentCollection(
      {required String videoId, required String title});

  Future<List<String>> getCommentVideo(String videoId);

  Future<Comment> getCommentById(String commentId);

  Future<void> setContactUs(
      String fullName, String mail, String topic, String text);
}
