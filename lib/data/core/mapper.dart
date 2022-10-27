///
/// Map raw data model from data layer to entity of domain layer
///
abstract class Mapper<D, E> {
  E mapDtoToEntity(D data);

  List<E> mapDtoListToEntityList(List<D> dataList) {
    return dataList.map((dto) => mapDtoToEntity(dto)).toList();
  }
}
