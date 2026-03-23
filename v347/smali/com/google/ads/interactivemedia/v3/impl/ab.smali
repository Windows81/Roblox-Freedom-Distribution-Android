.class public abstract Lcom/google/ads/interactivemedia/v3/impl/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/ab$a;,
        Lcom/google/ads/interactivemedia/v3/impl/ab$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/ab$a;

.field protected final b:J

.field protected c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/ab$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/ab;-><init>(Lcom/google/ads/interactivemedia/v3/impl/ab$a;J)V

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/ab$a;J)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->c:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->d:Ljava/util/List;

    .line 51
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:J

    .line 52
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Lcom/google/ads/interactivemedia/v3/impl/ab$a;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ab$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$a;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Lcom/google/ads/interactivemedia/v3/impl/ab$a;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/ab$b;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 68
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->c:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->c:Z

    .line 72
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Lcom/google/ads/interactivemedia/v3/impl/ab$a;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->b(I)Z

    goto :goto_0
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/impl/ab$b;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->c:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->c:Z

    .line 78
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Lcom/google/ads/interactivemedia/v3/impl/ab$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->c(I)Z

    .line 80
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return v4

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Lcom/google/ads/interactivemedia/v3/impl/ab$a;

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->a(I)V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v1

    .line 90
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/ab$b;

    .line 91
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$b;->a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    goto :goto_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Lcom/google/ads/interactivemedia/v3/impl/ab$a;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:J

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->a(IJ)Z

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
