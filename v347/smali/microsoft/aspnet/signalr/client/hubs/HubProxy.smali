.class public Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXCLUDED_METHODS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUBSCRIPTION_HANDLER_METHOD:Ljava/lang/String; = "run"


# instance fields
.field private mConnection:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

.field private mHubName:Ljava/lang/String;

.field private mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

.field private mState:Ljava/util/Map;
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

.field private mSubscriptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmicrosoft/aspnet/signalr/client/hubs/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "equals"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "getClass"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hashCode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "notify"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "notifyAll"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "toString"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wait"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->EXCLUDED_METHODS:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/Logger;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mSubscriptions:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mState:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mConnection:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    .line 56
    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mHubName:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;)Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mConnection:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    return-object v0
.end method

.method private varargs on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            "E2:",
            "Ljava/lang/Object;",
            "E3:",
            "Ljava/lang/Object;",
            "E4:",
            "Ljava/lang/Object;",
            "E5:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5",
            "<TE1;TE2;TE3;TE4;TE5;>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 418
    if-nez p2, :cond_0

    .line 419
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    invoke-virtual {p0, p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->subscribe(Ljava/lang/String;)Lmicrosoft/aspnet/signalr/client/hubs/Subscription;

    move-result-object v0

    .line 423
    new-instance v1, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;

    invoke-direct {v1, p0, p3, p2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;[Ljava/lang/Class;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;)V

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/Subscription;->addReceivedHandler(Lmicrosoft/aspnet/signalr/client/Action;)V

    .line 455
    return-void
.end method


# virtual methods
.method public getState(Ljava/lang/String;)Lcom/google/gson/k;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/k;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mConnection:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->getGson()Lcom/google/gson/e;

    move-result-object v0

    invoke-virtual {p0, p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->getState(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/e;->a(Lcom/google/gson/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 201
    if-nez p2, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    if-nez p3, :cond_1

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "args cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invoking method on hub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 211
    array-length v0, p3

    new-array v1, v0, [Lcom/google/gson/k;

    .line 213
    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 214
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mConnection:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    invoke-virtual {v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->getGson()Lcom/google/gson/e;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Lcom/google/gson/k;

    move-result-object v2

    aput-object v2, v1, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_2
    new-instance v0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-direct {v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;-><init>()V

    .line 219
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mConnection:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    new-instance v3, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$2;

    invoke-direct {v3, p0, p2, v0, p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$2;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/SignalRFuture;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->registerCallback(Lmicrosoft/aspnet/signalr/client/Action;)Ljava/lang/String;

    move-result-object v2

    .line 262
    new-instance v3, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;

    invoke-direct {v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;-><init>()V

    .line 263
    iget-object v4, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mHubName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->setHub(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v3, p2}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->setMethod(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v3, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->setArgs([Lcom/google/gson/k;)V

    .line 266
    invoke-virtual {v3, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->setCallbackId(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mState:Ljava/util/Map;

    invoke-virtual {v3, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->setState(Ljava/util/Map;)V

    .line 272
    :cond_3
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mConnection:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    invoke-virtual {v1, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->send(Ljava/lang/Object;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    move-result-object v1

    .line 274
    new-instance v3, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$3;

    invoke-direct {v3, p0, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$3;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->onCancelled(Ljava/lang/Runnable;)V

    .line 282
    new-instance v2, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$4;

    invoke-direct {v2, p0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$4;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    invoke-virtual {v0, v2}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->onError(Lmicrosoft/aspnet/signalr/client/ErrorCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    .line 290
    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/Object;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 303
    if-nez p3, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    if-nez p4, :cond_1

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "args cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invoking method on hub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 313
    array-length v0, p4

    new-array v1, v0, [Lcom/google/gson/k;

    .line 315
    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_2

    .line 316
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mConnection:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    invoke-virtual {v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->getGson()Lcom/google/gson/e;

    move-result-object v2

    aget-object v3, p4, v0

    invoke-virtual {v2, v3}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Lcom/google/gson/k;

    move-result-object v2

    aput-object v2, v1, v0

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_2
    new-instance v0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-direct {v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;-><init>()V

    .line 321
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mConnection:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    new-instance v3, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;

    invoke-direct {v3, p0, p3, v0, p2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/SignalRFuture;Ljava/lang/reflect/Type;)V

    invoke-virtual {v2, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->registerCallback(Lmicrosoft/aspnet/signalr/client/Action;)Ljava/lang/String;

    move-result-object v2

    .line 364
    new-instance v3, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;

    invoke-direct {v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;-><init>()V

    .line 365
    iget-object v4, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mHubName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->setHub(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v3, p3}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->setMethod(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v3, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->setArgs([Lcom/google/gson/k;)V

    .line 368
    invoke-virtual {v3, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->setCallbackId(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mState:Ljava/util/Map;

    invoke-virtual {v3, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->setState(Ljava/util/Map;)V

    .line 374
    :cond_3
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mConnection:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    invoke-virtual {v1, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->send(Ljava/lang/Object;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    move-result-object v1

    .line 376
    new-instance v3, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$6;

    invoke-direct {v3, p0, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$6;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->onCancelled(Ljava/lang/Runnable;)V

    .line 384
    new-instance v2, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$7;

    invoke-direct {v2, p0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$7;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    invoke-virtual {v0, v2}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->onError(Lmicrosoft/aspnet/signalr/client/ErrorCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    .line 392
    return-object v0
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    move-result-object v0

    return-object v0
.end method

.method invokeEvent(Ljava/lang/String;[Lcom/google/gson/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mSubscriptions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mSubscriptions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmicrosoft/aspnet/signalr/client/hubs/Subscription;

    .line 413
    invoke-virtual {v0, p2}, Lmicrosoft/aspnet/signalr/client/hubs/Subscription;->onReceived([Lcom/google/gson/k;)V

    .line 415
    :cond_1
    return-void
.end method

.method protected log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 521
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HubProxy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mHubName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 524
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 521
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler1;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler1",
            "<TE1;>;",
            "Ljava/lang/Class",
            "<TE1;>;)V"
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$13;

    invoke-direct {v0, p0, p2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$13;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;[Ljava/lang/Class;)V

    .line 508
    return-void
.end method

.method public on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            "E2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2",
            "<TE1;TE2;>;",
            "Ljava/lang/Class",
            "<TE1;>;",
            "Ljava/lang/Class",
            "<TE2;>;)V"
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$12;

    invoke-direct {v0, p0, p2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$12;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;[Ljava/lang/Class;)V

    .line 498
    return-void
.end method

.method public on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            "E2:",
            "Ljava/lang/Object;",
            "E3:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3",
            "<TE1;TE2;TE3;>;",
            "Ljava/lang/Class",
            "<TE1;>;",
            "Ljava/lang/Class",
            "<TE2;>;",
            "Ljava/lang/Class",
            "<TE3;>;)V"
        }
    .end annotation

    .prologue
    .line 481
    new-instance v0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$11;

    invoke-direct {v0, p0, p2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$11;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    aput-object p5, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;[Ljava/lang/Class;)V

    .line 488
    return-void
.end method

.method public on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler4;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            "E2:",
            "Ljava/lang/Object;",
            "E3:",
            "Ljava/lang/Object;",
            "E4:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler4",
            "<TE1;TE2;TE3;TE4;>;",
            "Ljava/lang/Class",
            "<TE1;>;",
            "Ljava/lang/Class",
            "<TE2;>;",
            "Ljava/lang/Class",
            "<TE3;>;",
            "Ljava/lang/Class",
            "<TE4;>;)V"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$10;

    invoke-direct {v0, p0, p2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$10;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler4;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    aput-object p5, v1, v2

    const/4 v2, 0x3

    aput-object p6, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;[Ljava/lang/Class;)V

    .line 477
    return-void
.end method

.method public on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            "E2:",
            "Ljava/lang/Object;",
            "E3:",
            "Ljava/lang/Object;",
            "E4:",
            "Ljava/lang/Object;",
            "E5:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5",
            "<TE1;TE2;TE3;TE4;TE5;>;",
            "Ljava/lang/Class",
            "<TE1;>;",
            "Ljava/lang/Class",
            "<TE2;>;",
            "Ljava/lang/Class",
            "<TE3;>;",
            "Ljava/lang/Class",
            "<TE4;>;",
            "Ljava/lang/Class",
            "<TE5;>;)V"
        }
    .end annotation

    .prologue
    .line 459
    new-instance v2, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$9;

    invoke-direct {v2, p0, p2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$9;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 466
    return-void
.end method

.method public on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$14;

    invoke-direct {v0, p0, p2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$14;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;[Ljava/lang/Class;)V

    .line 518
    return-void
.end method

.method public removeSubscription(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mSubscriptions:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    return-void
.end method

.method public setState(Ljava/lang/String;Lcom/google/gson/k;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mState:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public subscribe(Ljava/lang/String;)Lmicrosoft/aspnet/signalr/client/hubs/Subscription;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscribe to event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mSubscriptions:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding event to existing subscription: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 113
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mSubscriptions:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmicrosoft/aspnet/signalr/client/hubs/Subscription;

    .line 120
    :goto_0
    return-object v0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new subscription for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 116
    new-instance v0, Lmicrosoft/aspnet/signalr/client/hubs/Subscription;

    invoke-direct {v0}, Lmicrosoft/aspnet/signalr/client/hubs/Subscription;-><init>()V

    .line 117
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->mSubscriptions:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public subscribe(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 136
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 137
    aget-object v2, v1, v0

    .line 139
    sget-object v3, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->EXCLUDED_METHODS:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->subscribe(Ljava/lang/String;)Lmicrosoft/aspnet/signalr/client/hubs/Subscription;

    move-result-object v3

    .line 141
    new-instance v4, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$1;

    invoke-direct {v4, p0, v2, p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$1;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lmicrosoft/aspnet/signalr/client/hubs/Subscription;->addReceivedHandler(Lmicrosoft/aspnet/signalr/client/Action;)V

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_2
    return-void
.end method
