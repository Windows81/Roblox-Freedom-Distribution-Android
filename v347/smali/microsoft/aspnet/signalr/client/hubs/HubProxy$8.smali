.class Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;[Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmicrosoft/aspnet/signalr/client/Action",
        "<[",
        "Lcom/google/gson/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

.field final synthetic val$handler:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;

.field final synthetic val$parameterTypes:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;[Ljava/lang/Class;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->val$parameterTypes:[Ljava/lang/Class;

    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->val$handler:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;

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
    .line 423
    check-cast p1, [Lcom/google/gson/k;

    invoke-virtual {p0, p1}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->run([Lcom/google/gson/k;)V

    return-void
.end method

.method public run([Lcom/google/gson/k;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->val$parameterTypes:[Ljava/lang/Class;

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_3

    .line 429
    const/4 v1, 0x0

    .line 431
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->val$handler:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 432
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "run"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 438
    :goto_1
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->val$parameterTypes:[Ljava/lang/Class;

    array-length v1, v1

    array-length v3, p1

    if-eq v1, v3, :cond_1

    .line 439
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The handler has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->val$parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameters, but there are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " values."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 442
    :cond_1
    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/Object;

    move v1, v2

    .line 444
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 445
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    invoke-static {v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->access$000(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;)Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    move-result-object v2

    invoke-virtual {v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->getGson()Lcom/google/gson/e;

    move-result-object v2

    aget-object v4, p1, v1

    iget-object v5, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->val$parameterTypes:[Ljava/lang/Class;

    aget-object v5, v5, v1

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/e;->a(Lcom/google/gson/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 447
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 448
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->val$handler:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :goto_3
    return-void

    .line 451
    :cond_3
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The handler has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$8;->val$parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameters, but there are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " values. (handler IGNORED)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method
