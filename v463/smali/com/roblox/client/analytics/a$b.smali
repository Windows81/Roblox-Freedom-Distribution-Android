.class public Lcom/roblox/client/analytics/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/analytics/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(La/a/a;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/analytics/a$b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 80
    invoke-static {p1}, La/a/g/b;->a(La/a/a;)V

    .line 83
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/analytics/a$b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 85
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 113
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "Android-Backtrace-UnhandledException-Sent"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Backtrace-UnhandledException-NotSent"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a()Z
    .locals 4

    .line 108
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 109
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/client/m/e;->aY()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Lcom/roblox/client/analytics/a$b;->a()Z

    move-result v0

    const-string v1, "uncaughtException() using: "

    const-string v2, "rbx.backtrace"

    if-eqz v0, :cond_0

    .line 93
    invoke-static {v2}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/analytics/a$b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/e$b;->c(Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/roblox/client/analytics/a$b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, v0}, Lcom/roblox/client/analytics/a$b;->a(Z)V

    .line 96
    iget-object v0, p0, Lcom/roblox/client/analytics/a$b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {v2}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/analytics/a$b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/e$b;->c(Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/roblox/client/analytics/a$b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lcom/roblox/client/analytics/a$b;->a(Z)V

    .line 102
    iget-object v0, p0, Lcom/roblox/client/analytics/a$b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
