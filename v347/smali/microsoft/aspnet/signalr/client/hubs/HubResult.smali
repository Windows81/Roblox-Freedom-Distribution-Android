.class public Lmicrosoft/aspnet/signalr/client/hubs/HubResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mError:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "E"
    .end annotation
.end field

.field private mErrorData:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/a/c;
        a = "D"
    .end annotation
.end field

.field private mId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "I"
    .end annotation
.end field

.field private mIsHubException:Z
    .annotation runtime Lcom/google/gson/a/c;
        a = "H"
    .end annotation
.end field

.field private mResult:Lcom/google/gson/k;
    .annotation runtime Lcom/google/gson/a/c;
        a = "R"
    .end annotation
.end field

.field private mState:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/a/c;
        a = "S"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mError:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mErrorData:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mId:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()Lcom/google/gson/k;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mResult:Lcom/google/gson/k;

    return-object v0
.end method

.method public getState()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mState:Ljava/util/Map;

    return-object v0
.end method

.method public isHubException()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mIsHubException:Z

    return v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mError:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setErrorData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mErrorData:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setIsHubException(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mIsHubException:Z

    .line 58
    return-void
.end method

.method public setResult(Lcom/google/gson/k;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mResult:Lcom/google/gson/k;

    .line 50
    return-void
.end method

.method public setState(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->mState:Ljava/util/Map;

    .line 82
    return-void
.end method
