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

.field private g:Lcom/roblox/client/components/h;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "RbxBirthdayPicker"

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->a:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    .line 50
    iput v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    .line 51
    iput v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string v0, "RbxBirthdayPicker"

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->a:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    .line 50
    iput v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    .line 51
    iput v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/RbxBirthdayPicker;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method private a(II)I
    .locals 2

    .prologue
    const/16 v0, 0x1c

    .line 499
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 500
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 503
    :cond_1
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    .line 505
    :cond_2
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 506
    :cond_3
    const/16 v0, 0x1e

    goto :goto_0

    .line 509
    :cond_4
    const/16 v0, 0x1f

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0a0090

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    :goto_0
    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    .line 77
    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    .line 78
    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    .line 79
    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->e:Landroid/widget/LinearLayout;

    .line 80
    const v0, 0x7f080158

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->f:Lcom/roblox/client/components/RbxTextView;

    .line 82
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    .line 83
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f05001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->r:I

    .line 85
    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->s:Ljava/util/HashMap;

    .line 89
    const/16 v0, 0xc

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e00b2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 90
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e00b1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 91
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e00b5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    const/4 v0, 0x3

    .line 92
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    .line 93
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 94
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e00b4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    const/4 v0, 0x6

    .line 95
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    .line 96
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    .line 97
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x9

    .line 98
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xa

    .line 99
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xb

    .line 100
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    .line 101
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 102
    iget-object v4, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->s:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0a008f

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 105
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->k:I

    .line 107
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->l:I

    .line 108
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->m:I

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->t:Ljava/util/HashMap;

    .line 111
    const/16 v0, 0x1f

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0087

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 112
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0092

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 113
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e009d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    const/4 v0, 0x3

    .line 114
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    .line 115
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 116
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e00a2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    const/4 v0, 0x6

    .line 117
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    .line 118
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    .line 119
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x9

    .line 120
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xa

    .line 121
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xb

    .line 122
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xc

    .line 123
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xd

    .line 124
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xe

    .line 125
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xf

    .line 126
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x10

    .line 127
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e008f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x11

    .line 128
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x12

    .line 129
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x13

    .line 130
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x14

    .line 131
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x15

    .line 132
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x16

    .line 133
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x17

    .line 134
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x18

    .line 135
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x19

    .line 136
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x1a

    .line 137
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x1b

    .line 138
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x1c

    .line 139
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x1d

    .line 140
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x1e

    .line 141
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->h:Ljava/util/ArrayList;

    move v0, v2

    .line 143
    :goto_2
    const/16 v4, 0x1f

    if-gt v0, v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 147
    :goto_3
    array-length v2, v3

    if-gt v0, v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->t:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 151
    :cond_3
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getYearList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->i:Ljava/util/ArrayList;

    .line 152
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getMonthList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->j:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getDayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 158
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 160
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getYearList()Ljava/util/ArrayList;

    move-result-object v2

    .line 161
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 163
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getMonthList()Ljava/util/ArrayList;

    move-result-object v3

    .line 164
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 166
    invoke-direct {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->setDaySpinner(Ljava/util/List;)V

    .line 167
    invoke-direct {p0, v2}, Lcom/roblox/client/components/RbxBirthdayPicker;->setYearSpinner(Ljava/util/List;)V

    .line 168
    invoke-direct {p0, v3}, Lcom/roblox/client/components/RbxBirthdayPicker;->setMonthSpinner(Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    new-instance v1, Lcom/roblox/client/components/RbxBirthdayPicker$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxBirthdayPicker$1;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 183
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    new-instance v1, Lcom/roblox/client/components/RbxBirthdayPicker$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxBirthdayPicker$2;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 196
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    new-instance v1, Lcom/roblox/client/components/RbxBirthdayPicker$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxBirthdayPicker$3;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 209
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxBirthdayPicker;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/roblox/client/components/RbxBirthdayPicker;)Lcom/roblox/client/components/h;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->g:Lcom/roblox/client/components/h;

    return-object v0
.end method

.method static synthetic c(Lcom/roblox/client/components/RbxBirthdayPicker;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    return v0
.end method

.method static synthetic d(Lcom/roblox/client/components/RbxBirthdayPicker;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/roblox/client/components/RbxBirthdayPicker;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    return v0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 314
    iget v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    .line 315
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    .line 318
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    if-eq v0, v3, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->h()V

    .line 322
    :cond_0
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    if-eq v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 329
    iget v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    .line 330
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    .line 332
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->h()V

    .line 335
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    if-eq v0, v3, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->j()V

    .line 339
    :cond_0
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    if-eq v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/roblox/client/components/RbxBirthdayPicker;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/roblox/client/components/RbxBirthdayPicker;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    return v0
.end method

.method private g()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 346
    iget v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    .line 347
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    .line 349
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->j()V

    .line 352
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    if-eq v0, v3, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->i()V

    .line 356
    :cond_0
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    if-eq v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getDayList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    const/16 v0, 0x1f

    .line 442
    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 443
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->k:I

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->l:I

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    if-ne v0, v1, :cond_1

    .line 444
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->m:I

    .line 450
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->h:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 451
    return-object v1

    .line 447
    :cond_1
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method private getMonthList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 464
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xb

    if-gt v0, v2, :cond_0

    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    return-object v1
.end method

.method private getYearList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->k:I

    :goto_0
    iget v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->k:I

    add-int/lit8 v2, v2, -0x64

    if-lt v0, v2, :cond_0

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 459
    :cond_0
    return-object v1
.end method

.method static synthetic h(Lcom/roblox/client/components/RbxBirthdayPicker;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->r:I

    return v0
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 361
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getDayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 363
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    if-ne v0, v4, :cond_0

    .line 364
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 367
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 368
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 369
    iget v3, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 371
    invoke-direct {p0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->setDaySpinner(Ljava/util/List;)V

    .line 373
    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    if-le v1, v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 382
    :goto_0
    return-void

    .line 376
    :cond_1
    if-ne v3, v4, :cond_2

    .line 377
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/roblox/client/components/RbxBirthdayPicker;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->q:I

    return v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->i:Ljava/util/ArrayList;

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->i:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->setYearSpinner(Ljava/util/List;)V

    .line 390
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 400
    .line 402
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    if-ne v0, v5, :cond_1

    .line 403
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->k:I

    if-ne v0, v1, :cond_0

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->j:Ljava/util/ArrayList;

    iget v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->l:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 411
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v1, v0

    .line 423
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 424
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    iget v3, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 427
    invoke-direct {p0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->setMonthSpinner(Ljava/util/List;)V

    .line 429
    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    if-le v1, v0, :cond_3

    .line 430
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 438
    :goto_2
    return-void

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getMonthList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 414
    :cond_1
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->k:I

    if-ne v0, v1, :cond_2

    .line 416
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->j:Ljava/util/ArrayList;

    iget v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->l:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->j:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_1

    .line 432
    :cond_3
    if-ne v3, v5, :cond_4

    .line 433
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 436
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2
.end method

.method private setDaySpinner(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v0, Lcom/roblox/client/components/RbxBirthdayPicker$a;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0094

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;Landroid/content/Context;ILjava/util/List;)V

    .line 472
    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->setDropDownViewResource(I)V

    .line 473
    const-string v1, "--"

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(Ljava/util/HashMap;)V

    .line 475
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 476
    return-void
.end method

.method private setMonthSpinner(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Lcom/roblox/client/components/RbxBirthdayPicker$a;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0094

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;Landroid/content/Context;ILjava/util/List;)V

    .line 480
    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->setDropDownViewResource(I)V

    .line 481
    const-string v1, "--"

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(Ljava/util/HashMap;)V

    .line 483
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 484
    return-void
.end method

.method private setYearSpinner(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    new-instance v0, Lcom/roblox/client/components/RbxBirthdayPicker$a;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0094

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;Landroid/content/Context;ILjava/util/List;)V

    .line 488
    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->setDropDownViewResource(I)V

    .line 489
    const-string v1, "----"

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 491
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 260
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0707db

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 262
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->f:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->f:Lcom/roblox/client/components/RbxTextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xc8

    invoke-static/range {v0 .. v5}, Lcom/roblox/client/components/l;->a(Landroid/view/View;IFFJ)V

    .line 265
    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 0

    .prologue
    .line 245
    iput p3, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    .line 246
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->i()V

    .line 248
    iput p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    .line 249
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->j()V

    .line 251
    iput p2, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    .line 252
    invoke-direct {p0}, Lcom/roblox/client/components/RbxBirthdayPicker;->h()V

    .line 253
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0707dc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 274
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->f:Lcom/roblox/client/components/RbxTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setVisibility(I)V

    .line 275
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 286
    invoke-static {p0}, Lcom/roblox/client/components/l;->a(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 287
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    new-instance v0, Lcom/roblox/client/components/RbxBirthdayPicker$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/components/RbxBirthdayPicker$4;-><init>(Lcom/roblox/client/components/RbxBirthdayPicker;)V

    .line 296
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-static {p0}, Lcom/roblox/client/components/l;->b(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 303
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 305
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 306
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 307
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 308
    return-void
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 255
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

    .prologue
    .line 256
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRbxDateChangedListener()Lcom/roblox/client/components/h;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->g:Lcom/roblox/client/components/h;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->d:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 231
    instance-of v0, p1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;

    if-nez v0, :cond_0

    .line 232
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 241
    :goto_0
    return-void

    .line 236
    :cond_0
    check-cast p1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;

    .line 237
    invoke-virtual {p1}, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 240
    iget v0, p1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->b:I

    iget v1, p1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->a:I

    iget v2, p1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->c:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/roblox/client/components/RbxBirthdayPicker;->a(III)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;

    invoke-direct {v1, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 222
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->o:I

    iput v0, v1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->b:I

    .line 223
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->n:I

    iput v0, v1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->a:I

    .line 224
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->p:I

    iput v0, v1, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->c:I

    .line 225
    return-object v1
.end method

.method public setRbxDateChangedListener(Lcom/roblox/client/components/h;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker;->g:Lcom/roblox/client/components/h;

    .line 279
    return-void
.end method
