.class public Lcom/roblox/client/friends/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/s/f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/s/f;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-SetConfigSuccess"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lio/chirp/connect/models/ChirpErrorCode;)V
    .locals 4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChirpErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/chirp/connect/models/ChirpErrorCode;->getCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Nearby"

    invoke-static {v0, p1, p2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "SendError"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-string p2, "InitError"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string p2, "PickChannelError"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string p2, "StartError"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string p2, "StopError"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_2

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string p2, "Android-Chirp-StopError"

    invoke-virtual {p1, p2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 127
    :cond_2
    iget-object p1, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string p2, "Android-Chirp-StartError"

    invoke-virtual {p1, p2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 124
    :cond_3
    iget-object p1, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string p2, "Android-Chirp-SetConfigError"

    invoke-virtual {p1, p2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string p2, "Android-Chirp-SendError"

    invoke-virtual {p1, p2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_5
    iget-object p1, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string p2, "Android-Chirp-PickChannelError"

    invoke-virtual {p1, p2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x28d354fa -> :sswitch_4
        0x179e66e6 -> :sswitch_3
        0x65a2fda6 -> :sswitch_2
        0x66a746b8 -> :sswitch_1
        0x779aa740 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crash on chirp.close(). Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-SetConfigCalled"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-Started"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-Stopped"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-PublishCalled"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-Published"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-Unpublished"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-PublishError"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-SubscribeCalled"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-Subscribed"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-Unsubscribed"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-SubscribeError"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-PayloadSent"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-PayloadFound"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-Closed"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-CloseCalled"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-CloseError"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-PickChannelCalled"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-ChannelPicked"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-AllChannelsBusy"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public u()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/a;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-Chirp-ChannelCollision"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method
