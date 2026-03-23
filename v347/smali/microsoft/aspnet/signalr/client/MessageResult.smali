.class public Lmicrosoft/aspnet/signalr/client/MessageResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDisconnect:Z

.field private mInitialize:Z

.field private mReconnect:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/MessageResult;->mDisconnect:Z

    .line 11
    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/MessageResult;->mReconnect:Z

    .line 12
    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/MessageResult;->mInitialize:Z

    return-void
.end method


# virtual methods
.method public disconnect()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/MessageResult;->mDisconnect:Z

    return v0
.end method

.method public initialize()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/MessageResult;->mInitialize:Z

    return v0
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/MessageResult;->mReconnect:Z

    return v0
.end method

.method public setDisconnect(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lmicrosoft/aspnet/signalr/client/MessageResult;->mDisconnect:Z

    .line 20
    return-void
.end method

.method public setInitialize(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lmicrosoft/aspnet/signalr/client/MessageResult;->mInitialize:Z

    .line 36
    return-void
.end method

.method public setReconnect(Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lmicrosoft/aspnet/signalr/client/MessageResult;->mReconnect:Z

    .line 28
    return-void
.end method
