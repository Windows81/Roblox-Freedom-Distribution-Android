.class Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2$1;->this$1:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2$1;->this$1:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;

    iget-object v0, v0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;->val$requestTask:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;->closeStreamAndClient()V

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method
