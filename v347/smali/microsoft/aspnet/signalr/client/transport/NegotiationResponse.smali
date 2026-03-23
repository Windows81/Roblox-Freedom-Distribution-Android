.class public Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVALID_KEEP_ALIVE_TIMEOUT:D = -1.0


# instance fields
.field private mConnectionId:Ljava/lang/String;

.field private mConnectionToken:Ljava/lang/String;

.field private mDisconnectTimeout:D

.field private mKeepAliveTimeout:D

.field private mProtocolVersion:Ljava/lang/String;

.field private mTryWebSockets:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/gson/p;)V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p2, p1}, Lcom/google/gson/p;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/k;->l()Lcom/google/gson/n;

    move-result-object v0

    .line 40
    const-string v1, "ConnectionId"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->b(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->setConnectionId(Ljava/lang/String;)V

    .line 41
    const-string v1, "ConnectionToken"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->b(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->setConnectionToken(Ljava/lang/String;)V

    .line 42
    const-string v1, "Url"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->b(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->setUrl(Ljava/lang/String;)V

    .line 43
    const-string v1, "ProtocolVersion"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->b(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->setProtocolVersion(Ljava/lang/String;)V

    .line 44
    const-string v1, "DisconnectTimeout"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->b(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->d()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->setDisconnectTimeout(D)V

    .line 45
    const-string v1, "TryWebSockets"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->b(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->g()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->setTryWebSockets(Z)V

    .line 47
    const-string v1, "KeepAliveTimeout"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->b(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/k;->k()Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/google/gson/k;->d()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->setKeepAliveTimeout(D)V

    goto :goto_0

    .line 51
    :cond_2
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->setKeepAliveTimeout(D)V

    goto :goto_0
.end method


# virtual methods
.method public getConnectionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mConnectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mConnectionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectTimeout()D
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mDisconnectTimeout:D

    return-wide v0
.end method

.method public getKeepAliveTimeout()D
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mKeepAliveTimeout:D

    return-wide v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mProtocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mConnectionId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setConnectionToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mConnectionToken:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDisconnectTimeout(D)V
    .locals 1

    .prologue
    .line 93
    iput-wide p1, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mDisconnectTimeout:D

    .line 94
    return-void
.end method

.method public setKeepAliveTimeout(D)V
    .locals 1

    .prologue
    .line 109
    iput-wide p1, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mKeepAliveTimeout:D

    .line 110
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mProtocolVersion:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTryWebSockets(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mTryWebSockets:Z

    .line 102
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mUrl:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public shouldTryWebSockets()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;->mTryWebSockets:Z

    return v0
.end method
