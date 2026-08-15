import 'package:flutter_test/flutter_test.dart';
import 'package:media_picker/src/data/datasources/file_picker/file_picker_datasource_impl.dart';

/// file_picker 12 removed `PlatformFile.extension`, so the datasource derives
/// it from the file name. These are the cases that decide whether an uploaded
/// file gets a usable extension or the 'unknown' fallback.
void main() {
  String? ext(String name) => FilePickerDataSourceImpl.extensionOf(name);

  test('takes the last extension', () {
    expect(ext('photo.jpg'), 'jpg');
    expect(ext('archive.tar.gz'), 'gz');
    expect(ext('a.b.c.PNG'), 'PNG');
  });

  test('returns null when there is no usable extension', () {
    expect(ext('README'), isNull);
    expect(ext('trailing.'), isNull);
    expect(ext('.gitignore'), isNull);
    expect(ext(''), isNull);
  });
}
