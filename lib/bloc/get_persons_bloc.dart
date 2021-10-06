
import 'package:couchlock_flutter/model/person_response.dart';
import 'package:couchlock_flutter/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class PersonListBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<PersonResponse> _subject = BehaviorSubject<PersonResponse>();

  getMovies() async {
    PersonResponse response = await _repository.getPersons();
    _subject.sink.add(response);
  }

  dispose(){
    _subject.close();
  }

  BehaviorSubject<PersonResponse> get subject => _subject;

}

final personsBloc = PersonListBloc();