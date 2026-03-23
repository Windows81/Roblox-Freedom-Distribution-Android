.class Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->abort(Lmicrosoft/aspnet/signalr/client/ConnectionBase;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport$3;->this$0:Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lmicrosoft/aspnet/signalr/client/http/Response;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport$3;->this$0:Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;

    const-string v1, "Finishing abort"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 161
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport$3;->this$0:Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mStartedAbort:Z

    .line 162
    return-void
.end method
