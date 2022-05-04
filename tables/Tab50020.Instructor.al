Table 50020 "Instructor"
{
    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Worker/Subcontractor"; Option)
        {
            Caption = 'Worker/Subcontractor';
            OptionMembers = "Worker","Subcontractor";
            OptionCaption = 'Worker, Subcontractor';

        }
        field(4; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = if ("Worker/Subcontractor" = const(Worker)) Resource where(Type = const(Person));

        }
        field(5; "Vendor No."; Code[20])
        {

            Caption = 'Vendor No.';
            TableRelation = if ("Worker/Subcontractor" = const(Subcontractor)) Vendor;


        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }
}
