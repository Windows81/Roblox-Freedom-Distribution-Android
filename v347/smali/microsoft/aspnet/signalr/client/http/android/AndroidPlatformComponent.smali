.class public Lmicrosoft/aspnet/signalr/client/http/android/AndroidPlatformComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/PlatformComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHttpConnection(Lmicrosoft/aspnet/signalr/client/Logger;)Lmicrosoft/aspnet/signalr/client/http/HttpConnection;
    .locals 2

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 20
    new-instance v0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

    invoke-direct {v0, p1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;-><init>(Lmicrosoft/aspnet/signalr/client/Logger;)V

    .line 22
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lmicrosoft/aspnet/signalr/client/Platform;->createDefaultHttpConnection(Lmicrosoft/aspnet/signalr/client/Logger;)Lmicrosoft/aspnet/signalr/client/http/HttpConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public getOSName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "android"

    return-object v0
.end method
