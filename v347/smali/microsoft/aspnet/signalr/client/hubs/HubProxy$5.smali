.class Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->invoke(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/Object;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmicrosoft/aspnet/signalr/client/Action",
        "<",
        "Lmicrosoft/aspnet/signalr/client/hubs/HubResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$resultFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

.field final synthetic val$resultType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/SignalRFuture;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->val$method:Ljava/lang/String;

    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->val$resultFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    iput-object p4, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->val$resultType:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 321
    check-cast p1, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;

    invoke-virtual {p0, p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->run(Lmicrosoft/aspnet/signalr/client/hubs/HubResult;)V

    return-void
.end method

.method public run(Lmicrosoft/aspnet/signalr/client/hubs/HubResult;)V
    .locals 6

    .prologue
    .line 325
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing invocation callback for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 326
    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 328
    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->isHubException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->val$resultFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    new-instance v1, Lmicrosoft/aspnet/signalr/client/hubs/HubException;

    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getErrorData()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->val$resultFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 334
    :cond_2
    const/4 v3, 0x0

    .line 335
    const/4 v2, 0x0

    .line 337
    :try_start_0
    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getState()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 338
    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getState()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    iget-object v5, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getState()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/k;

    invoke-virtual {v5, v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->setState(Ljava/lang/String;Lcom/google/gson/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    const/4 v1, 0x1

    .line 349
    iget-object v3, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->val$resultFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-virtual {v3, v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 352
    :goto_2
    if-nez v1, :cond_0

    .line 354
    :try_start_1
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->val$resultFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 355
    :catch_1
    move-exception v0

    .line 356
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->val$resultFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 343
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getResult()Lcom/google/gson/k;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->val$resultType:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_4

    .line 344
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found result invoking method on hub: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getResult()Lcom/google/gson/k;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v1, v4}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 345
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->access$000(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;)Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    move-result-object v0

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->getGson()Lcom/google/gson/e;

    move-result-object v0

    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubResult;->getResult()Lcom/google/gson/k;

    move-result-object v1

    iget-object v4, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$5;->val$resultType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/e;->a(Lcom/google/gson/k;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_3
    move v1, v3

    .line 350
    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_3
.end method
