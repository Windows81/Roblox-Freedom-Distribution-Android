.class final enum Lcom/appsflyer/x$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsflyer/x$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appsflyer/x$b;

.field public static final enum b:Lcom/appsflyer/x$b;

.field public static final enum c:Lcom/appsflyer/x$b;

.field public static final enum d:Lcom/appsflyer/x$b;

.field public static final enum e:Lcom/appsflyer/x$b;

.field private static final synthetic h:[Lcom/appsflyer/x$b;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/appsflyer/x$b;

    const-string v1, "UNITY"

    const-string v2, "android_unity"

    const-string v3, "com.unity3d.player.UnityPlayer"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/appsflyer/x$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/x$b;->a:Lcom/appsflyer/x$b;

    .line 15
    new-instance v0, Lcom/appsflyer/x$b;

    const-string v1, "REACT_NATIVE"

    const-string v2, "android_reactNative"

    const-string v3, "com.facebook.react.ReactApplication"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/appsflyer/x$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/x$b;->b:Lcom/appsflyer/x$b;

    .line 16
    new-instance v0, Lcom/appsflyer/x$b;

    const-string v1, "CORDOVA"

    const-string v2, "android_cordova"

    const-string v3, "org.apache.cordova.CordovaActivity"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/appsflyer/x$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/x$b;->c:Lcom/appsflyer/x$b;

    .line 17
    new-instance v0, Lcom/appsflyer/x$b;

    const-string v1, "SEGMENT"

    const-string v2, "android_segment"

    const-string v3, "com.segment.analytics.integrations.Integration"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/appsflyer/x$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/x$b;->d:Lcom/appsflyer/x$b;

    .line 18
    new-instance v0, Lcom/appsflyer/x$b;

    const-string v1, "DEFAULT"

    const-string v2, "android_native"

    const-string v3, "android_native"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/appsflyer/x$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/x$b;->e:Lcom/appsflyer/x$b;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/appsflyer/x$b;

    sget-object v1, Lcom/appsflyer/x$b;->a:Lcom/appsflyer/x$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/x$b;->b:Lcom/appsflyer/x$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/x$b;->c:Lcom/appsflyer/x$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/x$b;->d:Lcom/appsflyer/x$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/appsflyer/x$b;->e:Lcom/appsflyer/x$b;

    aput-object v1, v0, v8

    sput-object v0, Lcom/appsflyer/x$b;->h:[Lcom/appsflyer/x$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/appsflyer/x$b;->f:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/appsflyer/x$b;->g:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/appsflyer/x$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/appsflyer/x$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/appsflyer/x$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/appsflyer/x$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static values()[Lcom/appsflyer/x$b;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/appsflyer/x$b;->h:[Lcom/appsflyer/x$b;

    invoke-virtual {v0}, [Lcom/appsflyer/x$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/x$b;

    return-object v0
.end method
