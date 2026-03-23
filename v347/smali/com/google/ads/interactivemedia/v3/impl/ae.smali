.class public Lcom/google/ads/interactivemedia/v3/impl/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;
.implements Lcom/google/ads/interactivemedia/v3/impl/ab$b;
.implements Lcom/google/ads/interactivemedia/v3/impl/af;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/ae$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

.field private b:Lcom/google/ads/interactivemedia/v3/impl/x;

.field private c:Lcom/google/ads/interactivemedia/v3/impl/h;

.field private d:Lcom/google/ads/interactivemedia/v3/impl/s;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/j;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/ae;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/s;Lcom/google/ads/interactivemedia/v3/impl/j;Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/s;Lcom/google/ads/interactivemedia/v3/impl/j;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-interface {p5}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 73
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Server-side ad insertion player was not provided."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->c:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 78
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->f:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 80
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/s;

    .line 81
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/s;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/s;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 83
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/z;->a()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/s;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/s;

    .line 85
    :cond_1
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    .line 86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    if-nez v0, :cond_2

    .line 88
    :try_start_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/j;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/j;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/j;
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/api/AdError; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_2
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "IMASDK"

    const-string v2, "Error creating ad UI: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/w$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->f:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 195
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/s;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/s;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$b;)V

    .line 100
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/s;

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/s;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$b;)V

    .line 101
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/w$c;->timeupdate:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ae;->a(Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 139
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/w$c;Lcom/google/ads/interactivemedia/v3/impl/data/j;)Z
    .locals 6

    .prologue
    .line 112
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ae$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/w$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 114
    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/impl/data/j;->streamUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/s;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/s;->b()V

    .line 116
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/impl/data/j;->streamUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->loadUrl(Ljava/lang/String;)V

    .line 127
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->c:Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v5, "Load message must contain video url."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/j;->a()V

    .line 144
    return-void
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/impl/w$c;Lcom/google/ads/interactivemedia/v3/impl/data/j;)Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdBreakStarted()V

    .line 178
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdBreakEnded()V

    .line 183
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    const-string v0, "SDK_DEBUG"

    const-string v1, "Destroying StreamVideoDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/ae;->g()V

    .line 155
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 156
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 157
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/s;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/s;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/s;->b(Lcom/google/ads/interactivemedia/v3/impl/ab$b;)V

    .line 159
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/s;

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/s;->b(Lcom/google/ads/interactivemedia/v3/impl/ab$b;)V

    .line 161
    :cond_0
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/s;

    .line 162
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/j;

    .line 163
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;)V

    .line 187
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;)V

    .line 191
    return-void
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    return-object v0
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onUserTextReceived(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/w$c;->timedMetadata:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/ae$a;->create(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/ae$a;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ae;->a(Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/Object;)V

    .line 168
    return-void
.end method
