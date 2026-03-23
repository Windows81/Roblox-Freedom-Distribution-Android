.class public Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;
.super Lmicrosoft/aspnet/signalr/client/Connection;
.source "SourceFile"


# instance fields
.field private mCallbackId:Ljava/lang/Integer;

.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmicrosoft/aspnet/signalr/client/Action",
            "<",
            "Lmicrosoft/aspnet/signalr/client/hubs/HubResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHubs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmicrosoft/aspnet/signalr/client/Connection;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbacks:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mHubs:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbackId:Ljava/lang/Integer;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLmicrosoft/aspnet/signalr/client/Logger;)V
    .locals 1

    .prologue
    .line 47
    invoke-static {p1, p3}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p4}, Lmicrosoft/aspnet/signalr/client/Connection;-><init>(Ljava/lang/String;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/Logger;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbacks:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mHubs:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbackId:Ljava/lang/Integer;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 69
    invoke-static {p1, p2}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmicrosoft/aspnet/signalr/client/Connection;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbacks:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mHubs:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbackId:Ljava/lang/Integer;

    .line 70
    return-void
.end method

.method private static arrayToString([Lcom/google/gson/k;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 133
    if-lez v0, :cond_0

    .line 134
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/google/gson/k;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private clearInvocationCallbacks(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing invocation callbacks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 169
    new-instance v1, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;

    invoke-direct {v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;-><init>()V

    .line 170
    invoke-virtual {v1, p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->setError(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoking callback with empty result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v3, v4}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 175
    iget-object v3, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmicrosoft/aspnet/signalr/client/Action;

    invoke-interface {v0, v1}, Lmicrosoft/aspnet/signalr/client/Action;->run(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    return-void
.end method

.method private static getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    if-eqz p1, :cond_0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "signalr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public createHubProxy(Ljava/lang/String;)Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mState:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    sget-object v1, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Disconnected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    if-eq v0, v1, :cond_0

    .line 201
    new-instance v0, Lmicrosoft/aspnet/signalr/client/InvalidStateException;

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mState:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    invoke-direct {v0, v1}, Lmicrosoft/aspnet/signalr/client/InvalidStateException;-><init>(Lmicrosoft/aspnet/signalr/client/ConnectionState;)V

    throw v0

    .line 204
    :cond_0
    if-nez p1, :cond_1

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hubName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating hub proxy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 213
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mHubs:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mHubs:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    .line 220
    :goto_0
    return-object v0

    .line 216
    :cond_2
    new-instance v0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->getLogger()Lmicrosoft/aspnet/signalr/client/Logger;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;-><init>(Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/Logger;)V

    .line 217
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mHubs:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getConnectionData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 147
    new-instance v1, Lcom/google/gson/h;

    invoke-direct {v1}, Lcom/google/gson/h;-><init>()V

    .line 149
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mHubs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    new-instance v3, Lcom/google/gson/n;

    invoke-direct {v3}, Lcom/google/gson/n;-><init>()V

    .line 151
    const-string v4, "name"

    invoke-virtual {v3, v4, v0}, Lcom/google/gson/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v3}, Lcom/google/gson/h;->a(Lcom/google/gson/k;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v1}, Lcom/google/gson/h;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting connection data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v1, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 158
    return-object v0
.end method

.method protected getSourceNameForLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const-string v0, "HubConnection"

    return-object v0
.end method

.method protected onClosed()V
    .locals 1

    .prologue
    .line 163
    const-string v0, "Connection closed"

    invoke-direct {p0, v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->clearInvocationCallbacks(Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Lmicrosoft/aspnet/signalr/client/Connection;->onClosed()V

    .line 165
    return-void
.end method

.method public onReceived(Lcom/google/gson/k;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 74
    invoke-super {p0, p1}, Lmicrosoft/aspnet/signalr/client/Connection;->onReceived(Lcom/google/gson/k;)V

    .line 76
    const-string v0, "Processing message"

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 77
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->getState()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v0

    sget-object v1, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Connected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/google/gson/k;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/k;->l()Lcom/google/gson/n;

    move-result-object v0

    const-string v1, "I"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "Getting HubResult from message"

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 80
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mGson:Lcom/google/gson/e;

    const-class v1, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->a(Lcom/google/gson/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;

    .line 82
    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v2, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getResult()Lcom/google/gson/k;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v2, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 86
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get and remove callback with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v2, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 88
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmicrosoft/aspnet/signalr/client/Action;

    .line 91
    :try_start_0
    const-string v2, "Execute callback for message"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v2, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 92
    invoke-interface {v1, v0}, Lmicrosoft/aspnet/signalr/client/Action;->run(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {p0, v0, v7}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mGson:Lcom/google/gson/e;

    const-class v1, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->a(Lcom/google/gson/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;

    .line 99
    const-string v1, "Getting HubInvocation from message"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v1, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 101
    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->getHub()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v2, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 104
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mHubs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mHubs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    .line 106
    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->getState()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->getState()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->getState()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/k;

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting state for hub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v5, v6}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 110
    invoke-virtual {v1, v2, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->setState(Ljava/lang/String;Lcom/google/gson/k;)V

    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoking event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with arguments "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->getArgs()[Lcom/google/gson/k;

    move-result-object v4

    invoke-static {v4}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->arrayToString([Lcom/google/gson/k;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v3, v4}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 118
    :try_start_1
    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubInvocation;->getArgs()[Lcom/google/gson/k;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->invokeEvent(Ljava/lang/String;[Lcom/google/gson/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    invoke-virtual {p0, v0, v7}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->onError(Ljava/lang/Throwable;Z)V

    goto/16 :goto_0
.end method

.method protected onReconnecting()V
    .locals 1

    .prologue
    .line 185
    const-string v0, "Reconnecting"

    invoke-direct {p0, v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->clearInvocationCallbacks(Ljava/lang/String;)V

    .line 186
    invoke-super {p0}, Lmicrosoft/aspnet/signalr/client/Connection;->onReconnecting()V

    .line 187
    return-void
.end method

.method registerCallback(Lmicrosoft/aspnet/signalr/client/Action;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/Action",
            "<",
            "Lmicrosoft/aspnet/signalr/client/hubs/HubResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbackId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v1, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 233
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbackId:Ljava/lang/Integer;

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbackId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbackId:Ljava/lang/Integer;

    .line 235
    return-object v0
.end method

.method removeCallback(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 246
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->mCallbacks:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method
