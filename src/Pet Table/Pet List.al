page 50108 PetList
{
    ApplicationArea = All; //this is for every field below
    Caption = 'Pet List';
    PageType = List;
    SourceTable = Pet;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(PetNo; Rec.PetNo)
                {
                }
                field(Name; Rec.Name)
                {
                }
                field(VetVendorNo; Rec.VetVendorNo)
                {
                }
                field(VetName; Rec.VetName)
                {
                }
            }
        }
    }
}
