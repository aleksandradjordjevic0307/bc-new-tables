table 50107 Pet
{
    Caption = 'Pet';
    TableType = Normal;

    fields
    {
        field(1; PetNo; Code[20])
        {
            //properties of the field PetNo
            Caption = 'Pet No.';
            //NotBlank = true;

        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(3; VetVendorNo; Code[20])
        {
            Caption = 'Vet No.';
            TableRelation = Vendor."No.";
        }
        field(4; VetName; Text[100])
        {
            Caption = 'Vet Name';
            //this is not a normal field
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field(VetVendorNo)));
            Editable = false;
        }
    }

    keys
    {
        key(PK; PetNo)
        {

        }
    }

    trigger OnInsert()
    var
#pragma warning disable AL0432

        NoSeriesMgt: Codeunit NoSeriesManagement;
        NewNoSeriesCode: Code[20];
#pragma warning restore AL0432
    begin
        if Rec.PetNo = '' then
            NoSeriesMgt.InitSeries('PET', '', Today(), PetNo, NewNoSeriesCode);

    end;
}