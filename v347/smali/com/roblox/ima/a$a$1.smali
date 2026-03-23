.class Lcom/roblox/ima/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/ima/a$a;->onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/ima/a$a;


# direct methods
.method constructor <init>(Lcom/roblox/ima/a$a;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 54
    const-string v0, "AdPlayerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdsLoadedListener::Ad event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/roblox/ima/a$2;->a:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 59
    :pswitch_1
    const-string v0, "IMAVideo"

    const-string v1, "TimeToLoad"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v4, v4, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v4}, Lcom/roblox/ima/a;->a(Lcom/roblox/ima/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 60
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v0, v6}, Lcom/roblox/ima/a;->a(Lcom/roblox/ima/a;Z)Z

    .line 61
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v0}, Lcom/roblox/ima/a;->b(Lcom/roblox/ima/a;)Lcom/roblox/client/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v0}, Lcom/roblox/ima/a;->b(Lcom/roblox/ima/a;)Lcom/roblox/client/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/a;->c()V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v0}, Lcom/roblox/ima/a;->c(Lcom/roblox/ima/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-virtual {v0}, Lcom/roblox/ima/a;->a()V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v0}, Lcom/roblox/ima/a;->d(Lcom/roblox/ima/a;)V

    goto :goto_0

    .line 74
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/ima/a;->b(Lcom/roblox/ima/a;Z)Z

    goto :goto_0

    .line 79
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v0, v6}, Lcom/roblox/ima/a;->b(Lcom/roblox/ima/a;Z)Z

    .line 81
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v0}, Lcom/roblox/ima/a;->b(Lcom/roblox/ima/a;)Lcom/roblox/client/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v0}, Lcom/roblox/ima/a;->b(Lcom/roblox/ima/a;)Lcom/roblox/client/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/a;->a()V

    goto :goto_0

    .line 86
    :pswitch_5
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v0}, Lcom/roblox/ima/a;->e(Lcom/roblox/ima/a;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v0}, Lcom/roblox/ima/a;->e(Lcom/roblox/ima/a;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    .line 88
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/ima/a;->a(Lcom/roblox/ima/a;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/roblox/ima/a$a$1;->a:Lcom/roblox/ima/a$a;

    iget-object v0, v0, Lcom/roblox/ima/a$a;->a:Lcom/roblox/ima/a;

    invoke-static {v0}, Lcom/roblox/ima/a;->f(Lcom/roblox/ima/a;)V

    goto/16 :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
