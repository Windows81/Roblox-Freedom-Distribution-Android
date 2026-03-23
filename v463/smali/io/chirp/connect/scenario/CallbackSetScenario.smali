.class public Lio/chirp/connect/scenario/CallbackSetScenario;
.super Ljava/lang/Object;

# interfaces
.implements Lchirpconnect/CallbackSet;


# instance fields
.field private analytics:Lio/chirp/connect/analytics/Analytics;

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/chirp/connect/interfaces/ConnectEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/chirp/connect/interfaces/ConnectEventListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/chirp/connect/scenario/CallbackSetScenario;->observers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lio/chirp/connect/analytics/Analytics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/chirp/connect/interfaces/ConnectEventListener;",
            ">;",
            "Lio/chirp/connect/analytics/Analytics;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/chirp/connect/scenario/CallbackSetScenario;->observers:Ljava/util/List;

    iput-object p2, p0, Lio/chirp/connect/scenario/CallbackSetScenario;->analytics:Lio/chirp/connect/analytics/Analytics;

    return-void
.end method

.method private notifyObserversChirpReceived([BB)V
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/scenario/CallbackSetScenario;->analytics:Lio/chirp/connect/analytics/Analytics;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    :goto_0
    iget-object v1, p0, Lio/chirp/connect/scenario/CallbackSetScenario;->analytics:Lio/chirp/connect/analytics/Analytics;

    invoke-virtual {v1, v0}, Lio/chirp/connect/analytics/Analytics;->postReceived(I)V

    :cond_1
    iget-object v0, p0, Lio/chirp/connect/scenario/CallbackSetScenario;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/chirp/connect/interfaces/ConnectEventListener;

    invoke-interface {v1, p1, p2}, Lio/chirp/connect/interfaces/ConnectEventListener;->onReceived([BB)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private notifyObserversChirpReceiving(B)V
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/scenario/CallbackSetScenario;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/chirp/connect/interfaces/ConnectEventListener;

    invoke-interface {v1, p1}, Lio/chirp/connect/interfaces/ConnectEventListener;->onReceiving(B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyObserversChirpSending([BB)V
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/scenario/CallbackSetScenario;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/chirp/connect/interfaces/ConnectEventListener;

    invoke-interface {v1, p1, p2}, Lio/chirp/connect/interfaces/ConnectEventListener;->onSending([BB)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyObserversChirpSent([BB)V
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/scenario/CallbackSetScenario;->analytics:Lio/chirp/connect/analytics/Analytics;

    if-eqz v0, :cond_0

    array-length v1, p1

    invoke-virtual {v0, v1}, Lio/chirp/connect/analytics/Analytics;->postSent(I)V

    :cond_0
    iget-object v0, p0, Lio/chirp/connect/scenario/CallbackSetScenario;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/chirp/connect/interfaces/ConnectEventListener;

    invoke-interface {v1, p1, p2}, Lio/chirp/connect/interfaces/ConnectEventListener;->onSent([BB)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyObserversStateChanged(BB)V
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/scenario/CallbackSetScenario;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/chirp/connect/interfaces/ConnectEventListener;

    invoke-interface {v1, p1, p2}, Lio/chirp/connect/interfaces/ConnectEventListener;->onStateChanged(BB)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public received([BB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/chirp/connect/scenario/CallbackSetScenario;->notifyObserversChirpReceived([BB)V

    return-void
.end method

.method public receiving(B)V
    .locals 0

    invoke-direct {p0, p1}, Lio/chirp/connect/scenario/CallbackSetScenario;->notifyObserversChirpReceiving(B)V

    return-void
.end method

.method public sending([BB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/chirp/connect/scenario/CallbackSetScenario;->notifyObserversChirpSending([BB)V

    return-void
.end method

.method public sent([BB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/chirp/connect/scenario/CallbackSetScenario;->notifyObserversChirpSent([BB)V

    return-void
.end method

.method public stateChanged(BB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/chirp/connect/scenario/CallbackSetScenario;->notifyObserversStateChanged(BB)V

    return-void
.end method
