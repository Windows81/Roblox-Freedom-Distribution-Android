.class public Lcom/roblox/client/chat/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/chat/d$b;,
        Lcom/roblox/client/chat/d$d;,
        Lcom/roblox/client/chat/d$a;,
        Lcom/roblox/client/chat/d$e;,
        Lcom/roblox/client/chat/d$c;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Landroid/content/Context;

.field private g:Landroid/support/v4/app/Fragment;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/roblox/client/chat/a/c;

.field private n:Lcom/roblox/client/chat/a/d;

.field private o:Ljava/util/GregorianCalendar;

.field private p:Ljava/util/GregorianCalendar;

.field private q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/roblox/client/components/c;

.field private s:J

.field private t:Lcom/roblox/client/chat/d$c;

.field private u:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput v2, p0, Lcom/roblox/client/chat/d;->a:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/roblox/client/chat/d;->b:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/roblox/client/chat/d;->c:I

    .line 58
    iput v3, p0, Lcom/roblox/client/chat/d;->d:I

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/roblox/client/chat/d;->e:I

    .line 68
    iput v2, p0, Lcom/roblox/client/chat/d;->j:I

    .line 69
    iput v2, p0, Lcom/roblox/client/chat/d;->k:I

    .line 70
    iput v2, p0, Lcom/roblox/client/chat/d;->l:I

    .line 75
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/d;->o:Ljava/util/GregorianCalendar;

    .line 76
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/d;->p:Ljava/util/GregorianCalendar;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/d;->q:Ljava/util/HashSet;

    .line 92
    iput-object p1, p0, Lcom/roblox/client/chat/d;->g:Landroid/support/v4/app/Fragment;

    .line 93
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/chat/d;->h:I

    .line 95
    iget-object v0, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/chat/d;->i:I

    .line 97
    iput v2, p0, Lcom/roblox/client/chat/d;->j:I

    .line 98
    iget-object v0, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/roblox/client/chat/d;->k:I

    .line 99
    iget-object v0, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/roblox/client/p;->a(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/roblox/client/chat/d;->l:I

    .line 101
    invoke-static {}, Lcom/roblox/client/b;->M()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/roblox/client/chat/d;->s:J

    .line 102
    instance-of v0, p1, Lcom/roblox/client/chat/f;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lcom/roblox/client/chat/f;

    iput-object p1, p0, Lcom/roblox/client/chat/d;->t:Lcom/roblox/client/chat/d$c;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/SourceSansPro-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/d;->u:Landroid/graphics/Typeface;

    .line 107
    return-void
.end method

.method private a(ILcom/roblox/client/chat/a/h;)J
    .locals 4

    .prologue
    .line 481
    const-wide/16 v0, -0x1

    .line 482
    if-lez p1, :cond_0

    .line 483
    if-eqz p2, :cond_1

    .line 484
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/d;->a(I)Lcom/roblox/client/chat/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/roblox/client/chat/a/h;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 489
    :cond_0
    :goto_0
    return-wide v0

    .line 486
    :cond_1
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/d;->a(I)Lcom/roblox/client/chat/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->b()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/chat/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 531
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getGameLinkPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 532
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 533
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    if-nez v0, :cond_0

    .line 535
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 537
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 538
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 539
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 540
    invoke-direct {p0, v4}, Lcom/roblox/client/chat/d;->b(Ljava/lang/String;)Landroid/text/style/ClickableSpan;

    move-result-object v4

    const/16 v5, 0x21

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 543
    :cond_1
    return-object v0
.end method

.method private a(Landroid/widget/ImageButton;Lcom/roblox/client/chat/a/h;)V
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 447
    new-instance v1, Lcom/roblox/client/chat/d$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/roblox/client/chat/d$2;-><init>(Lcom/roblox/client/chat/d;Landroid/widget/ImageButton;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 460
    new-instance v0, Lcom/roblox/client/chat/d$3;

    invoke-direct {v0, p0, p2}, Lcom/roblox/client/chat/d$3;-><init>(Lcom/roblox/client/chat/d;Lcom/roblox/client/chat/a/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/text/style/ClickableSpan;
    .locals 1

    .prologue
    .line 547
    new-instance v0, Lcom/roblox/client/chat/d$4;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/chat/d$4;-><init>(Lcom/roblox/client/chat/d;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 181
    if-nez p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 184
    new-instance v1, Lcom/roblox/client/chat/d$d;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/roblox/client/chat/d$d;-><init>(Lcom/roblox/client/chat/d;Lcom/roblox/client/chat/d$1;)V

    .line 185
    const v0, 0x7f08012e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/roblox/client/chat/d$d;->a:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 189
    :cond_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/d;->a(I)Lcom/roblox/client/chat/a/h;

    move-result-object v1

    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/d$d;

    .line 192
    iget-object v0, v0, Lcom/roblox/client/chat/d$d;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget v1, p0, Lcom/roblox/client/chat/d;->l:I

    iget v2, p0, Lcom/roblox/client/chat/d;->l:I

    iget v3, p0, Lcom/roblox/client/chat/d;->l:I

    invoke-virtual {p0}, Lcom/roblox/client/chat/d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/roblox/client/chat/d;->k:I

    :goto_0
    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 197
    return-object p2

    .line 195
    :cond_1
    iget v0, p0, Lcom/roblox/client/chat/d;->l:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/roblox/client/chat/d;)Lcom/roblox/client/chat/d$c;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/roblox/client/chat/d;->t:Lcom/roblox/client/chat/d$c;

    return-object v0
.end method

.method private c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const v6, 0x7f0600ca

    const/4 v3, 0x0

    .line 202
    if-nez p2, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 205
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/roblox/client/chat/d;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/d$e;

    .line 209
    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0a00a0

    iget-object v5, v0, Lcom/roblox/client/chat/d$e;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 211
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    iget-object v5, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 212
    iget-object v4, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lcom/roblox/client/p;->a(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 213
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v3, v0, Lcom/roblox/client/chat/d$e;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, v0, Lcom/roblox/client/chat/d$e;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    new-instance v0, Lcom/roblox/client/components/c;

    iget-object v1, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    const/16 v3, 0xc8

    const v4, 0x7f05000a

    const v5, 0x7f0600cb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/roblox/client/components/c;-><init>(Landroid/content/Context;Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/roblox/client/chat/d;->r:Lcom/roblox/client/components/c;

    .line 218
    iget-object v0, p0, Lcom/roblox/client/chat/d;->r:Lcom/roblox/client/components/c;

    invoke-virtual {v0}, Lcom/roblox/client/components/c;->a()V

    .line 221
    :cond_0
    return-object v2

    :cond_1
    move v1, v3

    .line 202
    goto :goto_0
.end method

.method static synthetic c(Lcom/roblox/client/chat/d;)Lcom/roblox/client/chat/a/d;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/roblox/client/chat/d;->n:Lcom/roblox/client/chat/a/d;

    return-object v0
.end method

.method static synthetic d(Lcom/roblox/client/chat/d;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/roblox/client/chat/d;->g:Landroid/support/v4/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/roblox/client/chat/a/h;)I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/roblox/client/chat/d;->m:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v0, p1}, Lcom/roblox/client/chat/a/c;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 225
    if-nez p2, :cond_0

    .line 226
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 228
    new-instance v0, Lcom/roblox/client/chat/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/chat/d$a;-><init>(Lcom/roblox/client/chat/d;Lcom/roblox/client/chat/d$1;)V

    .line 229
    iput-object p2, v0, Lcom/roblox/client/chat/d$a;->a:Landroid/view/View;

    .line 230
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/d$a;

    .line 234
    iget-object v0, v0, Lcom/roblox/client/chat/d$a;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    return-object p2
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 16

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p1}, Lcom/roblox/client/chat/d;->a(I)Lcom/roblox/client/chat/a/h;

    move-result-object v7

    .line 241
    if-nez p2, :cond_21

    .line 242
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_b

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0037

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .line 249
    :goto_0
    new-instance v4, Lcom/roblox/client/chat/d$e;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/roblox/client/chat/d$e;-><init>(Lcom/roblox/client/chat/d;Lcom/roblox/client/chat/d$1;)V

    .line 250
    const v2, 0x7f080132

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/roblox/client/chat/d$e;->a:Landroid/widget/TextView;

    .line 251
    const v2, 0x7f080135

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/roblox/client/chat/d$e;->b:Landroid/widget/TextView;

    .line 252
    const v2, 0x7f080133

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    .line 253
    const v2, 0x7f08012f

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/roblox/client/chat/d$e;->d:Landroid/widget/TextView;

    .line 254
    const v2, 0x7f080134

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/roblox/client/chat/d$e;->e:Landroid/widget/ImageView;

    .line 255
    const v2, 0x7f080131

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v4, Lcom/roblox/client/chat/d$e;->f:Landroid/view/View;

    .line 256
    const v2, 0x7f080130

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v4, Lcom/roblox/client/chat/d$e;->g:Landroid/widget/LinearLayout;

    .line 257
    const v2, 0x7f080177

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v4, Lcom/roblox/client/chat/d$e;->h:Landroid/widget/ImageButton;

    .line 258
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 260
    iget-object v2, v4, Lcom/roblox/client/chat/d$e;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, v4, Lcom/roblox/client/chat/d$e;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/roblox/client/chat/d;->u:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 262
    iget-object v2, v4, Lcom/roblox/client/chat/d$e;->a:Landroid/widget/TextView;

    new-instance v4, Lcom/roblox/client/chat/d$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/roblox/client/chat/d$1;-><init>(Lcom/roblox/client/chat/d;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 276
    :cond_0
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/chat/d$e;

    .line 278
    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->n()Ljava/lang/String;

    move-result-object v4

    .line 279
    iget-object v5, v2, Lcom/roblox/client/chat/d$e;->a:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 280
    const-string v5, "Moderated"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 281
    iget-object v5, v2, Lcom/roblox/client/chat/d$e;->a:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_1
    :goto_2
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_3

    iget-object v5, v2, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 295
    iget-object v5, v2, Lcom/roblox/client/chat/d$e;->h:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 297
    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->g()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 299
    const-string v5, "Failure"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->h:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->h:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/roblox/client/chat/d;->a(Landroid/widget/ImageButton;Lcom/roblox/client/chat/a/h;)V

    .line 303
    :cond_2
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/roblox/client/chat/d;->i:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->h()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 323
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roblox/client/chat/d;->n:Lcom/roblox/client/chat/a/d;

    if-eqz v4, :cond_11

    const-string v4, "OneToOneConversation"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/roblox/client/chat/d;->n:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v5}, Lcom/roblox/client/chat/a/d;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    .line 327
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/roblox/client/chat/d;->m:Lcom/roblox/client/chat/a/c;

    add-int/lit8 v6, p1, -0x1

    invoke-static {}, Lcom/roblox/client/chat/a/h;->a()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/roblox/client/chat/a/c;->b(ILjava/util/Set;)Lcom/roblox/client/chat/a/h;

    move-result-object v6

    .line 328
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/roblox/client/chat/d;->m:Lcom/roblox/client/chat/a/c;

    add-int/lit8 v8, p1, 0x1

    invoke-static {}, Lcom/roblox/client/chat/a/h;->a()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/roblox/client/chat/a/c;->a(ILjava/util/Set;)Lcom/roblox/client/chat/a/h;

    move-result-object v8

    .line 330
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/roblox/client/chat/d;->a(ILcom/roblox/client/chat/a/h;)J

    move-result-wide v10

    .line 332
    if-nez p1, :cond_12

    const/4 v5, 0x1

    .line 333
    :goto_5
    if-nez v5, :cond_4

    .line 334
    if-eqz v6, :cond_4

    .line 335
    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->d()J

    move-result-wide v12

    invoke-virtual {v6}, Lcom/roblox/client/chat/a/h;->d()J

    move-result-wide v14

    cmp-long v5, v12, v14

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    .line 339
    :cond_4
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/chat/d;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, p1

    if-ne v0, v6, :cond_14

    const/4 v6, 0x1

    .line 340
    :goto_7
    if-nez v6, :cond_5

    .line 341
    if-eqz v8, :cond_5

    .line 342
    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->d()J

    move-result-wide v12

    invoke-virtual {v8}, Lcom/roblox/client/chat/a/h;->d()J

    move-result-wide v8

    cmp-long v6, v12, v8

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    .line 347
    :cond_5
    :goto_8
    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/roblox/client/chat/d;->s:J

    cmp-long v5, v10, v8

    if-lez v5, :cond_1a

    .line 349
    :cond_6
    iget-object v5, v2, Lcom/roblox/client/chat/d$e;->f:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->d()J

    move-result-wide v8

    .line 352
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/roblox/client/chat/a/n;->a(J)Lcom/roblox/client/chat/a/m;

    move-result-object v5

    .line 354
    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/roblox/client/chat/d;->q:Ljava/util/HashSet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 355
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/roblox/client/chat/d;->q:Ljava/util/HashSet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v12

    new-instance v13, Lcom/roblox/client/h/s;

    const/4 v14, 0x0

    invoke-direct {v13, v8, v9, v14}, Lcom/roblox/client/h/s;-><init>(JZ)V

    invoke-virtual {v12, v13}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 359
    :cond_7
    iget-object v12, v2, Lcom/roblox/client/chat/d$e;->e:Landroid/widget/ImageView;

    if-eqz v12, :cond_8

    .line 360
    iget-object v12, v2, Lcom/roblox/client/chat/d$e;->e:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lcom/roblox/client/chat/a/m;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_16

    .line 363
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    invoke-static {v12}, Lcom/d/a/t;->a(Landroid/content/Context;)Lcom/d/a/t;

    move-result-object v12

    .line 364
    invoke-virtual {v5}, Lcom/roblox/client/chat/a/m;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/d/a/t;->a(Ljava/lang/String;)Lcom/d/a/x;

    move-result-object v12

    .line 365
    invoke-virtual {v12}, Lcom/d/a/x;->b()Lcom/d/a/x;

    move-result-object v12

    const v13, 0x7f070706

    .line 366
    invoke-virtual {v12, v13}, Lcom/d/a/x;->a(I)Lcom/d/a/x;

    move-result-object v12

    iget-object v13, v2, Lcom/roblox/client/chat/d$e;->e:Landroid/widget/ImageView;

    .line 367
    invoke-virtual {v12, v13}, Lcom/d/a/x;->a(Landroid/widget/ImageView;)V

    .line 372
    :goto_9
    iget-object v12, v2, Lcom/roblox/client/chat/d$e;->e:Landroid/widget/ImageView;

    new-instance v13, Lcom/roblox/client/chat/d$b;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v8, v9}, Lcom/roblox/client/chat/d$b;-><init>(Lcom/roblox/client/chat/d;J)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    :cond_8
    iget-object v8, v2, Lcom/roblox/client/chat/d$e;->d:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    .line 377
    if-nez v4, :cond_19

    .line 378
    iget-object v8, v2, Lcom/roblox/client/chat/d$e;->d:Landroid/widget/TextView;

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lcom/roblox/client/chat/a/m;->b()Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v8, v2, Lcom/roblox/client/chat/d$e;->d:Landroid/widget/TextView;

    if-eqz v5, :cond_18

    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    :cond_9
    :goto_c
    if-eqz v6, :cond_1c

    .line 401
    move-object/from16 v0, p0

    iget v4, v0, Lcom/roblox/client/chat/d;->j:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/roblox/client/chat/d;->j:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/roblox/client/chat/d;->j:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/roblox/client/chat/d;->k:I

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 408
    :goto_d
    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/roblox/client/chat/d;->s:J

    cmp-long v4, v10, v4

    if-lez v4, :cond_20

    .line 409
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roblox/client/chat/d;->o:Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roblox/client/chat/d;->p:Ljava/util/GregorianCalendar;

    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->b()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roblox/client/chat/d;->o:Ljava/util/GregorianCalendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/roblox/client/chat/d;->p:Ljava/util/GregorianCalendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_1d

    .line 413
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->b:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v7, v5}, Lcom/roblox/client/chat/a/h;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :goto_e
    iget-object v2, v2, Lcom/roblox/client/chat/d$e;->b:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    :goto_f
    return-object v3

    .line 246
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/roblox/client/chat/d;->f:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0036

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_0

    .line 283
    :cond_c
    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->i()Ljava/lang/String;

    move-result-object v5

    .line 284
    if-eqz v5, :cond_d

    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->j()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 285
    iget-object v6, v2, Lcom/roblox/client/chat/d$e;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/roblox/client/chat/d;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v5, v2, Lcom/roblox/client/chat/d$e;->a:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_2

    .line 288
    :cond_d
    iget-object v6, v2, Lcom/roblox/client/chat/d$e;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 307
    :cond_e
    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->e()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    .line 309
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/roblox/client/chat/d;->h:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    const v5, 0x7f0e0164

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 313
    :cond_f
    invoke-virtual {v7}, Lcom/roblox/client/chat/a/h;->o()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 314
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/roblox/client/chat/d;->h:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    const v5, 0x7f0e0160

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 319
    :cond_10
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->c:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 323
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 332
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 335
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 339
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 342
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 369
    :cond_16
    iget-object v12, v2, Lcom/roblox/client/chat/d$e;->e:Landroid/widget/ImageView;

    const v13, 0x7f070706

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 378
    :cond_17
    const-string v4, ""

    goto/16 :goto_a

    .line 379
    :cond_18
    const/16 v4, 0x8

    goto/16 :goto_b

    .line 382
    :cond_19
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->d:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 388
    :cond_1a
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->f:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->e:Landroid/widget/ImageView;

    if-eqz v4, :cond_1b

    .line 391
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->e:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    :cond_1b
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->d:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    .line 395
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->d:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 404
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/roblox/client/chat/d;->j:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/roblox/client/chat/d;->j:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/roblox/client/chat/d;->j:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/roblox/client/chat/d;->j:I

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_d

    .line 415
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roblox/client/chat/d;->o:Ljava/util/GregorianCalendar;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/roblox/client/chat/d;->p:Ljava/util/GregorianCalendar;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1e

    .line 417
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->b:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/roblox/client/chat/a/h;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 419
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roblox/client/chat/d;->o:Ljava/util/GregorianCalendar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/roblox/client/chat/d;->p:Ljava/util/GregorianCalendar;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roblox/client/chat/d;->o:Ljava/util/GregorianCalendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/roblox/client/chat/d;->p:Ljava/util/GregorianCalendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1f

    .line 421
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->b:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Lcom/roblox/client/chat/a/h;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 425
    :cond_1f
    iget-object v4, v2, Lcom/roblox/client/chat/d$e;->b:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v7, v5}, Lcom/roblox/client/chat/a/h;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 430
    :cond_20
    iget-object v2, v2, Lcom/roblox/client/chat/d$e;->b:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f

    :cond_21
    move-object/from16 v3, p2

    goto/16 :goto_1
.end method

.method public a(I)Lcom/roblox/client/chat/a/h;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/roblox/client/chat/d;->m:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v0, p1}, Lcom/roblox/client/chat/a/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/roblox/client/chat/d;->r:Lcom/roblox/client/components/c;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/roblox/client/chat/d;->r:Lcom/roblox/client/components/c;

    invoke-virtual {v0}, Lcom/roblox/client/components/c;->c()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/chat/d;->r:Lcom/roblox/client/components/c;

    .line 441
    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/client/chat/a/c;)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lcom/roblox/client/chat/d;->m:Lcom/roblox/client/chat/a/c;

    .line 130
    iget-object v0, p0, Lcom/roblox/client/chat/d;->q:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 131
    return-void
.end method

.method public a(Lcom/roblox/client/chat/a/d;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/roblox/client/chat/d;->n:Lcom/roblox/client/chat/a/d;

    .line 135
    iget-object v0, p0, Lcom/roblox/client/chat/d;->q:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 136
    return-void
.end method

.method public b(I)Z
    .locals 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/roblox/client/chat/d;->m:Lcom/roblox/client/chat/a/c;

    add-int/lit8 v1, p1, -0x1

    invoke-static {}, Lcom/roblox/client/chat/a/h;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/chat/a/c;->b(ILjava/util/Set;)Lcom/roblox/client/chat/a/h;

    move-result-object v0

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/chat/d;->a(ILcom/roblox/client/chat/a/h;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/roblox/client/chat/d;->s:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/roblox/client/chat/d;->m:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/c;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/d;->a(I)Lcom/roblox/client/chat/a/h;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 154
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/d;->a(I)Lcom/roblox/client/chat/a/h;

    move-result-object v2

    .line 495
    instance-of v3, v2, Lcom/roblox/client/chat/a/k;

    if-eqz v3, :cond_1

    .line 496
    const/4 v0, 0x2

    .line 507
    :cond_0
    :goto_0
    return v0

    .line 498
    :cond_1
    instance-of v3, v2, Lcom/roblox/client/chat/a/j;

    if-eqz v3, :cond_2

    .line 499
    const/4 v0, 0x3

    goto :goto_0

    .line 501
    :cond_2
    invoke-static {}, Lcom/roblox/client/chat/a/h;->a()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lcom/roblox/client/chat/a/h;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 503
    const/4 v0, -0x1

    goto :goto_0

    .line 506
    :cond_3
    invoke-virtual {v2}, Lcom/roblox/client/chat/a/h;->d()J

    move-result-wide v2

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    move v2, v0

    .line 507
    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    .line 506
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/d;->getItemViewType(I)I

    move-result v0

    .line 166
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0, p1, p2, p3}, Lcom/roblox/client/chat/d;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 169
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/chat/d;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/chat/d;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/roblox/client/chat/d;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x4

    return v0
.end method
