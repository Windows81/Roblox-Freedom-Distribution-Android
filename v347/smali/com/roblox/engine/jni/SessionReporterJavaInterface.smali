.class public Lcom/roblox/engine/jni/SessionReporterJavaInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/engine/jni/SessionReporterJavaInterface$b;,
        Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;
    }
.end annotation


# static fields
.field private static sImplementation:Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/roblox/engine/jni/SessionReporterJavaInterface$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/engine/jni/SessionReporterJavaInterface$b;-><init>(Lcom/roblox/engine/jni/SessionReporterJavaInterface$1;)V

    sput-object v0, Lcom/roblox/engine/jni/SessionReporterJavaInterface;->sImplementation:Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/roblox/engine/jni/SessionReporterJavaInterface;->sImplementation:Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;

    invoke-interface {v0}, Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilesDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/roblox/engine/jni/SessionReporterJavaInterface;->sImplementation:Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;

    invoke-interface {v0}, Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastLoggedInUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/roblox/engine/jni/SessionReporterJavaInterface;->sImplementation:Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;

    invoke-interface {v0}, Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastLoggedInUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/roblox/engine/jni/SessionReporterJavaInterface;->sImplementation:Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;

    invoke-interface {v0}, Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendSessionReport(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/roblox/engine/jni/SessionReporterJavaInterface;->sImplementation:Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;

    invoke-interface {v0, p0, p1, p2}, Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;->a(Ljava/lang/String;J)V

    .line 72
    return-void
.end method

.method public static setEventTrackingGoogleAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 67
    sget-object v0, Lcom/roblox/engine/jni/SessionReporterJavaInterface;->sImplementation:Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 68
    return-void
.end method

.method public static setImplementation(Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;)V
    .locals 0

    .prologue
    .line 61
    if-eqz p0, :cond_0

    .line 62
    sput-object p0, Lcom/roblox/engine/jni/SessionReporterJavaInterface;->sImplementation:Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;

    .line 64
    :cond_0
    return-void
.end method
