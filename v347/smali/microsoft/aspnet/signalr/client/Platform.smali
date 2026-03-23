.class public Lmicrosoft/aspnet/signalr/client/Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static fallbackCookie:Ljava/lang/String;

.field static mIsAndroid:Z

.field static mPlatformComponent:Lmicrosoft/aspnet/signalr/client/PlatformComponent;

.field static mPlatformVerified:Z

.field public static robloxUserAgent:Ljava/lang/String;

.field public static skipCookie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lmicrosoft/aspnet/signalr/client/Platform;->mPlatformVerified:Z

    .line 19
    sput-boolean v0, Lmicrosoft/aspnet/signalr/client/Platform;->mIsAndroid:Z

    .line 20
    sput-object v1, Lmicrosoft/aspnet/signalr/client/Platform;->mPlatformComponent:Lmicrosoft/aspnet/signalr/client/PlatformComponent;

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lmicrosoft/aspnet/signalr/client/Platform;->skipCookie:Z

    .line 81
    sput-object v1, Lmicrosoft/aspnet/signalr/client/Platform;->fallbackCookie:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultHttpConnection(Lmicrosoft/aspnet/signalr/client/Logger;)Lmicrosoft/aspnet/signalr/client/http/HttpConnection;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;

    sget-boolean v1, Lmicrosoft/aspnet/signalr/client/Platform;->skipCookie:Z

    invoke-direct {v0, p0, v1}, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;-><init>(Lmicrosoft/aspnet/signalr/client/Logger;Z)V

    return-object v0
.end method

.method public static createHttpConnection(Lmicrosoft/aspnet/signalr/client/Logger;)Lmicrosoft/aspnet/signalr/client/http/HttpConnection;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lmicrosoft/aspnet/signalr/client/Platform;->mPlatformComponent:Lmicrosoft/aspnet/signalr/client/PlatformComponent;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lmicrosoft/aspnet/signalr/client/Platform;->mPlatformComponent:Lmicrosoft/aspnet/signalr/client/PlatformComponent;

    invoke-interface {v0, p0}, Lmicrosoft/aspnet/signalr/client/PlatformComponent;->createHttpConnection(Lmicrosoft/aspnet/signalr/client/Logger;)Lmicrosoft/aspnet/signalr/client/http/HttpConnection;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lmicrosoft/aspnet/signalr/client/Platform;->createDefaultHttpConnection(Lmicrosoft/aspnet/signalr/client/Logger;)Lmicrosoft/aspnet/signalr/client/http/HttpConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFallbackCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lmicrosoft/aspnet/signalr/client/Platform;->fallbackCookie:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    sget-object v0, Lmicrosoft/aspnet/signalr/client/Platform;->robloxUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lmicrosoft/aspnet/signalr/client/Platform;->robloxUserAgent:Ljava/lang/String;

    .line 62
    :goto_0
    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lmicrosoft/aspnet/signalr/client/Platform;->mPlatformComponent:Lmicrosoft/aspnet/signalr/client/PlatformComponent;

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lmicrosoft/aspnet/signalr/client/Platform;->mPlatformComponent:Lmicrosoft/aspnet/signalr/client/PlatformComponent;

    invoke-interface {v0}, Lmicrosoft/aspnet/signalr/client/PlatformComponent;->getOSName()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_1
    const-string v1, "SignalR (lang=Java; os=%s; version=2.0)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static loadPlatformComponent(Lmicrosoft/aspnet/signalr/client/PlatformComponent;)V
    .locals 0

    .prologue
    .line 23
    sput-object p0, Lmicrosoft/aspnet/signalr/client/Platform;->mPlatformComponent:Lmicrosoft/aspnet/signalr/client/PlatformComponent;

    .line 24
    return-void
.end method

.method public static setFallbackCookie(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    sput-object p0, Lmicrosoft/aspnet/signalr/client/Platform;->fallbackCookie:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static setRobloxUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    sput-object p0, Lmicrosoft/aspnet/signalr/client/Platform;->robloxUserAgent:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static setSkipCookie(Z)V
    .locals 0

    .prologue
    .line 77
    sput-boolean p0, Lmicrosoft/aspnet/signalr/client/Platform;->skipCookie:Z

    .line 78
    return-void
.end method
