.class public Lcom/google/ads/interactivemedia/v3/impl/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/af;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

.field private final b:Lcom/google/ads/interactivemedia/v3/impl/f;

.field private final c:Lcom/google/ads/interactivemedia/v3/impl/h;

.field private final d:Lcom/google/ads/interactivemedia/v3/impl/j;

.field private final e:Lcom/google/ads/interactivemedia/v3/impl/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/f;Lcom/google/ads/interactivemedia/v3/impl/j;Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/f;Lcom/google/ads/interactivemedia/v3/impl/j;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-interface {p5}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 55
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Ad Player was not provided."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-eqz p6, :cond_1

    .line 61
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/f;

    .line 67
    :goto_0
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 68
    if-eqz p7, :cond_2

    .line 69
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Lcom/google/ads/interactivemedia/v3/impl/j;

    .line 74
    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/e;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/f;

    invoke-direct {v0, p3, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/e;-><init>(Lcom/google/ads/interactivemedia/v3/impl/x;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/f;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    .line 75
    return-void

    .line 63
    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 65
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/z;->a()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/f;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;J)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/f;

    goto :goto_0

    .line 71
    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/j;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/j;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Lcom/google/ads/interactivemedia/v3/impl/j;

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/f;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$b;)V

    .line 80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/f;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$b;)V

    .line 81
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 140
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/w$c;Lcom/google/ads/interactivemedia/v3/impl/data/j;)Z
    .locals 6

    .prologue
    .line 90
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/w$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->playAd()V

    .line 119
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->pauseAd()V

    goto :goto_1

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->resumeAd()V

    goto :goto_1

    .line 101
    :pswitch_3
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/impl/data/j;->videoUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/impl/data/j;->videoUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->loadAd(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v5, "Load message must contain video url."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_1

    .line 110
    :pswitch_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/f;->b()V

    goto :goto_1

    .line 113
    :pswitch_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/f;->c()V

    goto :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->stopAd()V

    .line 145
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/j;->a()V

    .line 146
    return-void
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/impl/w$c;Lcom/google/ads/interactivemedia/v3/impl/data/j;)Z
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/w$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    .line 134
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "SDK_DEBUG"

    const-string v1, "Destroying NativeVideoDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/f;->c()V

    .line 167
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/f;->b(Lcom/google/ads/interactivemedia/v3/impl/ab$b;)V

    .line 168
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Lcom/google/ads/interactivemedia/v3/impl/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/f;->b(Lcom/google/ads/interactivemedia/v3/impl/ab$b;)V

    .line 169
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/j;->a()V

    .line 170
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    .line 171
    return-void
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    return-object v0
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/j;->a()V

    .line 161
    return-void
.end method
