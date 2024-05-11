import 'dart:io';

class AddStoryModel{

  AddStoryModel(
      this.imageFile,
      this.imageFileResult,
      this.userId,
      this.text,
      this.question1,
      this.question2,
      this.question3,
      this.question4,
      this.trueQuestion,
      this.stepStory,
      this.statusId);

  final File imageFile;
  final File imageFileResult;
  final String userId;
  final String text;
  final String question1;
  final String question2;
  final String question3;
  final String question4;
  final int trueQuestion;
  //if stepStory is 1 its mean we have one story and if its 2 we have double story
  final int stepStory;
  //if statusId is 1 show and if statusId 2 is hide
  final String statusId;

}