.class public interface abstract Lmicrosoft/aspnet/signalr/client/ConnectionBase;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract closed(Ljava/lang/Runnable;)V
.end method

.method public abstract connected(Ljava/lang/Runnable;)V
.end method

.method public abstract connectionSlow(Ljava/lang/Runnable;)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract error(Lmicrosoft/aspnet/signalr/client/ErrorCallback;)V
.end method

.method public abstract getConnectionData()Ljava/lang/String;
.end method

.method public abstract getConnectionId()Ljava/lang/String;
.end method

.method public abstract getConnectionToken()Ljava/lang/String;
.end method

.method public abstract getCredentials()Lmicrosoft/aspnet/signalr/client/Credentials;
.end method

.method public abstract getGroupsToken()Ljava/lang/String;
.end method

.method public abstract getGson()Lcom/google/gson/e;
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJsonParser()Lcom/google/gson/p;
.end method

.method public abstract getLogger()Lmicrosoft/aspnet/signalr/client/Logger;
.end method

.method public abstract getMessageId()Ljava/lang/String;
.end method

.method public abstract getQueryString()Ljava/lang/String;
.end method

.method public abstract getState()Lmicrosoft/aspnet/signalr/client/ConnectionState;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract onError(Ljava/lang/Throwable;Z)V
.end method

.method public abstract onReceived(Lcom/google/gson/k;)V
.end method

.method public abstract prepareRequest(Lmicrosoft/aspnet/signalr/client/http/Request;)V
.end method

.method public abstract received(Lmicrosoft/aspnet/signalr/client/MessageReceivedHandler;)V
.end method

.method public abstract reconnected(Ljava/lang/Runnable;)V
.end method

.method public abstract reconnecting(Ljava/lang/Runnable;)V
.end method

.method public abstract send(Ljava/lang/String;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCredentials(Lmicrosoft/aspnet/signalr/client/Credentials;)V
.end method

.method public abstract setGroupsToken(Ljava/lang/String;)V
.end method

.method public abstract setGson(Lcom/google/gson/e;)V
.end method

.method public abstract setMessageId(Ljava/lang/String;)V
.end method

.method public abstract start(Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;",
            ")",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stateChanged(Lmicrosoft/aspnet/signalr/client/StateChangedCallback;)V
.end method

.method public abstract stop()V
.end method
