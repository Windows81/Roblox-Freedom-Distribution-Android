.class Lmicrosoft/aspnet/signalr/client/Connection$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/Connection;->stop()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/Connection;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/Connection;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/Connection$7;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

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
    .line 500
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmicrosoft/aspnet/signalr/client/Connection$7;->run(Ljava/lang/Void;)V

    return-void
.end method

.method public run(Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$7;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/Connection;->access$600(Lmicrosoft/aspnet/signalr/client/Connection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 505
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$7;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    const-string v2, "Abort completed"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/Connection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 506
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$7;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/Connection;->disconnect()V

    .line 507
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$7;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmicrosoft/aspnet/signalr/client/Connection;->access$702(Lmicrosoft/aspnet/signalr/client/Connection;Z)Z

    .line 508
    monitor-exit v1

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
