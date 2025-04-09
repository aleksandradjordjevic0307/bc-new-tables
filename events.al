codeunit 50112 "Validate events"
{
    [EventSubscriber(ObjectType::Table, Database::"Pet", 'OnBeforeValidateEvent', 'Name', true, true)]
    //Pet is a table, and Name is a field which I validate
    local procedure MyProcedure(var Rec: Record Pet; var xRec: Record Pet; CurrFieldNo: Integer)
    begin
        Message('OnBeforeValidate Name Validation');
        Rec.Name := 'OnBeforeValidate Validated name';
    end;


    [EventSubscriber(ObjectType::Table, Database::"Pet", 'OnAfterValidateEvent', 'Name', true, true)]

    local procedure MyProcedure2(var Rec: Record Pet; var xRec: Record Pet; CurrFieldNo: Integer)
    begin
        Message('OnAfterValidateEvent Name Validation');
        Rec.Name := 'OnAfterValidateEvent Validated name';
    end;

    [EventSubscriber(ObjectType::Page, Page::"PetList", 'OnBeforeValidateEvent', 'Name', true, true)]
    local procedure MyProcedure3(var Rec: Record Pet; var xRec: Record Pet)
    begin
        Message('OnBeforeValidateEvent Page  Name Validation');
        Rec.Name := 'OnBeforeValidateEvent Page Validated name';
    end;

    [EventSubscriber(ObjectType::Page, Page::"PetList", 'OnAfterValidateEvent', 'Name', true, true)]
    local procedure MyProcedure4(var Rec: Record Pet; var xRec: Record Pet)
    begin
        Message('OnAfterValidateEvent Page  Name Validation');
        Rec.Name := 'OnAfterValidateEvent Page Validated name';
    end;
}