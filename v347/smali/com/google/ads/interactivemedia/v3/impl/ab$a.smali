.class public Lcom/google/ads/interactivemedia/v3/impl/ab$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->a:Landroid/os/Handler;

    .line 113
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    return-void
.end method

.method protected a(IJ)Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method protected b(I)Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method protected c(I)Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->a:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
