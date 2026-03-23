.class public Lcom/google/ads/interactivemedia/v3/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
.implements Lcom/google/ads/interactivemedia/v3/impl/ab$b;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/impl/x;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/ads/interactivemedia/v3/impl/f;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/x;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/f;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->c:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->d:Z

    .line 26
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->a:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 27
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->e:Lcom/google/ads/interactivemedia/v3/impl/f;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 80
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 81
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/w$c;->start:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/w$c;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->d:Z

    .line 84
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/w$c;->timeupdate:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/w$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 86
    :cond_1
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/impl/w$c;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/w$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 90
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/impl/w$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/w$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->a:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 96
    return-void
.end method

.method public onEnded()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/w$c;->end:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/w$c;)V

    .line 56
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/w$c;->error:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/w$c;)V

    .line 61
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->e:Lcom/google/ads/interactivemedia/v3/impl/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/f;->c()V

    .line 43
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/w$c;->pause:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/w$c;)V

    .line 44
    return-void
.end method

.method public onPlay()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->d:Z

    .line 37
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->e:Lcom/google/ads/interactivemedia/v3/impl/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/f;->b()V

    .line 50
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/w$c;->play:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/w$c;)V

    .line 51
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 1

    .prologue
    .line 65
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->c:Z

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/w$c;->mute:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/w$c;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->c:Z

    .line 70
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->c:Z

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/w$c;->unmute:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/w$c;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->c:Z

    .line 74
    :cond_1
    return-void
.end method
