.class Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->execute(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

.field final synthetic val$requestTask:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;->this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;->val$requestTask:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2$1;

    invoke-direct {v0, p0}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2$1;-><init>(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;)V

    .line 155
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;->this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

    invoke-static {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->access$300(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;Landroid/os/AsyncTask;)V

    .line 156
    return-void
.end method
