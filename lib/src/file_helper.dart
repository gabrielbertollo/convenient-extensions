import 'package:mime/mime.dart';

extension FileHelper on String {
  /// This helper will check if the string is a valid file path and
  /// if it is an image file.
  bool isImage() => lookupMimeType(this)?.startsWith('image/') ?? false;

  /// This helper will check if the string is a valid file path and
  /// if it is a video file.
  bool isVideo() => lookupMimeType(this)?.startsWith('video/') ?? false;

  /// This helper will check if the string is a valid file path and
  /// if it is an audio file.
  bool isAudio() => lookupMimeType(this)?.startsWith('audio/') ?? false;

  /// This helper will check if the string is a valid file path and
  /// if it is a document file.
  /// Document files are files that are not images, videos or audio.
  bool isDocument() =>
      lookupMimeType(this)?.startsWith('application/') ?? false;

  /// This helper will check if the string is a valid file path and
  /// if it is a PDF file.
  bool isPdf() => lookupMimeType(this)?.startsWith('application/pdf') ?? false;
}