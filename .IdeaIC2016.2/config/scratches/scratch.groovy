@UDMapDescription("Mapping for parties of contracts")
class Subject{
    UDMap map = new UDMap(
        new UDMapField('Контрагент.Наименование', 'SUBJECT.NAME') // Simple field mapping.
        ,new UDMapField(from: 'Контрагент.Адрес', to: 'SUBJECT.ADDRESS')
        ,new UDMapFieldToLookup(
            from: 'Контрагент.Тип'
            ,lookup: 'SUBJECT_TYPES'
            ,keyField: 'code'
        )
    )
}