.class Lmicrosoft/aspnet/signalr/client/Connection$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/Connection;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/Connection;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/Connection;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/Connection$6;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 493
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$6;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/Connection;->access$600(Lmicrosoft/aspnet/signalr/client/Connection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 494
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$6;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    const-string v2, "Abort cancelled"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/Connection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 495
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$6;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmicrosoft/aspnet/signalr/client/Connection;->access$702(Lmicrosoft/aspnet/signalr/client/Connection;Z)Z

    .line 496
    monitor-exit v1

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
