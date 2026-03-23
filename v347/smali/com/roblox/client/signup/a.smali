.class public Lcom/roblox/client/signup/a;
.super Lcom/roblox/client/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/a$b;,
        Lcom/roblox/client/signup/a$a;,
        Lcom/roblox/client/signup/a$c;,
        Lcom/roblox/client/signup/a$e;,
        Lcom/roblox/client/signup/a$d;,
        Lcom/roblox/client/signup/a$f;
    }
.end annotation


# static fields
.field private static L:Lcom/roblox/client/signup/a$b;


# instance fields
.field private A:I

.field private B:Z

.field private C:Lcom/roblox/client/signup/a$d;

.field private D:Lcom/roblox/client/signup/a$d;

.field private E:Lcom/roblox/client/signup/a$d;

.field private F:Lcom/roblox/client/signup/a$d;

.field private G:Lcom/roblox/client/signup/a$d;

.field private H:Lcom/roblox/client/signup/a$d;

.field private I:Lcom/roblox/client/signup/a$d;

.field private J:Landroid/view/View;

.field private K:J

.field private final M:I

.field private final N:I

.field private O:Lcom/roblox/client/signup/a$e;

.field private P:Lcom/roblox/client/signup/a$a;

.field private Q:Lcom/roblox/client/signup/a$a;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Lcom/roblox/client/signup/e$a;

.field a:Landroid/widget/EditText;

.field b:Lcom/roblox/client/components/RbxEditText;

.field c:Landroid/widget/EditText;

.field d:Lcom/roblox/client/components/RbxLoadingEditText;

.field e:Lcom/roblox/client/components/RbxGenderPicker;

.field f:Lcom/roblox/client/components/RbxBirthdayPicker;

.field g:Lcom/roblox/client/components/RbxCheckBox;

.field h:Lcom/roblox/client/signup/a$b;

.field private i:Lcom/roblox/client/components/RbxButton;

.field private j:Lcom/roblox/client/signup/UsernameSignUpEditText;

.field private k:Landroid/widget/EditText;

.field private l:Lcom/roblox/client/components/RbxEditText;

.field private m:Lcom/roblox/client/components/RbxTextView;

.field private n:Lcom/roblox/client/components/RbxProgressButton;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/roblox/client/components/RbxButton;

.field private q:Lcom/roblox/client/signup/g;

.field private r:Lcom/roblox/client/i/f;

.field private s:Lcom/roblox/abtesting/a;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/roblox/client/signup/a$1;

    invoke-direct {v0}, Lcom/roblox/client/signup/a$1;-><init>()V

    sput-object v0, Lcom/roblox/client/signup/a;->L:Lcom/roblox/client/signup/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/roblox/client/m;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/roblox/client/signup/a;->i:Lcom/roblox/client/components/RbxButton;

    .line 78
    iput-object v1, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    .line 79
    iput-object v1, p0, Lcom/roblox/client/signup/a;->k:Landroid/widget/EditText;

    .line 80
    iput-object v1, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    .line 81
    iput-object v1, p0, Lcom/roblox/client/signup/a;->m:Lcom/roblox/client/components/RbxTextView;

    .line 82
    iput-object v1, p0, Lcom/roblox/client/signup/a;->n:Lcom/roblox/client/components/RbxProgressButton;

    .line 83
    iput-object v1, p0, Lcom/roblox/client/signup/a;->o:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcom/roblox/client/signup/a;->p:Lcom/roblox/client/components/RbxButton;

    .line 86
    iput-object v1, p0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    .line 88
    iput-object v1, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    .line 89
    iput-object v1, p0, Lcom/roblox/client/signup/a;->c:Landroid/widget/EditText;

    .line 90
    iput-object v1, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    .line 91
    iput-object v1, p0, Lcom/roblox/client/signup/a;->e:Lcom/roblox/client/components/RbxGenderPicker;

    .line 92
    iput-object v1, p0, Lcom/roblox/client/signup/a;->f:Lcom/roblox/client/components/RbxBirthdayPicker;

    .line 93
    iput-object v1, p0, Lcom/roblox/client/signup/a;->g:Lcom/roblox/client/components/RbxCheckBox;

    .line 101
    iput-object v1, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/roblox/client/signup/a;->u:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/roblox/client/signup/a;->v:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/roblox/client/signup/a;->w:Ljava/lang/String;

    .line 106
    iput v0, p0, Lcom/roblox/client/signup/a;->x:I

    .line 107
    iput v0, p0, Lcom/roblox/client/signup/a;->y:I

    .line 108
    iput v0, p0, Lcom/roblox/client/signup/a;->z:I

    .line 110
    iput v2, p0, Lcom/roblox/client/signup/a;->A:I

    .line 111
    iput-boolean v2, p0, Lcom/roblox/client/signup/a;->B:Z

    .line 113
    sget-object v0, Lcom/roblox/client/signup/a$d;->a:Lcom/roblox/client/signup/a$d;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->C:Lcom/roblox/client/signup/a$d;

    .line 114
    sget-object v0, Lcom/roblox/client/signup/a$d;->a:Lcom/roblox/client/signup/a$d;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->D:Lcom/roblox/client/signup/a$d;

    .line 115
    sget-object v0, Lcom/roblox/client/signup/a$d;->a:Lcom/roblox/client/signup/a$d;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->E:Lcom/roblox/client/signup/a$d;

    .line 116
    sget-object v0, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->F:Lcom/roblox/client/signup/a$d;

    .line 117
    sget-object v0, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->G:Lcom/roblox/client/signup/a$d;

    .line 118
    sget-object v0, Lcom/roblox/client/signup/a$d;->a:Lcom/roblox/client/signup/a$d;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->H:Lcom/roblox/client/signup/a$d;

    .line 119
    sget-object v0, Lcom/roblox/client/signup/a$d;->a:Lcom/roblox/client/signup/a$d;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->I:Lcom/roblox/client/signup/a$d;

    .line 126
    iput-object v1, p0, Lcom/roblox/client/signup/a;->J:Landroid/view/View;

    .line 132
    sget-object v0, Lcom/roblox/client/signup/a;->L:Lcom/roblox/client/signup/a$b;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->h:Lcom/roblox/client/signup/a$b;

    .line 153
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/roblox/client/signup/a;->M:I

    .line 157
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/roblox/client/signup/a;->N:I

    .line 1303
    new-instance v0, Lcom/roblox/client/signup/a$c;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/signup/a$c;-><init>(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$1;)V

    iput-object v0, p0, Lcom/roblox/client/signup/a;->W:Lcom/roblox/client/signup/e$a;

    return-void
.end method

.method static synthetic A(Lcom/roblox/client/signup/a;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/roblox/client/signup/a;->x:I

    return v0
.end method

.method static synthetic B(Lcom/roblox/client/signup/a;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/roblox/client/signup/a;->y:I

    return v0
.end method

.method static synthetic C(Lcom/roblox/client/signup/a;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/roblox/client/signup/a;->z:I

    return v0
.end method

.method static synthetic D(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/e$a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->W:Lcom/roblox/client/signup/e$a;

    return-object v0
.end method

.method static synthetic F(Lcom/roblox/client/signup/a;)Lcom/roblox/client/i/f;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->r:Lcom/roblox/client/i/f;

    return-object v0
.end method

.method static synthetic G(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$e;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->O:Lcom/roblox/client/signup/a$e;

    return-object v0
.end method

.method static synthetic H(Lcom/roblox/client/signup/a;)Lcom/roblox/abtesting/a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->s:Lcom/roblox/abtesting/a;

    return-object v0
.end method

.method static synthetic I(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic J(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic K(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->U:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic L(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->V:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic M(Lcom/roblox/client/signup/a;)J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/roblox/client/signup/a;->K:J

    return-wide v0
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/roblox/client/signup/a;->z:I

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;J)J
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/roblox/client/signup/a;->K:J

    return-wide p1
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/roblox/client/signup/a;->C:Lcom/roblox/client/signup/a$d;

    return-object p1
.end method

.method static a()Lcom/roblox/client/signup/a;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/roblox/client/signup/a;

    invoke-direct {v0}, Lcom/roblox/client/signup/a;-><init>()V

    return-object v0
.end method

.method private a(III)V
    .locals 2

    .prologue
    .line 613
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/signup/a;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e00a7

    .line 616
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v1, v0}, Lcom/roblox/client/components/RbxLoadingEditText;->setHintText(I)V

    .line 617
    iget-object v0, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->c()V

    .line 618
    return-void

    .line 613
    :cond_0
    const v0, 0x7f0e00a6

    goto :goto_0
.end method

.method private a(Lcom/roblox/client/components/RbxEditText;I)V
    .locals 0

    .prologue
    .line 597
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->a(I)V

    .line 598
    return-void
.end method

.method private a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 601
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private a(Lcom/roblox/client/signup/a$f;)V
    .locals 10

    .prologue
    const v9, 0x7f0e0127

    const v8, 0x7f0e00e2

    const/16 v7, 0x5f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 720
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    .line 721
    if-nez v2, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->b()V

    .line 726
    const-string v1, ""

    .line 727
    const-string v0, ""

    .line 728
    sget-object v3, Lcom/roblox/client/signup/a$21;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/signup/a$f;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 798
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 799
    const-string v2, "signup"

    invoke-static {v2, v1, v0, v6}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 731
    :pswitch_0
    sget-object v1, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    iput-object v1, p0, Lcom/roblox/client/signup/a;->C:Lcom/roblox/client/signup/a$d;

    .line 732
    const-string v1, "username"

    .line 733
    invoke-static {v2}, Lcom/roblox/client/p;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 734
    iget-object v2, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-direct {p0, v2, v9}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    goto :goto_1

    .line 738
    :cond_3
    iget-object v2, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 739
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->a()V

    .line 740
    const-string v0, "Empty"

    .line 768
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 769
    iget-object v2, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->k()V

    goto :goto_1

    .line 741
    :cond_4
    iget-object v2, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    .line 742
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-direct {p0, v0, v8}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    .line 743
    const-string v0, "TooShort"

    goto :goto_2

    .line 744
    :cond_5
    iget-object v2, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_6

    .line 745
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-direct {p0, v0, v8}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    .line 746
    const-string v0, "TooLong"

    goto :goto_2

    .line 747
    :cond_6
    const-string v2, "([A-Z]|[a-z]|[0-9]|_)*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_7

    .line 748
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    const v2, 0x7f0e00e0

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    .line 749
    const-string v0, "InvalidCharacters"

    goto :goto_2

    .line 750
    :cond_7
    iget-object v2, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_8

    iget-object v2, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_9

    .line 751
    :cond_8
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    const v2, 0x7f0e00e1

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    .line 752
    const-string v0, "InvalidFirstOrLastCharacter"

    goto :goto_2

    .line 753
    :cond_9
    iget-object v2, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/roblox/client/util/n;->a(Ljava/lang/String;C)I

    move-result v2

    if-le v2, v6, :cond_a

    .line 754
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    const v2, 0x7f0e00e4

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    .line 755
    const-string v0, "InvalidUsernameDoubleUnderscore"

    goto/16 :goto_2

    .line 756
    :cond_a
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->h()Z

    move-result v2

    if-nez v2, :cond_b

    .line 757
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    const v2, 0x7f0e00c1

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    .line 758
    const-string v0, "BirthdayNotSet"

    goto/16 :goto_2

    .line 760
    :cond_b
    iget-object v2, p0, Lcom/roblox/client/signup/a;->O:Lcom/roblox/client/signup/a$e;

    if-eqz v2, :cond_c

    .line 761
    iget-object v2, p0, Lcom/roblox/client/signup/a;->O:Lcom/roblox/client/signup/a$e;

    invoke-virtual {v2, v6}, Lcom/roblox/client/signup/a$e;->cancel(Z)Z

    .line 763
    :cond_c
    new-instance v2, Lcom/roblox/client/signup/a$e;

    invoke-direct {v2, p0, p1}, Lcom/roblox/client/signup/a$e;-><init>(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$f;)V

    iput-object v2, p0, Lcom/roblox/client/signup/a;->O:Lcom/roblox/client/signup/a$e;

    .line 764
    iget-object v2, p0, Lcom/roblox/client/signup/a;->O:Lcom/roblox/client/signup/a$e;

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/roblox/client/signup/a$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 765
    iget-object v2, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->f()V

    goto/16 :goto_2

    .line 774
    :pswitch_1
    sget-object v1, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    iput-object v1, p0, Lcom/roblox/client/signup/a;->D:Lcom/roblox/client/signup/a$d;

    .line 775
    const-string v1, "password"

    .line 776
    invoke-static {v2}, Lcom/roblox/client/p;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 777
    iget-object v2, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0, v2, v9}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    goto/16 :goto_1

    .line 781
    :cond_d
    iget-object v2, p0, Lcom/roblox/client/signup/a;->u:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 782
    iget-object v0, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->a()V

    .line 783
    const-string v0, "Empty"

    goto/16 :goto_1

    .line 784
    :cond_e
    iget-object v2, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/signup/a;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 785
    iget-object v0, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00cc

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    .line 786
    const-string v0, "IsUsername"

    goto/16 :goto_1

    .line 787
    :cond_f
    iget-object v2, p0, Lcom/roblox/client/signup/a;->u:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_10

    .line 788
    iget-object v0, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00d6

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    .line 789
    const-string v0, "TooShort"

    goto/16 :goto_1

    .line 791
    :cond_10
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->f()V

    .line 792
    new-instance v2, Lcom/roblox/client/signup/a$e;

    invoke-direct {v2, p0, p1}, Lcom/roblox/client/signup/a$e;-><init>(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$f;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/roblox/client/signup/a$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 728
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->l()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$f;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a$f;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/a;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/roblox/client/signup/a;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/signup/a;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/roblox/client/signup/a;->y:I

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/signup/a;)Lcom/roblox/client/components/RbxEditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/roblox/client/signup/a;->D:Lcom/roblox/client/signup/a$d;

    return-object p1
.end method

.method private b(Lcom/roblox/client/components/RbxEditText;I)V
    .locals 0

    .prologue
    .line 605
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->b(I)V

    .line 606
    return-void
.end method

.method private b(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 609
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/components/RbxEditText;I)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1476
    const-string v0, "UnexpectedError"

    invoke-static {v0, p1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const v0, 0x7f0e0131

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/signup/a;->alertFormatted(I[Ljava/lang/Object;)V

    .line 1478
    return-void
.end method

.method private b(III)Z
    .locals 2

    .prologue
    .line 621
    invoke-static {p1, p2, p3}, Lcom/roblox/client/util/d;->a(III)I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/roblox/client/signup/a;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/roblox/client/signup/a;->x:I

    return p1
.end method

.method static synthetic c(Lcom/roblox/client/signup/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->J:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/roblox/client/signup/a;->F:Lcom/roblox/client/signup/a$d;

    return-object p1
.end method

.method static synthetic d(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/roblox/client/signup/a;->E:Lcom/roblox/client/signup/a$d;

    return-object p1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 423
    const v0, 0x7f0e00dd

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->R:Ljava/lang/String;

    .line 424
    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->S:Ljava/lang/String;

    .line 425
    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->T:Ljava/lang/String;

    .line 426
    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->U:Ljava/lang/String;

    .line 427
    const v0, 0x7f0e00c2

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->V:Ljava/lang/String;

    .line 428
    return-void
.end method

.method static synthetic d(Lcom/roblox/client/signup/a;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->h()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 431
    new-instance v0, Lcom/roblox/client/signup/a$8;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/a$8;-><init>(Lcom/roblox/client/signup/a;)V

    .line 440
    new-instance v1, Lcom/roblox/client/signup/a$9;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$9;-><init>(Lcom/roblox/client/signup/a;)V

    .line 449
    new-instance v2, Lcom/roblox/client/signup/a$a;

    iget-object v3, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-direct {v2, v3}, Lcom/roblox/client/signup/a$a;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    iput-object v2, p0, Lcom/roblox/client/signup/a;->P:Lcom/roblox/client/signup/a$a;

    .line 450
    new-instance v2, Lcom/roblox/client/signup/a$a;

    iget-object v3, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {v2, v3}, Lcom/roblox/client/signup/a$a;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    iput-object v2, p0, Lcom/roblox/client/signup/a;->Q:Lcom/roblox/client/signup/a$a;

    .line 452
    iget-object v2, p0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    new-instance v3, Lcom/roblox/client/signup/a$10;

    invoke-direct {v3, p0, v0}, Lcom/roblox/client/signup/a$10;-><init>(Lcom/roblox/client/signup/a;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 470
    iget-object v0, p0, Lcom/roblox/client/signup/a;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/signup/a$11;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$11;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 487
    iget-object v0, p0, Lcom/roblox/client/signup/a;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/signup/a$13;

    invoke-direct {v2, p0, v1}, Lcom/roblox/client/signup/a$13;-><init>(Lcom/roblox/client/signup/a;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 506
    new-instance v0, Lcom/roblox/client/signup/a$14;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/a$14;-><init>(Lcom/roblox/client/signup/a;)V

    .line 514
    iget-object v1, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxLoadingEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/signup/a$15;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/signup/a$15;-><init>(Lcom/roblox/client/signup/a;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 533
    iget-object v0, p0, Lcom/roblox/client/signup/a;->g:Lcom/roblox/client/components/RbxCheckBox;

    new-instance v1, Lcom/roblox/client/signup/a$16;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$16;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 540
    return-void
.end method

.method static synthetic e(Lcom/roblox/client/signup/a;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/roblox/client/signup/a;->B:Z

    return v0
.end method

.method static synthetic f(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->P:Lcom/roblox/client/signup/a$a;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 805
    sget-object v0, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->E:Lcom/roblox/client/signup/a$d;

    .line 807
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->b()V

    .line 809
    const-string v1, "password"

    .line 810
    const-string v0, ""

    .line 811
    iget-object v2, p0, Lcom/roblox/client/signup/a;->u:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 812
    iget-object v0, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00d1

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    .line 813
    const-string v0, "Empty"

    .line 826
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 827
    iget-object v2, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    iget-object v3, p0, Lcom/roblox/client/signup/a;->Q:Lcom/roblox/client/signup/a$a;

    invoke-virtual {v2, v3}, Lcom/roblox/client/components/RbxEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 828
    const-string v2, "signup"

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 830
    :cond_0
    return-void

    .line 814
    :cond_1
    iget-object v2, p0, Lcom/roblox/client/signup/a;->v:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 815
    iget-object v2, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v2}, Lcom/roblox/client/components/RbxEditText;->a()V

    goto :goto_0

    .line 816
    :cond_2
    iget-object v2, p0, Lcom/roblox/client/signup/a;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/signup/a;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 817
    iget-object v0, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00cd

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/components/RbxEditText;I)V

    .line 818
    const-string v0, "PasswordMismatch"

    goto :goto_0

    .line 820
    :cond_3
    sget-object v2, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    iput-object v2, p0, Lcom/roblox/client/signup/a;->E:Lcom/roblox/client/signup/a$d;

    .line 821
    iget-object v2, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    const v3, 0x7f0e00c7

    invoke-direct {p0, v2, v3}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/components/RbxEditText;I)V

    .line 822
    iget-object v2, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    iget-object v3, p0, Lcom/roblox/client/signup/a;->Q:Lcom/roblox/client/signup/a$a;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/roblox/client/components/RbxEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/signup/a;->G:Lcom/roblox/client/signup/a$d;

    .line 836
    iget-object v0, p0, Lcom/roblox/client/signup/a;->G:Lcom/roblox/client/signup/a$d;

    sget-object v1, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    if-eq v0, v1, :cond_0

    .line 837
    iget-object v0, p0, Lcom/roblox/client/signup/a;->f:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->a()V

    .line 839
    const-string v0, "signup"

    const-string v1, "birthday"

    const-string v2, "incomplete"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 841
    :cond_0
    return-void

    .line 834
    :cond_1
    sget-object v0, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    goto :goto_0
.end method

.method static synthetic h(Lcom/roblox/client/signup/a;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->f()V

    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 844
    iget v0, p0, Lcom/roblox/client/signup/a;->x:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/roblox/client/signup/a;->y:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/roblox/client/signup/a;->z:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/roblox/client/signup/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 849
    iget v0, p0, Lcom/roblox/client/signup/a;->A:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/signup/a;->H:Lcom/roblox/client/signup/a$d;

    .line 850
    iget-object v0, p0, Lcom/roblox/client/signup/a;->H:Lcom/roblox/client/signup/a$d;

    sget-object v1, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    if-ne v0, v1, :cond_0

    .line 851
    iget-object v0, p0, Lcom/roblox/client/signup/a;->e:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxGenderPicker;->a()V

    .line 852
    const-string v0, "signup"

    const-string v1, "gender"

    const-string v2, "not selected"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 854
    :cond_0
    return-void

    .line 849
    :cond_1
    sget-object v0, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 857
    iget-object v0, p0, Lcom/roblox/client/signup/a;->s:Lcom/roblox/abtesting/a;

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->f()V

    .line 860
    iget-object v0, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->w:Ljava/lang/String;

    .line 862
    iget-object v0, p0, Lcom/roblox/client/signup/a;->q:Lcom/roblox/client/signup/g;

    iget-object v1, p0, Lcom/roblox/client/signup/a;->w:Ljava/lang/String;

    new-instance v2, Lcom/roblox/client/signup/a$18;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$18;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/signup/g;->a(Ljava/lang/String;Lcom/roblox/client/signup/g$a;)V

    .line 888
    :goto_0
    return-void

    .line 886
    :cond_0
    sget-object v0, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->F:Lcom/roblox/client/signup/a$d;

    goto :goto_0
.end method

.method static synthetic j(Lcom/roblox/client/signup/a;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->j()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/roblox/client/signup/a;->g:Lcom/roblox/client/components/RbxCheckBox;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/roblox/client/signup/a;->m:Lcom/roblox/client/components/RbxTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setVisibility(I)V

    .line 893
    sget-object v0, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->I:Lcom/roblox/client/signup/a$d;

    .line 898
    :goto_0
    return-void

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/a;->m:Lcom/roblox/client/components/RbxTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setVisibility(I)V

    .line 896
    sget-object v0, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->I:Lcom/roblox/client/signup/a$d;

    goto :goto_0
.end method

.method static synthetic k(Lcom/roblox/client/signup/a;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->k()V

    return-void
.end method

.method static synthetic l(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 5

    .prologue
    .line 901
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 902
    iget-object v1, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->f()V

    .line 905
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 911
    iget-object v1, p0, Lcom/roblox/client/signup/a;->q:Lcom/roblox/client/signup/g;

    iget v2, p0, Lcom/roblox/client/signup/a;->y:I

    iget v3, p0, Lcom/roblox/client/signup/a;->z:I

    iget v4, p0, Lcom/roblox/client/signup/a;->x:I

    .line 912
    invoke-static {v2, v3, v4}, Lcom/roblox/client/signup/e;->a(III)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/signup/a$19;

    invoke-direct {v3, p0}, Lcom/roblox/client/signup/a$19;-><init>(Lcom/roblox/client/signup/a;)V

    .line 911
    invoke-virtual {v1, v0, v2, v3}, Lcom/roblox/client/signup/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/g$b;)V

    .line 942
    :goto_0
    return-void

    .line 906
    :catch_0
    move-exception v0

    .line 907
    iget-object v0, p0, Lcom/roblox/client/signup/a;->R:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 1453
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->b()V

    .line 1454
    iget-object v0, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 1455
    iget-object v0, p0, Lcom/roblox/client/signup/a;->e:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxGenderPicker;->c()V

    .line 1456
    iget-object v0, p0, Lcom/roblox/client/signup/a;->f:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->c()V

    .line 1457
    iget-object v0, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->b()V

    .line 1458
    iget-object v0, p0, Lcom/roblox/client/signup/a;->g:Lcom/roblox/client/components/RbxCheckBox;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxCheckBox;->a()V

    .line 1459
    return-void
.end method

.method static synthetic n(Lcom/roblox/client/signup/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/roblox/client/signup/a;->n:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;)V

    .line 1463
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->c()V

    .line 1464
    iget-object v0, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 1465
    iget-object v0, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 1466
    iget-object v0, p0, Lcom/roblox/client/signup/a;->e:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxGenderPicker;->d()V

    .line 1467
    iget-object v0, p0, Lcom/roblox/client/signup/a;->f:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->d()V

    .line 1468
    iget-object v0, p0, Lcom/roblox/client/signup/a;->g:Lcom/roblox/client/components/RbxCheckBox;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxCheckBox;->b()V

    .line 1470
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->c()V

    .line 1473
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/roblox/client/signup/a;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->g()V

    return-void
.end method

.method static synthetic p(Lcom/roblox/client/signup/a;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->i()V

    return-void
.end method

.method static synthetic q(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->C:Lcom/roblox/client/signup/a$d;

    return-object v0
.end method

.method static synthetic r(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->G:Lcom/roblox/client/signup/a$d;

    return-object v0
.end method

.method static synthetic s(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->D:Lcom/roblox/client/signup/a$d;

    return-object v0
.end method

.method static synthetic t(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->E:Lcom/roblox/client/signup/a$d;

    return-object v0
.end method

.method static synthetic u(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->H:Lcom/roblox/client/signup/a$d;

    return-object v0
.end method

.method static synthetic v(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->I:Lcom/roblox/client/signup/a$d;

    return-object v0
.end method

.method static synthetic w(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->F:Lcom/roblox/client/signup/a$d;

    return-object v0
.end method

.method static synthetic x(Lcom/roblox/client/signup/a;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->n()V

    return-void
.end method

.method static synthetic y(Lcom/roblox/client/signup/a;)Lcom/roblox/client/components/RbxProgressButton;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/a;->n:Lcom/roblox/client/components/RbxProgressButton;

    return-object v0
.end method

.method static synthetic z(Lcom/roblox/client/signup/a;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/roblox/client/signup/a;->A:I

    return v0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1487
    const-string v0, "signup"

    const-string v1, "submit"

    invoke-static {v0, p1, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1482
    const-string v1, "signup"

    if-eqz p2, :cond_0

    const-string v0, "focus"

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    return-void

    .line 1482
    :cond_0
    const-string v0, "offFocus"

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/roblox/client/signup/a;->f:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->b()V

    .line 586
    iget v0, p0, Lcom/roblox/client/signup/a;->z:I

    iget v1, p0, Lcom/roblox/client/signup/a;->y:I

    iget v2, p0, Lcom/roblox/client/signup/a;->x:I

    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/signup/a;->a(III)V

    .line 590
    iget-object v0, p0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v1, p0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 594
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->t:Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/roblox/client/signup/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->u:Ljava/lang/String;

    .line 715
    iget-object v0, p0, Lcom/roblox/client/signup/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->v:Ljava/lang/String;

    .line 716
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 626
    if-eqz p1, :cond_2

    .line 627
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->alertIfNetworkNotConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    const-string v0, "signup"

    const-string v1, "submit"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_2
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->g()V

    .line 635
    iget-object v0, p0, Lcom/roblox/client/signup/a;->G:Lcom/roblox/client/signup/a$d;

    sget-object v1, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    if-ne v0, v1, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->b()V

    .line 641
    iget-object v0, p0, Lcom/roblox/client/signup/a;->e:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxGenderPicker;->getValue()I

    move-result v0

    iput v0, p0, Lcom/roblox/client/signup/a;->A:I

    .line 643
    iget-object v0, p0, Lcom/roblox/client/signup/a;->n:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    const v2, 0x7f0e011e

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 644
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->m()V

    .line 646
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 648
    new-instance v1, Lcom/roblox/client/signup/a$17;

    invoke-direct {v1, p0, v0}, Lcom/roblox/client/signup/a$17;-><init>(Lcom/roblox/client/signup/a;Landroid/os/Handler;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 1426
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    .line 1427
    const v1, 0x7f0e0130

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(I)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e00d9

    .line 1428
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->b(I)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e00ed

    new-instance v2, Lcom/roblox/client/signup/a$20;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$20;-><init>(Lcom/roblox/client/signup/a;)V

    .line 1429
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 1435
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 1436
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    .line 1437
    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 1438
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onActivityCreated(Landroid/os/Bundle;)V

    .line 413
    new-instance v0, Lcom/roblox/client/signup/g;

    new-instance v1, Lcom/roblox/client/http/h;

    invoke-direct {v1}, Lcom/roblox/client/http/h;-><init>()V

    invoke-direct {v0, v1}, Lcom/roblox/client/signup/g;-><init>(Lcom/roblox/client/http/f;)V

    iput-object v0, p0, Lcom/roblox/client/signup/a;->q:Lcom/roblox/client/signup/g;

    .line 414
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1442
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/m;->onActivityResult(IILandroid/content/Intent;)V

    .line 1443
    const/16 v0, 0x2779

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a;->b(Z)V

    .line 1447
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 559
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onAttach(Landroid/content/Context;)V

    .line 560
    instance-of v0, p1, Lcom/roblox/client/signup/a$b;

    if-eqz v0, :cond_0

    .line 561
    check-cast p1, Lcom/roblox/client/signup/a$b;

    iput-object p1, p0, Lcom/roblox/client/signup/a;->h:Lcom/roblox/client/signup/a$b;

    .line 567
    return-void

    .line 563
    :cond_0
    const-string v0, "signup_window"

    const-string v1, "Parent activity does not implement FragmentSignUp.OnFragmentInteractionListener!"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement OnFragmentInteractionListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->getTheme()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/signup/a;->setStyle(II)V

    .line 176
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->r:Lcom/roblox/client/i/f;

    .line 177
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->s:Lcom/roblox/abtesting/a;

    .line 178
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 188
    const v0, 0x7f0a0071

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 189
    const v0, 0x7f0800dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 191
    const v2, 0x7f0a006f

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 193
    const v2, 0x7f0800d5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 195
    const v2, 0x7f0a0070

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 198
    const v0, 0x7f0800d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 199
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f0800d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->i:Lcom/roblox/client/components/RbxButton;

    .line 202
    const v0, 0x7f0800df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/UsernameSignUpEditText;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    .line 203
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    .line 204
    iget-object v0, p0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    const v2, 0x7f0801fd

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    .line 205
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0801fc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 207
    const v0, 0x7f0800da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxEditText;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    .line 208
    iget-object v0, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->k:Landroid/widget/EditText;

    .line 209
    iget-object v0, p0, Lcom/roblox/client/signup/a;->k:Landroid/widget/EditText;

    const v2, 0x7f0801f9

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    .line 210
    iget-object v0, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0801f8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 212
    const v0, 0x7f0800db

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxEditText;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    .line 213
    iget-object v0, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a;->c:Landroid/widget/EditText;

    .line 214
    iget-object v0, p0, Lcom/roblox/client/signup/a;->c:Landroid/widget/EditText;

    const v2, 0x7f0801fb

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    .line 215
    iget-object v0, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0801fa

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 217
    const v0, 0x7f0800d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxGenderPicker;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->e:Lcom/roblox/client/components/RbxGenderPicker;

    .line 218
    const v0, 0x7f0800d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxBirthdayPicker;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->f:Lcom/roblox/client/components/RbxBirthdayPicker;

    .line 219
    const v0, 0x7f0800d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxLoadingEditText;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    .line 220
    const v0, 0x7f0800d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxCheckBox;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->g:Lcom/roblox/client/components/RbxCheckBox;

    .line 221
    const v0, 0x7f0800de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->m:Lcom/roblox/client/components/RbxTextView;

    .line 222
    const v0, 0x7f0800dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxProgressButton;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->n:Lcom/roblox/client/components/RbxProgressButton;

    .line 223
    iget-object v0, p0, Lcom/roblox/client/signup/a;->n:Lcom/roblox/client/components/RbxProgressButton;

    invoke-virtual {v0, v4}, Lcom/roblox/client/components/RbxProgressButton;->setVisibility(I)V

    .line 224
    const v0, 0x7f0800d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->o:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f0800d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->p:Lcom/roblox/client/components/RbxButton;

    .line 227
    iput-object v1, p0, Lcom/roblox/client/signup/a;->J:Landroid/view/View;

    .line 230
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 235
    iget-object v2, p0, Lcom/roblox/client/signup/a;->f:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v2, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    new-instance v2, Lcom/roblox/client/signup/a$12;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$12;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setGenerateUsernameIconTouchListener(Lcom/roblox/client/signup/c;)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/signup/a;->s:Lcom/roblox/abtesting/a;

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0, v4}, Lcom/roblox/client/components/RbxLoadingEditText;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->b()V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 257
    iget-object v0, p0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/signup/a$22;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$22;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 269
    iget-object v0, p0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/signup/a$23;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$23;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 276
    iget-object v0, p0, Lcom/roblox/client/signup/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 277
    iget-object v0, p0, Lcom/roblox/client/signup/a;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/signup/a$24;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$24;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 288
    iget-object v0, p0, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    new-instance v2, Lcom/roblox/client/signup/a$25;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$25;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxEditText;->setRbxFocusChangedListener(Lcom/roblox/client/components/i;)V

    .line 295
    iget-object v0, p0, Lcom/roblox/client/signup/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 296
    iget-object v0, p0, Lcom/roblox/client/signup/a;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/signup/a$26;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$26;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 308
    iget-object v0, p0, Lcom/roblox/client/signup/a;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/signup/a$27;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$27;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 315
    iget-object v0, p0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 317
    new-instance v2, Lcom/roblox/client/signup/a$28;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$28;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 328
    new-instance v2, Lcom/roblox/client/signup/a$2;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$2;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 335
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->e()V

    .line 337
    iget-object v0, p0, Lcom/roblox/client/signup/a;->e:Lcom/roblox/client/components/RbxGenderPicker;

    new-instance v2, Lcom/roblox/client/signup/a$3;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$3;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxGenderPicker;->setOnGenderButtonPressedListener(Lcom/roblox/client/components/RbxGenderPicker$a;)V

    .line 345
    iget-object v0, p0, Lcom/roblox/client/signup/a;->f:Lcom/roblox/client/components/RbxBirthdayPicker;

    new-instance v2, Lcom/roblox/client/signup/a$4;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$4;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxBirthdayPicker;->setRbxDateChangedListener(Lcom/roblox/client/components/h;)V

    .line 367
    iget-object v0, p0, Lcom/roblox/client/signup/a;->p:Lcom/roblox/client/components/RbxButton;

    new-instance v2, Lcom/roblox/client/signup/a$5;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$5;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/roblox/client/signup/a;->i:Lcom/roblox/client/components/RbxButton;

    new-instance v2, Lcom/roblox/client/signup/a$6;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$6;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/roblox/client/signup/a;->n:Lcom/roblox/client/components/RbxProgressButton;

    new-instance v2, Lcom/roblox/client/signup/a$7;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/a$7;-><init>(Lcom/roblox/client/signup/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/g;)V

    .line 391
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    iget-object v2, p0, Lcom/roblox/client/signup/a;->o:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/roblox/client/util/a/b;->b(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 392
    iget-object v0, p0, Lcom/roblox/client/signup/a;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 394
    const-string v0, "signup"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0}, Lcom/roblox/client/signup/a;->d()V

    .line 398
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Lcom/roblox/client/m;->onDestroyView()V

    .line 405
    iget-object v0, p0, Lcom/roblox/client/signup/a;->j:Lcom/roblox/client/signup/UsernameSignUpEditText;

    iget-object v1, p0, Lcom/roblox/client/signup/a;->P:Lcom/roblox/client/signup/a$a;

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 406
    iget-object v0, p0, Lcom/roblox/client/signup/a;->l:Lcom/roblox/client/components/RbxEditText;

    iget-object v1, p0, Lcom/roblox/client/signup/a;->Q:Lcom/roblox/client/signup/a$a;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 571
    invoke-super {p0}, Lcom/roblox/client/m;->onDetach()V

    .line 573
    sget-object v0, Lcom/roblox/client/signup/a;->L:Lcom/roblox/client/signup/a$b;

    iput-object v0, p0, Lcom/roblox/client/signup/a;->h:Lcom/roblox/client/signup/a$b;

    .line 575
    iget-object v0, p0, Lcom/roblox/client/signup/a;->O:Lcom/roblox/client/signup/a$e;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/roblox/client/signup/a;->O:Lcom/roblox/client/signup/a$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/a$e;->cancel(Z)Z

    .line 578
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 544
    invoke-super {p0}, Lcom/roblox/client/m;->onStart()V

    .line 547
    invoke-virtual {p0}, Lcom/roblox/client/signup/a;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 549
    const-string v0, "signup"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 554
    invoke-super {p0}, Lcom/roblox/client/m;->onStop()V

    .line 555
    return-void
.end method
