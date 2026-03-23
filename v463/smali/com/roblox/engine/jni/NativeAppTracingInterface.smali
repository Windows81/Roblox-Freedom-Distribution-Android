.class public Lcom/roblox/engine/jni/NativeAppTracingInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 19
    sget-boolean v0, Lcom/roblox/engine/jni/NativeAppTracingInterface;->b:Z

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 22
    :cond_0
    invoke-static {p0, p1}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->nativeStartSpan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 26
    sget-boolean v0, Lcom/roblox/engine/jni/NativeAppTracingInterface;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->nativeFinishSpan(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/roblox/engine/jni/NativeAppTracingInterface;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->nativeSetStartupSpan(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/roblox/engine/jni/NativeAppTracingInterface;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->nativeFinishAndReportSpan(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 44
    sput-boolean p0, Lcom/roblox/engine/jni/NativeAppTracingInterface;->b:Z

    return-void
.end method

.method private static native nativeFinishAndReportSpan(Ljava/lang/String;)V
.end method

.method private static native nativeFinishSpan(Ljava/lang/String;)V
.end method

.method private static native nativeSetStartupSpan(Ljava/lang/String;)V
.end method

.method private static native nativeStartSpan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
