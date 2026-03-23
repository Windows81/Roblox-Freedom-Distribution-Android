.class public Lcom/roblox/client/signup/a;
.super Lcom/roblox/client/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/a$b;,
        Lcom/roblox/client/signup/a$a;,
        Lcom/roblox/client/signup/a$c;,
        Lcom/roblox/client/signup/a$f;,
        Lcom/roblox/client/signup/a$d;,
        Lcom/roblox/client/signup/a$h;,
        Lcom/roblox/client/signup/a$e;,
        Lcom/roblox/client/signup/a$g;
    }
.end annotation


# static fields
.field private static aZ:Lcom/roblox/client/signup/a$b;


# instance fields
.field private aA:Landroid/widget/EditText;

.field private aB:Lcom/roblox/client/components/RbxProgressButton;

.field private aC:Landroid/widget/TextView;

.field private aD:Lcom/roblox/client/components/RbxButton;

.field private aE:Lcom/roblox/client/components/RbxTextView;

.field private aF:Lcom/roblox/client/components/RbxTextView;

.field private aG:Lcom/roblox/client/signup/e;

.field private aH:Lcom/roblox/client/s/f;

.field private aI:Lcom/roblox/abtesting/a;

.field private aJ:Ljava/lang/String;

.field private aK:Ljava/lang/String;

.field private aL:Ljava/lang/String;

.field private aM:I

.field private aN:I

.field private aO:I

.field private aP:I

.field private aQ:Z

.field private aR:Lcom/roblox/client/signup/a$e;

.field private aS:Lcom/roblox/client/signup/a$e;

.field private aT:Lcom/roblox/client/signup/a$e;

.field private aU:Lcom/roblox/client/signup/a$e;

.field private aV:Lcom/roblox/client/signup/a$e;

.field private aW:Z

.field private aX:Landroid/view/View;

.field private aY:J

.field as:Landroid/widget/EditText;

.field at:Lcom/roblox/client/components/RbxEditText;

.field au:Lcom/roblox/client/components/RbxLoadingEditText;

.field av:Lcom/roblox/client/components/RbxGenderPicker;

.field aw:Lcom/roblox/client/components/RbxBirthdayPicker;

.field ax:Lcom/roblox/client/signup/a$b;

.field private ay:Lcom/roblox/client/components/RbxButton;

.field private az:Lcom/roblox/client/signup/UsernameSignUpEditText;

.field private final ba:I

.field private final bb:I

.field private bc:Lcom/roblox/client/signup/a$f;

.field private bd:Lcom/roblox/client/signup/a$a;

.field private be:Ljava/lang/String;

.field private bf:Ljava/lang/String;

.field private bg:Ljava/lang/String;

.field private bh:Ljava/lang/String;

.field private bi:Ljava/lang/String;

.field private bj:Lcom/roblox/client/signup/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Lcom/roblox/client/signup/a$1;

    invoke-direct {v0}, Lcom/roblox/client/signup/a$1;-><init>()V

    sput-object v0, Lcom/roblox/client/signup/a;->aZ:Lcom/roblox/client/signup/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/roblox/client/signup/a;->ay:Lcom/roblox/client/components/RbxButton;

    .line 84
    iput-object v0, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    .line 85
    iput-object v0, p0, Lcom/roblox/client/signup/a;->aA:Landroid/widget/EditText;

    .line 86
    iput-object v0, p0, Lcom/roblox/client/signup/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    .line 87
    iput-object v0, p0, Lcom/roblox/client/signup/a;->aC:Landroid/widget/TextView;

    .line 88
    iput-object v0, p0, Lcom/roblox/client/signup/a;->aD:Lcom/roblox/client/components/RbxButton;

    .line 92
    iput-object v0, p0, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    .line 94
    iput-object v0, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    .line 95
    iput-object v0, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    .line 96
    iput-object v0, p0, Lcom/roblox/client/signup/a;->av:Lcom/roblox/client/components/RbxGenderPicker;

    .line 97
    iput-object v0, p0, Lcom/roblox/client/signup/a;->aw:Lcom/roblox/client/components/RbxBirthdayPicker;

    .line 105
    iput-object v0, p0, Lcom/roblox/client/signup/a;->aJ:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/roblox/client/signup/a;->aK:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/roblox/client/signup/a;->aL:Ljava/lang/String;

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lcom/roblox/client/signup/a;->aM:I

    .line 110
    iput v1, p0, Lcom/roblox/client/signup/a;->aN:I

    .line 111
    iput v1, p0, Lcom/roblox/client/signup/a;->aO:I

    const/4 v1, 0x0

    .line 113
    iput v1, p0, Lcom/roblox/client/signup/a;->aP:I

    .line 114
    iput-boolean v1, p0, Lcom/roblox/client/signup/a;->aQ:Z

    .line 116
    sget-object v1, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$e;

    iput-object v1, p0, Lcom/roblox/client/signup/a;->aR:Lcom/roblox/client/signup/a$e;

    .line 117
    sget-object v1, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$e;

    iput-object v1, p0, Lcom/roblox/client/signup/a;->aS:Lcom/roblox/client/signup/a$e;

    .line 118
    sget-object v1, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    iput-object v1, p0, Lcom/roblox/client/signup/a;->aT:Lcom/roblox/client/signup/a$e;

    .line 119
    sget-object v1, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    iput-object v1, p0, Lcom/roblox/client/signup/a;->aU:Lcom/roblox/client/signup/a$e;

    .line 120
    sget-object v1, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$e;

    iput-object v1, p0, Lcom/roblox/client/signup/a;->aV:Lcom/roblox/client/signup/a$e;

    .line 129
    iput-object v0, p0, Lcom/roblox/client/signup/a;->aX:Landroid/view/View;

    .line 138
    sget-object v1, Lcom/roblox/client/signup/a;->aZ:Lcom/roblox/client/signup/a$b;

    iput-object v1, p0, Lcom/roblox/client/signup/a;->ax:Lcom/roblox/client/signup/a$b;

    const/16 v1, 0x1f4

    .line 164
    iput v1, p0, Lcom/roblox/client/signup/a;->ba:I

    const/16 v1, 0x7d0

    .line 168
    iput v1, p0, Lcom/roblox/client/signup/a;->bb:I

    .line 1179
    new-instance v1, Lcom/roblox/client/signup/a$c;

    invoke-direct {v1, p0, v0}, Lcom/roblox/client/signup/a$c;-><init>(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$1;)V

    iput-object v1, p0, Lcom/roblox/client/signup/a;->bj:Lcom/roblox/client/signup/d$a;

    return-void
.end method

.method static synthetic A(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->bf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic B(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->be:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic C(Lcom/roblox/client/signup/a;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->aD()V

    return-void
.end method

.method static synthetic D(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->bg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic E(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->bh:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->bi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic G(Lcom/roblox/client/signup/a;)J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/roblox/client/signup/a;->aY:J

    return-wide v0
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/roblox/client/signup/a;->aO:I

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;J)J
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/roblox/client/signup/a;->aY:J

    return-wide p1
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;)Landroid/widget/EditText;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->aA:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$e;)Lcom/roblox/client/signup/a$e;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/roblox/client/signup/a;->aR:Lcom/roblox/client/signup/a$e;

    return-object p1
.end method

.method private a(III)V
    .locals 1

    .line 633
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object v0

    .line 634
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/signup/a;->b(III)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_EmailRequirementsUnder13:I

    new-array p2, p2, [Ljava/lang/Object;

    .line 635
    invoke-static {v0, p1, p2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Email:I

    new-array p2, p2, [Ljava/lang/Object;

    .line 636
    invoke-static {v0, p1, p2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 637
    :goto_0
    iget-object p2, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {p2, p1}, Lcom/roblox/client/components/RbxLoadingEditText;->setHintText(Ljava/lang/String;)V

    .line 638
    iget-object p1, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxLoadingEditText;->c()V

    return-void
.end method

.method private a(Lcom/roblox/client/components/RbxEditText;I)V
    .locals 0

    .line 617
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->b(I)V

    return-void
.end method

.method private a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 621
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/roblox/client/signup/a$g;)V
    .locals 10

    .line 764
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->r()Landroidx/fragment/app/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->ar()V

    .line 772
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object v1

    .line 774
    sget-object v2, Lcom/roblox/client/signup/a$18;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/signup/a$g;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "TooShort"

    const-string v4, "Empty"

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "username"

    const-string v9, "password"

    if-eq v2, v6, :cond_6

    const/4 v8, 0x2

    if-eq v2, v8, :cond_1

    move-object v3, v5

    goto/16 :goto_5

    .line 818
    :cond_1
    sget-object v2, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    iput-object v2, p0, Lcom/roblox/client/signup/a;->aS:Lcom/roblox/client/signup/a$e;

    .line 820
    invoke-static {v0}, Lcom/roblox/client/x;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 821
    iget-object p1, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_ConnectionError:I

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    goto :goto_0

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 825
    iget-object p1, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_PasswordMinLength:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->c(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_1

    .line 827
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/signup/a;->aK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 828
    iget-object p1, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordMatchesUsername:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const-string v3, "IsUsername"

    goto :goto_1

    .line 830
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_5

    .line 831
    iget-object p1, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpPasswordTooShortError:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_1

    .line 834
    :cond_5
    new-instance v0, Lcom/roblox/client/signup/a$f;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/signup/a$f;-><init>(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$g;)V

    new-array p1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/roblox/client/signup/a$f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    move-object v3, v5

    :goto_1
    move-object v5, v9

    goto/16 :goto_5

    .line 776
    :cond_6
    sget-object v2, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    iput-object v2, p0, Lcom/roblox/client/signup/a;->aR:Lcom/roblox/client/signup/a$e;

    .line 778
    invoke-static {v0}, Lcom/roblox/client/x;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 779
    iget-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_ConnectionError:I

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    move-object v3, v5

    :cond_7
    :goto_2
    move-object v5, v8

    goto/16 :goto_5

    .line 782
    :cond_8
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 783
    iget-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_UsernameHint:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->c(Ljava/lang/String;)V

    move-object v3, v4

    goto/16 :goto_4

    .line 785
    :cond_9
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_a

    .line 786
    iget-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidLength:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 788
    :cond_a
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_b

    .line 789
    iget-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidLength:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const-string v3, "TooLong"

    goto/16 :goto_4

    :cond_b
    const-string v0, "([A-Z]|[a-z]|[0-9]|_)*"

    .line 791
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v2, p0, Lcom/roblox/client/signup/a;->aJ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_c

    .line 792
    iget-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidCharacters:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const-string v3, "InvalidCharacters"

    goto/16 :goto_4

    .line 794
    :cond_c
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aJ:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_11

    iget-object v0, p0, Lcom/roblox/client/signup/a;->aJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_d

    goto :goto_3

    .line 797
    :cond_d
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aJ:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/roblox/client/ae/t;->a(Ljava/lang/String;C)I

    move-result v0

    if-le v0, v6, :cond_e

    .line 798
    iget-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameTooManyUnderscores:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const-string v3, "InvalidUsernameDoubleUnderscore"

    goto :goto_4

    .line 800
    :cond_e
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->az()Z

    move-result v0

    if-nez v0, :cond_f

    .line 801
    iget-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_BirthdayMustBeSetFirst:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const-string v3, "BirthdayNotSet"

    goto :goto_4

    .line 804
    :cond_f
    iget-object v0, p0, Lcom/roblox/client/signup/a;->bc:Lcom/roblox/client/signup/a$f;

    if-eqz v0, :cond_10

    .line 805
    invoke-virtual {v0, v6}, Lcom/roblox/client/signup/a$f;->cancel(Z)Z

    .line 807
    :cond_10
    new-instance v0, Lcom/roblox/client/signup/a$f;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/signup/a$f;-><init>(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$g;)V

    iput-object v0, p0, Lcom/roblox/client/signup/a;->bc:Lcom/roblox/client/signup/a$f;

    new-array p1, v7, [Ljava/lang/Void;

    .line 808
    invoke-virtual {v0, p1}, Lcom/roblox/client/signup/a$f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 809
    iget-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->f()V

    move-object v3, v5

    goto :goto_4

    .line 795
    :cond_11
    :goto_3
    iget-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const-string v3, "InvalidFirstOrLastCharacter"

    .line 812
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 813
    iget-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->k()V

    goto/16 :goto_2

    .line 840
    :goto_5
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->ax()Z

    .line 841
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    const-string p1, "signup"

    .line 842
    invoke-static {p1, v5, v3, v6}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_12
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$g;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a$g;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/roblox/client/signup/a;->aQ:Z

    return p1
.end method

.method private aA()V
    .locals 4

    .line 865
    iget-object v0, p0, Lcom/roblox/client/signup/a;->av:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxGenderPicker;->getValue()I

    move-result v0

    iput v0, p0, Lcom/roblox/client/signup/a;->aP:I

    if-nez v0, :cond_0

    .line 866
    sget-object v0, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/signup/a;->aV:Lcom/roblox/client/signup/a$e;

    .line 867
    invoke-static {}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeGetGenderNeutralSignUpVariation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VARIANT-B"

    .line 868
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VARIANT-C"

    .line 869
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 870
    :cond_1
    sget-object v0, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->aV:Lcom/roblox/client/signup/a$e;

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aV:Lcom/roblox/client/signup/a$e;

    sget-object v1, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    if-ne v0, v1, :cond_3

    .line 873
    iget-object v0, p0, Lcom/roblox/client/signup/a;->av:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxGenderPicker;->a()V

    const/4 v0, 0x1

    const-string v1, "signup"

    const-string v2, "gender"

    const-string v3, "not selected"

    .line 874
    invoke-static {v1, v2, v3, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 877
    :cond_3
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->ax()Z

    return-void
.end method

.method private aB()V
    .locals 3

    .line 881
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aI:Lcom/roblox/abtesting/a;

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->f()V

    .line 884
    iget-object v0, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->aL:Ljava/lang/String;

    .line 885
    iget-object v1, p0, Lcom/roblox/client/signup/a;->aG:Lcom/roblox/client/signup/e;

    new-instance v2, Lcom/roblox/client/signup/a$15;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$15;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/roblox/client/signup/e;->a(Ljava/lang/String;Lcom/roblox/client/signup/e$a;)V

    goto :goto_0

    .line 910
    :cond_0
    sget-object v0, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->aT:Lcom/roblox/client/signup/a$e;

    :goto_0
    return-void
.end method

.method private aC()V
    .locals 5

    .line 915
    iget-object v0, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 916
    iget-object v1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->f()V

    :try_start_0
    const-string v1, "UTF-8"

    .line 919
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    iget-object v1, p0, Lcom/roblox/client/signup/a;->aG:Lcom/roblox/client/signup/e;

    iget v2, p0, Lcom/roblox/client/signup/a;->aN:I

    iget v3, p0, Lcom/roblox/client/signup/a;->aO:I

    iget v4, p0, Lcom/roblox/client/signup/a;->aM:I

    .line 926
    invoke-static {v2, v3, v4}, Lcom/roblox/client/signup/d;->a(III)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/signup/a$16;

    invoke-direct {v3, p0}, Lcom/roblox/client/signup/a$16;-><init>(Lcom/roblox/client/signup/a;)V

    .line 925
    invoke-virtual {v1, v0, v2, v3}, Lcom/roblox/client/signup/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/e$b;)V

    return-void

    .line 921
    :catch_0
    iget-object v0, p0, Lcom/roblox/client/signup/a;->be:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method private aD()V
    .locals 1

    .line 1333
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/roblox/client/signup/a;->ax:Lcom/roblox/client/signup/a$b;

    invoke-interface {v0}, Lcom/roblox/client/signup/a$b;->s()V

    goto :goto_0

    .line 1335
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->bR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1336
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->at()V

    :cond_1
    :goto_0
    return-void
.end method

.method private aE()V
    .locals 1

    .line 1343
    iget-object v0, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 1344
    iget-object v0, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->b()V

    .line 1345
    iget-object v0, p0, Lcom/roblox/client/signup/a;->av:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxGenderPicker;->c()V

    .line 1346
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aw:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->c()V

    .line 1347
    iget-object v0, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->b()V

    .line 1348
    iget-object v0, p0, Lcom/roblox/client/signup/a;->ay:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->a()V

    .line 1349
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aD:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->a()V

    return-void
.end method

.method static aq()Lcom/roblox/client/signup/a;
    .locals 1

    .line 176
    new-instance v0, Lcom/roblox/client/signup/a;

    invoke-direct {v0}, Lcom/roblox/client/signup/a;-><init>()V

    return-object v0
.end method

.method private au()V
    .locals 4

    .line 468
    new-instance v0, Lcom/roblox/client/signup/a$7;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/a$7;-><init>(Lcom/roblox/client/signup/a;)V

    .line 477
    new-instance v1, Lcom/roblox/client/signup/a$8;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$8;-><init>(Lcom/roblox/client/signup/a;)V

    .line 486
    new-instance v2, Lcom/roblox/client/signup/a$a;

    iget-object v3, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-direct {v2, v3}, Lcom/roblox/client/signup/a$a;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    iput-object v2, p0, Lcom/roblox/client/signup/a;->bd:Lcom/roblox/client/signup/a$a;

    .line 488
    iget-object v2, p0, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    new-instance v3, Lcom/roblox/client/signup/a$9;

    invoke-direct {v3, p0, v0}, Lcom/roblox/client/signup/a$9;-><init>(Lcom/roblox/client/signup/a;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 506
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aA:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/signup/a$10;

    invoke-direct {v2, p0, v1}, Lcom/roblox/client/signup/a$10;-><init>(Lcom/roblox/client/signup/a;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 534
    new-instance v0, Lcom/roblox/client/signup/a$11;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/a$11;-><init>(Lcom/roblox/client/signup/a;)V

    .line 542
    iget-object v1, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxLoadingEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/signup/a$13;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/signup/a$13;-><init>(Lcom/roblox/client/signup/a;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private av()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aI:Lcom/roblox/abtesting/a;

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->l()Z

    move-result v0

    return v0
.end method

.method private aw()Z
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aR:Lcom/roblox/client/signup/a$e;

    sget-object v1, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/roblox/client/signup/a;->aU:Lcom/roblox/client/signup/a$e;

    sget-object v1, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/roblox/client/signup/a;->aS:Lcom/roblox/client/signup/a$e;

    sget-object v1, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/roblox/client/signup/a;->aV:Lcom/roblox/client/signup/a$e;

    sget-object v1, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/roblox/client/signup/a;->aT:Lcom/roblox/client/signup/a$e;

    sget-object v1, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ax()Z
    .locals 3

    .line 659
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->aw()Z

    move-result v0

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentSignUp"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v1, p0, Lcom/roblox/client/signup/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    invoke-virtual {v1, v0}, Lcom/roblox/client/components/RbxProgressButton;->setEnabled(Z)V

    return v0
.end method

.method private ay()V
    .locals 4

    .line 849
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/signup/a;->aU:Lcom/roblox/client/signup/a$e;

    .line 851
    sget-object v1, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    if-eq v0, v1, :cond_1

    .line 852
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aw:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->a()V

    const/4 v0, 0x1

    const-string v1, "signup"

    const-string v2, "birthday"

    const-string v3, "incomplete"

    .line 854
    invoke-static {v1, v2, v3, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 857
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->ax()Z

    return-void
.end method

.method private az()Z
    .locals 2

    .line 861
    iget v0, p0, Lcom/roblox/client/signup/a;->aM:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/roblox/client/signup/a;->aN:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/roblox/client/signup/a;->aO:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/roblox/client/signup/a;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/roblox/client/signup/a;->aN:I

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$e;)Lcom/roblox/client/signup/a$e;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/roblox/client/signup/a;->aS:Lcom/roblox/client/signup/a$e;

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 460
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameContainsInvalidCharacters:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->be:Ljava/lang/String;

    .line 461
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UnexpectedErrorText:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->bf:Ljava/lang/String;

    .line 462
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_BadServerResponseError:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->bg:Ljava/lang/String;

    .line 463
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_ServerError:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->bh:Ljava/lang/String;

    .line 464
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_Error:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/signup/a;->bi:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 629
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/a;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->aC()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    return-void
.end method

.method private b(III)Z
    .locals 0

    .line 643
    invoke-static {p1, p2, p3}, Lcom/roblox/client/ae/e;->a(III)I

    move-result p1

    const/16 p2, 0xd

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/roblox/client/signup/a;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/roblox/client/signup/a;->aW:Z

    return p1
.end method

.method static synthetic c(Lcom/roblox/client/signup/a;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/roblox/client/signup/a;->aM:I

    return p1
.end method

.method static synthetic c(Lcom/roblox/client/signup/a;)Landroid/view/View;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->aX:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$e;)Lcom/roblox/client/signup/a$e;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/roblox/client/signup/a;->aT:Lcom/roblox/client/signup/a$e;

    return-object p1
.end method

.method static synthetic d(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$e;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->aS:Lcom/roblox/client/signup/a$e;

    return-object p0
.end method

.method static synthetic e(Lcom/roblox/client/signup/a;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->aA()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "UnexpectedError"

    .line 1368
    invoke-static {v0, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_UnexpectedErrorFormatted:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/signup/a;->b(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic f(Lcom/roblox/client/signup/a;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->az()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/roblox/client/signup/a;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->ay()V

    return-void
.end method

.method static synthetic h(Lcom/roblox/client/signup/a;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/roblox/client/signup/a;->aQ:Z

    return p0
.end method

.method static synthetic i(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$a;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->bd:Lcom/roblox/client/signup/a$a;

    return-object p0
.end method

.method static synthetic j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    return-object p0
.end method

.method static synthetic k(Lcom/roblox/client/signup/a;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->aB()V

    return-void
.end method

.method static synthetic l(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->aJ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->aK:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/roblox/client/signup/a;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->ax()Z

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/roblox/client/signup/a;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->av()Z

    move-result p0

    return p0
.end method

.method static synthetic p(Lcom/roblox/client/signup/a;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/roblox/client/signup/a;->aW:Z

    return p0
.end method

.method static synthetic q(Lcom/roblox/client/signup/a;)Lcom/roblox/client/components/RbxProgressButton;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    return-object p0
.end method

.method static synthetic r(Lcom/roblox/client/signup/a;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/roblox/client/signup/a;->aP:I

    return p0
.end method

.method static synthetic s(Lcom/roblox/client/signup/a;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/roblox/client/signup/a;->aM:I

    return p0
.end method

.method static synthetic t(Lcom/roblox/client/signup/a;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/roblox/client/signup/a;->aN:I

    return p0
.end method

.method static synthetic u(Lcom/roblox/client/signup/a;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/roblox/client/signup/a;->aO:I

    return p0
.end method

.method static synthetic v(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->aL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/d$a;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->bj:Lcom/roblox/client/signup/d$a;

    return-object p0
.end method

.method static synthetic x(Lcom/roblox/client/signup/a;)Lcom/roblox/client/s/f;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->aH:Lcom/roblox/client/s/f;

    return-object p0
.end method

.method static synthetic y(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$f;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->bc:Lcom/roblox/client/signup/a$f;

    return-object p0
.end method

.method static synthetic z(Lcom/roblox/client/signup/a;)Lcom/roblox/abtesting/a;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/roblox/client/signup/a;->aI:Lcom/roblox/abtesting/a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 198
    sget p3, Lcom/roblox/client/o$g;->fragment_signup_new:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 199
    sget p3, Lcom/roblox/client/o$f;->fragment_sign_up_swap_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 201
    sget v1, Lcom/roblox/client/o$g;->fragment_sign_up_card:I

    invoke-virtual {p1, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 203
    sget v1, Lcom/roblox/client/o$f;->fragment_sign_up_card_inner_container:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 205
    sget v1, Lcom/roblox/client/o$g;->fragment_sign_up_card_common_birthday_first:I

    invoke-virtual {p1, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 208
    sget p1, Lcom/roblox/client/o$f;->fragment_sign_up_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    .line 209
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    sget p1, Lcom/roblox/client/o$f;->fragment_sign_up_cancel_btn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxButton;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->ay:Lcom/roblox/client/components/RbxButton;

    .line 212
    sget p1, Lcom/roblox/client/o$f;->fragment_sign_up_username:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/signup/UsernameSignUpEditText;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    .line 213
    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    .line 214
    sget p3, Lcom/roblox/client/o$f;->view_signup_username_field:I

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setId(I)V

    .line 215
    iget-object p1, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object p1

    sget p3, Lcom/roblox/client/o$f;->view_signup_username_bottom_label:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setId(I)V

    .line 217
    sget p1, Lcom/roblox/client/o$f;->fragment_sign_up_password:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxEditText;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    .line 218
    invoke-virtual {p1}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/signup/a;->aA:Landroid/widget/EditText;

    .line 219
    sget p3, Lcom/roblox/client/o$f;->view_signup_password_field:I

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setId(I)V

    .line 220
    iget-object p1, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object p1

    sget p3, Lcom/roblox/client/o$f;->view_signup_password_bottom_label:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setId(I)V

    .line 221
    iget-object p1, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    new-instance p3, Lcom/roblox/client/signup/a$12;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/a$12;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p1, p3}, Lcom/roblox/client/components/RbxEditText;->setRightDrawableClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    sget p1, Lcom/roblox/client/o$f;->fragment_sign_up_gender_picker:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxGenderPicker;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->av:Lcom/roblox/client/components/RbxGenderPicker;

    .line 238
    sget p1, Lcom/roblox/client/o$f;->fragment_sign_up_birthday_picker:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxBirthdayPicker;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->aw:Lcom/roblox/client/components/RbxBirthdayPicker;

    .line 239
    sget p1, Lcom/roblox/client/o$f;->fragment_sign_up_email:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxLoadingEditText;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    .line 240
    sget p1, Lcom/roblox/client/o$f;->fragment_sign_up_submit_btn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxProgressButton;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    .line 241
    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxProgressButton;->setEnabled(Z)V

    .line 242
    sget p1, Lcom/roblox/client/o$f;->fragment_sign_up_agreement:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->aC:Landroid/widget/TextView;

    .line 243
    sget p1, Lcom/roblox/client/o$f;->fragment_sign_up_login_btn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxButton;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->aD:Lcom/roblox/client/components/RbxButton;

    .line 244
    sget p1, Lcom/roblox/client/o$f;->fragment_signup_header_txt:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxTextView;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->aE:Lcom/roblox/client/components/RbxTextView;

    .line 245
    sget p1, Lcom/roblox/client/o$f;->fragment_signup_gender_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxTextView;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->aF:Lcom/roblox/client/components/RbxTextView;

    .line 247
    iput-object p2, p0, Lcom/roblox/client/signup/a;->aX:Landroid/view/View;

    .line 249
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object p1

    .line 250
    iget-object p3, p0, Lcom/roblox/client/signup/a;->ay:Lcom/roblox/client/components/RbxButton;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Action_Cancel:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aD:Lcom/roblox/client/components/RbxButton;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Action_LoginWord:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p3, p0, Lcom/roblox/client/signup/a;->ay:Lcom/roblox/client/components/RbxButton;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_CancelButtonContentDesc:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p3, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Messages_Label_Password:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    .line 254
    iget-object p3, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_PasswordHintTextLong:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxEditText;->setLongHintText(Ljava/lang/String;)V

    .line 255
    iget-object p3, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_SignUpPasswordContentDesc:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    iget-object p3, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_SignUpUsernameContentDesc:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_SubmitButtonContentDesc:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxProgressButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p3, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_Username:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setHintText(Ljava/lang/String;)V

    .line 259
    iget-object p3, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_UsernameHintTextLong:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setLongHintText(Ljava/lang/String;)V

    .line 260
    iget-object p3, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Email:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxLoadingEditText;->setHintText(Ljava/lang/String;)V

    .line 261
    iget-object p3, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Email:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxLoadingEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_SignUp:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxProgressButton;->setText(Ljava/lang/String;)V

    .line 263
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aE:Lcom/roblox/client/components/RbxTextView;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_SignUpWord:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 267
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {p3, v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 271
    iget-object v1, p0, Lcom/roblox/client/signup/a;->aw:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v1, p3}, Lcom/roblox/client/components/RbxBirthdayPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    :cond_0
    iget-object p3, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_UsernameHint:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->c(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/roblox/client/b;->ap()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 277
    iget-object p3, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    new-instance v1, Lcom/roblox/client/signup/a$19;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$19;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p3, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setGenerateUsernameIconTouchListener(Lcom/roblox/client/signup/b;)V

    .line 287
    :cond_1
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aI:Lcom/roblox/abtesting/a;

    invoke-virtual {p3}, Lcom/roblox/abtesting/a;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 288
    iget-object p3, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {p3, v0}, Lcom/roblox/client/components/RbxLoadingEditText;->setVisibility(I)V

    .line 291
    iget-object p3, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {p3}, Lcom/roblox/client/components/RbxLoadingEditText;->b()V

    .line 294
    :cond_2
    invoke-static {}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeGetGenderNeutralSignUpVariation()Ljava/lang/String;

    move-result-object p3

    const-string v1, "VARIANT-B"

    .line 295
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    sget-object p3, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    iput-object p3, p0, Lcom/roblox/client/signup/a;->aV:Lcom/roblox/client/signup/a$e;

    goto :goto_0

    :cond_3
    const-string v1, "VARIANT-C"

    .line 297
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/16 v1, 0x8

    if-eqz p3, :cond_4

    .line 298
    iget-object p3, p0, Lcom/roblox/client/signup/a;->av:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxGenderPicker;->setVisibility(I)V

    .line 299
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aF:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxTextView;->setVisibility(I)V

    .line 300
    sget-object p3, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    iput-object p3, p0, Lcom/roblox/client/signup/a;->aV:Lcom/roblox/client/signup/a$e;

    goto :goto_0

    .line 302
    :cond_4
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aF:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxTextView;->setVisibility(I)V

    .line 305
    :goto_0
    iget-object p3, p0, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 306
    iget-object p3, p0, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/signup/a$20;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$20;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 318
    iget-object p3, p0, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/signup/a$21;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$21;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 325
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aA:Landroid/widget/EditText;

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 326
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aA:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/signup/a$22;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$22;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 337
    iget-object p3, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    new-instance v1, Lcom/roblox/client/signup/a$23;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/signup/a$23;-><init>(Lcom/roblox/client/signup/a;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxEditText;->setRbxFocusChangedListener(Lcom/roblox/client/components/f;)V

    .line 351
    iget-object p3, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {p3}, Lcom/roblox/client/components/RbxLoadingEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p3

    const/4 v1, 0x6

    .line 352
    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 353
    new-instance v1, Lcom/roblox/client/signup/a$24;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$24;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 364
    new-instance v1, Lcom/roblox/client/signup/a$25;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$25;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 371
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->au()V

    .line 373
    iget-object p3, p0, Lcom/roblox/client/signup/a;->av:Lcom/roblox/client/components/RbxGenderPicker;

    new-instance v1, Lcom/roblox/client/signup/a$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$2;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxGenderPicker;->setOnGenderButtonPressedListener(Lcom/roblox/client/components/RbxGenderPicker$a;)V

    .line 382
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aw:Lcom/roblox/client/components/RbxBirthdayPicker;

    new-instance v1, Lcom/roblox/client/signup/a$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$3;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->setRbxDateChangedListener(Lcom/roblox/client/components/e;)V

    .line 405
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aD:Lcom/roblox/client/components/RbxButton;

    new-instance v1, Lcom/roblox/client/signup/a$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$4;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object p3, p0, Lcom/roblox/client/signup/a;->ay:Lcom/roblox/client/components/RbxButton;

    new-instance v1, Lcom/roblox/client/signup/a$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$5;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    new-instance v1, Lcom/roblox/client/signup/a$6;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$6;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {p3, v1}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/d;)V

    .line 429
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aC:Landroid/widget/TextView;

    invoke-static {p1, p3}, Lcom/roblox/client/ae/a/b;->b(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 430
    iget-object p3, p0, Lcom/roblox/client/signup/a;->aC:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    const-string p3, "signup"

    .line 432
    invoke-static {p3}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/a;->b(Landroid/content/Context;)V

    return-object p2
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 579
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    .line 580
    instance-of v0, p1, Lcom/roblox/client/signup/a$b;

    if-eqz v0, :cond_0

    .line 581
    check-cast p1, Lcom/roblox/client/signup/a$b;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->ax:Lcom/roblox/client/signup/a$b;

    return-void

    :cond_0
    const-string v0, "signup_window"

    const-string v1, "Parent activity does not implement FragmentSignUp.OnFragmentInteractionListener!"

    .line 583
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, "focus"

    goto :goto_0

    :cond_0
    const-string p2, "offFocus"

    :goto_0
    const-string v0, "signup"

    .line 1374
    invoke-static {v0, p1, p2}, Lcom/roblox/client/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_1

    .line 670
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "signup"

    const-string v1, "submit"

    .line 673
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->ay()V

    .line 678
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aU:Lcom/roblox/client/signup/a$e;

    sget-object v1, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    if-eq v0, v1, :cond_2

    return-void

    .line 682
    :cond_2
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->ar()V

    .line 684
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Action_Validating:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 685
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->aE()V

    .line 687
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 688
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object v5

    .line 690
    new-instance v1, Lcom/roblox/client/signup/a$14;

    move-object v3, v1

    move-object v4, p0

    move v6, p1

    move-object v7, v0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/roblox/client/signup/a$14;-><init>(Lcom/roblox/client/signup/a;Landroid/content/Context;ZLandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public ar()V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->aJ:Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->aK:Ljava/lang/String;

    return-void
.end method

.method public as()V
    .locals 5

    .line 1313
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object v0

    .line 1314
    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 1316
    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_TooManyAttemptsText:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_TooManyAccountsCreatedTryAgainLater:I

    new-array v4, v3, [Ljava/lang/Object;

    .line 1317
    invoke-static {v0, v2, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Features_Action_Ok:I

    new-array v4, v3, [Ljava/lang/Object;

    .line 1318
    invoke-static {v0, v2, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/signup/a$17;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$17;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 1324
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/b$a;->a(Z)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 1325
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object v0

    .line 1326
    invoke-virtual {v0}, Landroidx/appcompat/app/b;->show()V

    return-void
.end method

.method public at()V
    .locals 5

    .line 1353
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object v0

    .line 1354
    iget-object v1, p0, Lcom/roblox/client/signup/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v2, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_SignUp:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->c()V

    .line 1356
    iget-object v0, p0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 1357
    iget-object v0, p0, Lcom/roblox/client/signup/a;->av:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxGenderPicker;->d()V

    .line 1358
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aw:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->d()V

    .line 1359
    iget-object v0, p0, Lcom/roblox/client/signup/a;->ay:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->b()V

    .line 1360
    iget-object v0, p0, Lcom/roblox/client/signup/a;->aD:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->b()V

    .line 1362
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->c()V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 182
    invoke-super {p0, p1}, Lcom/roblox/client/s;->b(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->d()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/signup/a;->a(II)V

    .line 186
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/signup/a;->aH:Lcom/roblox/client/s/f;

    .line 187
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/signup/a;->aI:Lcom/roblox/abtesting/a;

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    .line 448
    invoke-super {p0, p1}, Lcom/roblox/client/s;->d(Landroid/os/Bundle;)V

    .line 450
    new-instance p1, Lcom/roblox/client/signup/e;

    new-instance v0, Lcom/roblox/client/http/h;

    invoke-direct {v0}, Lcom/roblox/client/http/h;-><init>()V

    invoke-direct {p1, v0}, Lcom/roblox/client/signup/e;-><init>(Lcom/roblox/client/http/f;)V

    iput-object p1, p0, Lcom/roblox/client/signup/a;->aG:Lcom/roblox/client/signup/e;

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "signup"

    const-string v1, "submit"

    .line 1379
    invoke-static {v0, p1, v1}, Lcom/roblox/client/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 591
    invoke-super {p0}, Lcom/roblox/client/s;->f()V

    .line 593
    sget-object v0, Lcom/roblox/client/signup/a;->aZ:Lcom/roblox/client/signup/a$b;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->ax:Lcom/roblox/client/signup/a$b;

    .line 595
    iget-object v0, p0, Lcom/roblox/client/signup/a;->bc:Lcom/roblox/client/signup/a$f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 596
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/a$f;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 564
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    .line 567
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->r()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "signup"

    .line 569
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 0

    .line 574
    invoke-super {p0}, Lcom/roblox/client/s;->i()V

    return-void
.end method

.method public j()V
    .locals 2

    .line 441
    invoke-super {p0}, Lcom/roblox/client/s;->j()V

    .line 443
    iget-object v0, p0, Lcom/roblox/client/signup/a;->az:Lcom/roblox/client/signup/UsernameSignUpEditText;

    iget-object v1, p0, Lcom/roblox/client/signup/a;->bd:Lcom/roblox/client/signup/a$a;

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m(Z)V
    .locals 2

    .line 604
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->az()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 605
    iget-object p1, p0, Lcom/roblox/client/signup/a;->aw:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxBirthdayPicker;->b()V

    .line 606
    iget p1, p0, Lcom/roblox/client/signup/a;->aO:I

    iget v0, p0, Lcom/roblox/client/signup/a;->aN:I

    iget v1, p0, Lcom/roblox/client/signup/a;->aM:I

    invoke-direct {p0, p1, v0, v1}, Lcom/roblox/client/signup/a;->a(III)V

    .line 610
    iget-object p1, p0, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 611
    iget-object v0, p0, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v0, p0, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
