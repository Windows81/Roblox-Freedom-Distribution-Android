.class public Lcom/google/ads/interactivemedia/v3/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/ab$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/j$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/ads/interactivemedia/v3/impl/x;

.field private c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

.field private d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

.field private f:Landroid/content/Context;

.field private g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

.field private h:Lcom/google/ads/interactivemedia/v3/impl/j$a;

.field private i:Lcom/google/ads/interactivemedia/v3/impl/z;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/z;->b()Lcom/google/ads/interactivemedia/v3/impl/w$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/w$a;->a:Lcom/google/ads/interactivemedia/v3/impl/w$a;

    if-eq v0, v1, :cond_0

    .line 47
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/z;->b()Lcom/google/ads/interactivemedia/v3/impl/w$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/w$a;->b:Lcom/google/ads/interactivemedia/v3/impl/w$a;

    if-eq v0, v1, :cond_0

    .line 48
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 49
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/z;->b()Lcom/google/ads/interactivemedia/v3/impl/w$a;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x32

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "AdsManagerUi is used for an unsupported UI style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->i:Lcom/google/ads/interactivemedia/v3/impl/z;

    .line 52
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 53
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->f:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->a:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 56
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/j$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/j;Lcom/google/ads/interactivemedia/v3/impl/j$1;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->h:Lcom/google/ads/interactivemedia/v3/impl/j$a;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->i:Lcom/google/ads/interactivemedia/v3/impl/z;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/z;->b()Lcom/google/ads/interactivemedia/v3/impl/w$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/w$a;->a:Lcom/google/ads/interactivemedia/v3/impl/w$a;

    if-ne v0, v1, :cond_0

    .line 96
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/a/d;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)Lcom/google/ads/interactivemedia/v3/impl/a/d;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/a/e;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/a/e;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;Lcom/google/ads/interactivemedia/v3/impl/x;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    .line 98
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/impl/x$d;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->h:Lcom/google/ads/interactivemedia/v3/impl/j$a;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Lcom/google/ads/interactivemedia/v3/impl/a/e$a;)V

    .line 100
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/a/f;-><init>(Lcom/google/ads/interactivemedia/v3/impl/x;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

    .line 105
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/f;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/j;)Lcom/google/ads/interactivemedia/v3/impl/x;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b()V

    .line 80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    .line 82
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    .line 88
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/f;->b()V

    .line 85
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->e:Lcom/google/ads/interactivemedia/v3/impl/a/f;

    goto :goto_0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->d:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 114
    :cond_0
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/j;->a()V

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/b;->isLinear()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    .line 73
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    .line 75
    :cond_1
    return-void
.end method
