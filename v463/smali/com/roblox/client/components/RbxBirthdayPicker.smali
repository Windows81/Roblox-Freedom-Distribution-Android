.class public Lcom/roblox/client/components/RbxBirthdayPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;,
        Lcom/roblox/client/components/RbxBirthdayPicker$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Landroid/widget/Spinner;

.field private c:Landroid/widget/Spinner;

.field private d:Landroid/widget/Spinner;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/roblox/client/components/RbxTextView;

.field private g:Lcom/roblox/client/components/RbxTextView;

.field private h:Lcom/roblox/client/components/e;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "RbxBirthdayPicker"

    .line 31
    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->a:Ljava/lang/String;

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    .line 53
    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    .line 54
    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/RbxBirthdayPicker;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    const/16 v0, 0x1c

    if-ne p2, p1, :cond_0

    return v0

    .line 534
    :cond_0
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x1d

    :cond_1
    return v0

    :cond_2
    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_4

    const/16 p2, 0x8

    if-eq p1, p2, :cond_4

    const/16 p2, 0xa

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x1f

    return p1

    :cond_4
    :goto_0
    const/16 p1, 0x1e

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 73
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$g;->rbx_birthday_picker_phone:I

    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getRootView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 76
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$g;->rbx_birthday_picker:I

    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getRootView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    :goto_0
    sget v2, Lcom/roblox/client/o$f;->rbxBirthdayDaySpinner:I

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    .line 80
    sget v2, Lcom/roblox/client/o$f;->rbxBirthdayMonthSpinner:I

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    .line 81
    sget v2, Lcom/roblox/client/o$f;->rbxBirthdayYearSpinner:I

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    .line 82
    sget v2, Lcom/roblox/client/o$f;->rbxBirthdayContainer:I

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->e:Landroid/widget/LinearLayout;

    .line 83
    sget v2, Lcom/roblox/client/o$f;->rbxBirthdayBottomText:I

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/components/RbxTextView;

    iput-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->f:Lcom/roblox/client/components/RbxTextView;

    .line 84
    sget v2, Lcom/roblox/client/o$f;->rbxBirthdayText:I

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/components/RbxTextView;

    iput-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->g:Lcom/roblox/client/components/RbxTextView;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$c;->RbxGray2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->r:I

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$c;->RbxTextLight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->s:I

    .line 89
    iget-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_BirthdayDaySpinnerContentDesc:I

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_BirthdayMonthSpinnerContentDesc:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_BirthdayYearSpinnerContentDesc:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->g:Lcom/roblox/client/components/RbxTextView;

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Birthday:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->f:Lcom/roblox/client/components/RbxTextView;

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidBirthday:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->t:Ljava/util/HashMap;

    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/String;

    .line 97
    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthJanuary:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthFebruary:I

    new-array v6, v4, [Ljava/lang/Object;

    .line 98
    invoke-static {v1, v5, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthMarch:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 99
    invoke-static {v1, v5, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthApril:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 100
    invoke-static {v1, v5, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v3, v8

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthMay:I

    new-array v9, v4, [Ljava/lang/Object;

    .line 101
    invoke-static {v1, v5, v9}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v3, v9

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthJune:I

    new-array v10, v4, [Ljava/lang/Object;

    .line 102
    invoke-static {v1, v5, v10}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x5

    aput-object v5, v3, v10

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthJuly:I

    new-array v11, v4, [Ljava/lang/Object;

    .line 103
    invoke-static {v1, v5, v11}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x6

    aput-object v5, v3, v11

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthAugust:I

    new-array v12, v4, [Ljava/lang/Object;

    .line 104
    invoke-static {v1, v5, v12}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x7

    aput-object v5, v3, v12

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthSeptember:I

    new-array v13, v4, [Ljava/lang/Object;

    .line 105
    invoke-static {v1, v5, v13}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0x8

    aput-object v5, v3, v13

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthOctober:I

    new-array v14, v4, [Ljava/lang/Object;

    .line 106
    invoke-static {v1, v5, v14}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0x9

    aput-object v5, v3, v14

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthNovember:I

    new-array v15, v4, [Ljava/lang/Object;

    .line 107
    invoke-static {v1, v5, v15}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xa

    aput-object v5, v3, v15

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_MonthDecember:I

    new-array v15, v4, [Ljava/lang/Object;

    .line 108
    invoke-static {v1, v5, v15}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xb

    aput-object v5, v3, v15

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 110
    iget-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->t:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aget-object v14, v3, v5

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    const/16 v2, 0xc

    const/16 v14, 0x9

    const/16 v15, 0xb

    goto :goto_1

    .line 113
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->l:I

    .line 115
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->m:I

    .line 116
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    .line 118
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->u:Ljava/util/HashMap;

    const/16 v2, 0x1f

    new-array v3, v2, [Ljava/lang/String;

    .line 119
    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date1:I

    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v1, v5, v14}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date2:I

    new-array v14, v4, [Ljava/lang/Object;

    .line 120
    invoke-static {v1, v5, v14}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date3:I

    new-array v14, v4, [Ljava/lang/Object;

    .line 121
    invoke-static {v1, v5, v14}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date4:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 122
    invoke-static {v1, v5, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date5:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 123
    invoke-static {v1, v5, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date6:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 124
    invoke-static {v1, v5, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date7:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 125
    invoke-static {v1, v5, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v11

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date8:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 126
    invoke-static {v1, v5, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v12

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date9:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 127
    invoke-static {v1, v5, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v13

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date10:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 128
    invoke-static {v1, v5, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x9

    aput-object v5, v3, v7

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date11:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 129
    invoke-static {v1, v5, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xa

    aput-object v5, v3, v7

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date12:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 130
    invoke-static {v1, v5, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xb

    aput-object v5, v3, v7

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date13:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 131
    invoke-static {v1, v5, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xc

    aput-object v5, v3, v7

    const/16 v5, 0xd

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date14:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 132
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0xe

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date15:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 133
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0xf

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date16:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 134
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x10

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date17:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 135
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x11

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date18:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 136
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x12

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date19:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 137
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x13

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date20:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 138
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x14

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date21:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 139
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x15

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date22:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 140
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x16

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date23:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 141
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x17

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date24:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 142
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x18

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date25:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 143
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x19

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date26:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 144
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x1a

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date27:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 145
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x1b

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date28:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 146
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x1c

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date29:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 147
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x1d

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date30:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 148
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/16 v5, 0x1e

    sget v7, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Date31:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 149
    invoke-static {v1, v7, v8}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->i:Ljava/util/ArrayList;

    const/4 v1, 0x1

    :goto_2
    if-gt v1, v2, :cond_2

    .line 153
    iget-object v5, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-gt v6, v2, :cond_3

    .line 157
    iget-object v1, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->u:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v7, v6, -0x1

    aget-object v7, v3, v7

    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 160
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getYearList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->j:Ljava/util/ArrayList;

    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getMonthList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->k:Ljava/util/ArrayList;

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getDayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, -0x1

    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getYearList()Ljava/util/ArrayList;

    move-result-object v3

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getMonthList()Ljava/util/ArrayList;

    move-result-object v5

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 175
    invoke-direct {v0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->setDaySpinner(Ljava/util/List;)V

    .line 176
    invoke-direct {v0, v3}, Lcom/roblox/client/components/RbxBirthdayPicker;->setYearSpinner(Ljava/util/List;)V

    .line 177
    invoke-direct {v0, v5}, Lcom/roblox/client/components/RbxBirthdayPicker;->setMonthSpinner(Ljava/util/List;)V

    .line 179
    iget-object v1, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    new-instance v2, Lcom/roblox/client/components/RbxBirthdayPicker$1;

    invoke-direct {v2, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$1;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 192
    iget-object v1, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    new-instance v2, Lcom/roblox/client/components/RbxBirthdayPicker$2;

    invoke-direct {v2, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$2;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 205
    iget-object v1, v0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    new-instance v2, Lcom/roblox/client/components/RbxBirthdayPicker$3;

    invoke-direct {v2, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$3;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxBirthdayPicker;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/roblox/client/components/RbxBirthdayPicker;)Lcom/roblox/client/components/e;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->h:Lcom/roblox/client/components/e;

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/components/RbxBirthdayPicker;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    return p0
.end method

.method static synthetic d(Lcom/roblox/client/components/RbxBirthdayPicker;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/roblox/client/components/RbxBirthdayPicker;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    return p0
.end method

.method private e()Z
    .locals 4

    .line 345
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    .line 346
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    .line 349
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    if-eq v1, v3, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->h()V

    .line 353
    :cond_0
    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private f()Z
    .locals 4

    .line 360
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    .line 361
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    .line 363
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->h()V

    .line 366
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    if-eq v1, v3, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->j()V

    .line 370
    :cond_0
    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method static synthetic f(Lcom/roblox/client/components/RbxBirthdayPicker;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/roblox/client/components/RbxBirthdayPicker;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    return p0
.end method

.method private g()Z
    .locals 4

    .line 377
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    .line 378
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    .line 380
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->j()V

    .line 383
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    if-eq v1, v3, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->i()V

    .line 387
    :cond_0
    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private getDayList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 473
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 474
    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->l:I

    iget v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->m:I

    if-ne v1, v0, :cond_0

    .line 475
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    goto :goto_0

    .line 478
    :cond_0
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f

    .line 481
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->i:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private getMonthList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-gt v1, v2, :cond_0

    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getYearList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->l:I

    :goto_0
    iget v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->l:I

    add-int/lit8 v2, v2, -0x64

    if-lt v1, v2, :cond_0

    .line 488
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic h(Lcom/roblox/client/components/RbxBirthdayPicker;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->s:I

    return p0
.end method

.method private h()V
    .locals 6

    .line 392
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getDayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 394
    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 395
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 398
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 399
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 400
    iget v5, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 402
    invoke-direct {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->setDaySpinner(Ljava/util/List;)V

    .line 404
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    if-le v0, v4, :cond_1

    .line 405
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    :cond_1
    if-ne v5, v3, :cond_2

    .line 408
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/roblox/client/components/RbxBirthdayPicker;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->r:I

    return p0
.end method

.method private i()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->j:Ljava/util/ArrayList;

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->j:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->setYearSpinner(Ljava/util/List;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 6

    .line 433
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 434
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    iget v3, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->l:I

    if-ne v0, v3, :cond_0

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->k:Ljava/util/ArrayList;

    iget v4, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->m:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getMonthList()Ljava/util/ArrayList;

    move-result-object v0

    .line 442
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 445
    :cond_1
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    iget v3, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->l:I

    if-ne v0, v3, :cond_2

    .line 447
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->k:Ljava/util/ArrayList;

    iget v3, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->m:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->k:Ljava/util/ArrayList;

    .line 454
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 455
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 456
    iget v5, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 458
    invoke-direct {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->setMonthSpinner(Ljava/util/List;)V

    .line 460
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    if-le v0, v4, :cond_3

    .line 461
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    :cond_3
    if-ne v5, v1, :cond_4

    .line 464
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_2
    return-void
.end method

.method private setDaySpinner(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 502
    new-instance v0, Lcom/roblox/client/components/RbxBirthdayPicker$a;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$g;->rbx_spinner_top:I

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;Landroid/content/Context;ILjava/util/List;)V

    .line 503
    sget p1, Lcom/roblox/client/o$g;->rbx_spinner_item:I

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->setDropDownViewResource(I)V

    const-string p1, "--"

    .line 504
    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(Ljava/lang/String;)V

    .line 505
    iget-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(Ljava/util/HashMap;)V

    .line 506
    iget-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setMonthSpinner(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 510
    new-instance v0, Lcom/roblox/client/components/RbxBirthdayPicker$a;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$g;->rbx_spinner_top:I

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;Landroid/content/Context;ILjava/util/List;)V

    .line 511
    sget p1, Lcom/roblox/client/o$g;->rbx_spinner_item:I

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->setDropDownViewResource(I)V

    const-string p1, "--"

    .line 512
    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(Ljava/lang/String;)V

    .line 513
    iget-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(Ljava/util/HashMap;)V

    .line 514
    iget-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setYearSpinner(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 518
    new-instance v0, Lcom/roblox/client/components/RbxBirthdayPicker$a;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$g;->rbx_spinner_top:I

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;Landroid/content/Context;ILjava/util/List;)V

    .line 519
    sget p1, Lcom/roblox/client/o$g;->rbx_spinner_item:I

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->setDropDownViewResource(I)V

    const-string p1, "----"

    .line 520
    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 291
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->e:Landroid/widget/LinearLayout;

    sget v1, Lcom/roblox/client/o$e;->rbx_bg_gender_full_error:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 293
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->f:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->f:Lcom/roblox/client/components/RbxTextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    invoke-static/range {v1 .. v6}, Lcom/roblox/client/components/g;->a(Landroid/view/View;IFFJ)V

    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 0

    .line 254
    iput p3, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    .line 255
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->i()V

    .line 257
    iput p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    .line 258
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->j()V

    .line 260
    iput p2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    .line 261
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->h()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->e:Landroid/widget/LinearLayout;

    sget v1, Lcom/roblox/client/o$e;->rbx_bg_gender_full_success:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 305
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->f:Lcom/roblox/client/components/RbxTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 317
    invoke-static {p0}, Lcom/roblox/client/components/g;->a(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 320
    new-instance v0, Lcom/roblox/client/components/RbxBirthdayPicker$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/components/RbxBirthdayPicker$4;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;)V

    .line 327
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 329
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 333
    invoke-static {p0}, Lcom/roblox/client/components/g;->b(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 334
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 336
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 337
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getDay()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRbxDateChangedListener()Lcom/roblox/client/components/e;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->h:Lcom/roblox/client/components/e;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 240
    instance-of v0, p1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;

    if-nez v0, :cond_0

    .line 241
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 245
    :cond_0
    check-cast p1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;

    .line 246
    invoke-virtual {p1}, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 249
    iget v0, p1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->b:I

    iget v1, p1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->a:I

    iget p1, p1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->c:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/roblox/client/components/RbxBirthdayPicker;->a(III)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 227
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;

    invoke-direct {v1, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 231
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    iput v0, v1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->b:I

    .line 232
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    iput v0, v1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->a:I

    .line 233
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    iput v0, v1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->c:I

    return-object v1
.end method

.method public setRbxDateChangedListener(Lcom/roblox/client/components/e;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->h:Lcom/roblox/client/components/e;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->g:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->g:Lcom/roblox/client/components/RbxTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxTextView;->setVisibility(I)V

    goto :goto_1

    .line 272
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->g:Lcom/roblox/client/components/RbxTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxTextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->g:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxTextView;->setTextColor(I)V

    return-void
.end method
