local TableUtil = {}; do
    function TableUtil:SortTable(Table)
        local SortedTable = {}
        for _, Value in next, Table do
            table.insert(SortedTable, Value)
        end
        for Index = 1, #SortedTable do
            for Index2 = 1, #SortedTable do
                if SortedTable[Index] < SortedTable[Index2] then
                    local Temp = SortedTable[Index]
                    SortedTable[Index] = SortedTable[Index2]
                    SortedTable[Index2] = Temp
                end
            end
        end
        return SortedTable
    end
    function TableUtil:RemoveDuplicates(Table)
        local NewTable = {}
        for _, Value in next, Table do
            if not table.find(NewTable, Value) then
                table.insert(NewTable, Value)
            end
        end
        return NewTable
    end
end
return TableUtil
