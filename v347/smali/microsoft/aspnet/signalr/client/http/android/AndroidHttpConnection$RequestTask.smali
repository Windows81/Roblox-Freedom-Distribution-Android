.class abstract Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RequestTask"
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
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;


# direct methods
.method private constructor <init>(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;->this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;-><init>(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;)V

    return-void
.end method


# virtual methods
.method protected abstract closeStreamAndClient()V
.end method
