.class public Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mArgs:[Lcom/google/gson/k;
    .annotation runtime Lcom/google/gson/a/c;
        a = "A"
    .end annotation
.end field

.field private mCallbackId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "I"
    .end annotation
.end field

.field private mHub:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "H"
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "M"
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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgs()[Lcom/google/gson/k;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->mArgs:[Lcom/google/gson/k;

    return-object v0
.end method

.method public getCallbackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->mCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getHub()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->mHub:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->mMethod:Ljava/lang/String;

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
    .line 62
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->mState:Ljava/util/Map;

    return-object v0
.end method

.method public setArgs([Lcom/google/gson/k;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->mArgs:[Lcom/google/gson/k;

    .line 59
    return-void
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->mCallbackId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setHub(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->mHub:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->mMethod:Ljava/lang/String;

    .line 51
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
    .line 66
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->mState:Ljava/util/Map;

    .line 67
    return-void
.end method
