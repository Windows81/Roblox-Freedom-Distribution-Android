.class public Lcom/google/ads/interactivemedia/v3/impl/a/e;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/ads/interactivemedia/v3/impl/ab$b;
.implements Lcom/google/ads/interactivemedia/v3/impl/x$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/a/e$b;,
        Lcom/google/ads/interactivemedia/v3/impl/a/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/a/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:F

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/x;

.field private f:Z

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

.field private j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

.field private k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

.field private l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;Lcom/google/ads/interactivemedia/v3/impl/x;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/a/e;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;Lcom/google/ads/interactivemedia/v3/impl/x;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/a/a;Lcom/google/ads/interactivemedia/v3/impl/a/b;)V

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;Lcom/google/ads/interactivemedia/v3/impl/x;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/a/a;Lcom/google/ads/interactivemedia/v3/impl/a/b;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->f:Z

    .line 85
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 86
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    .line 88
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    .line 89
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

    .line 90
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->c:F

    .line 92
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d(Landroid/content/Context;)V

    .line 93
    iget-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/impl/a/d;->b:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->c(Landroid/content/Context;)V

    .line 96
    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->f:Z

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Z)V

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/a/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->f:Z

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a(Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00bb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->b(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Landroid/content/Context;)V

    .line 133
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    .line 134
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/impl/a/d;->r:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->c:F

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/c;->a(IF)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v0, v4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 140
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 145
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/impl/a/d;->s:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->c:F

    .line 148
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/a/c;->a(IF)I

    move-result v1

    .line 147
    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 149
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->addView(Landroid/view/View;)V

    .line 156
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b(Landroid/content/Context;)V

    .line 160
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/a/e$1;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/a/e$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/a/e;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a(Lcom/google/ads/interactivemedia/v3/impl/a/a$a;)V

    .line 172
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    .prologue
    .line 100
    return-object p0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 274
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a/b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/b;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

    .line 275
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 201
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->m:I

    .line 202
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->n:I

    .line 203
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/impl/a/d;->m:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/a/d;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/w$b;->i18n:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$c;->learnMore:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 208
    :cond_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->b:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    .line 210
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 211
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 212
    const-string v1, "seconds"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$b;->i18n:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/w$c;->preSkipButton:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 221
    :cond_1
    :goto_0
    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->setVisibility(I)V

    .line 222
    return-void

    .line 216
    :cond_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->a:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    .line 217
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 226
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v2

    sub-float v2, v0, v2

    .line 230
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->g:F

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_3

    move v0, v1

    .line 231
    :goto_1
    if-eqz v0, :cond_2

    .line 232
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 233
    const-string v4, "minutes"

    float-to-int v5, v2

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v4, "seconds"

    float-to-int v5, v2

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v4, "adPosition"

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v4, "totalAds"

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->n:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/impl/w$b;->i18n:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/impl/w$c;->adRemainingTime:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 240
    :cond_2
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->g:F

    .line 241
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->b:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    if-ne v2, v3, :cond_0

    .line 244
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v3

    sub-float/2addr v2, v3

    .line 245
    cmpg-float v3, v2, v9

    if-gtz v3, :cond_4

    .line 246
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/w$b;->i18n:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$c;->skipButton:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    goto/16 :goto_0

    .line 230
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 248
    :cond_4
    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 250
    const-string v1, "seconds"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$b;->i18n:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/w$c;->preSkipButton:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/a/e$a;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$2;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/w$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/a/b;->a(Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->c:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    .line 122
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$a;

    .line 123
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e$a;->b()V

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->f:Z

    .line 258
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->setVisibility(I)V

    .line 262
    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a/a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    .line 279
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->c:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$a;

    .line 268
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e$a;->a()V

    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method
