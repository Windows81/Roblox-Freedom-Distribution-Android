.class Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->execute(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;

.field final synthetic val$networkThread:Lmicrosoft/aspnet/signalr/client/http/java/NetworkThread;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;Lmicrosoft/aspnet/signalr/client/http/java/NetworkThread;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$2;->this$0:Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$2;->val$networkThread:Lmicrosoft/aspnet/signalr/client/http/java/NetworkThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$2;->val$networkThread:Lmicrosoft/aspnet/signalr/client/http/java/NetworkThread;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/http/java/NetworkThread;->releaseAndStop()V

    .line 67
    return-void
.end method
