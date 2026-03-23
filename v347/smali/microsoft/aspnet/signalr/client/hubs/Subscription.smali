.class public Lmicrosoft/aspnet/signalr/client/hubs/Subscription;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mReceived:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmicrosoft/aspnet/signalr/client/Action",
            "<[",
            "Lcom/google/gson/k;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/Subscription;->mReceived:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addReceivedHandler(Lmicrosoft/aspnet/signalr/client/Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/Action",
            "<[",
            "Lcom/google/gson/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/Subscription;->mReceived:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method onReceived([Lcom/google/gson/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/Subscription;->mReceived:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmicrosoft/aspnet/signalr/client/Action;

    .line 31
    invoke-interface {v0, p1}, Lmicrosoft/aspnet/signalr/client/Action;->run(Ljava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
