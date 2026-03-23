.class public Lcom/roblox/client/jni/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/jni/b;->a:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/roblox/client/jni/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->a()Lcom/roblox/platform/http/c/a;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/SessionReportPostBody;

    invoke-direct {v1, p1, p2, p3}, Lcom/roblox/platform/http/postbody/SessionReportPostBody;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/a;->a(Lcom/roblox/platform/http/postbody/SessionReportPostBody;)Ld/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/jni/b$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/jni/b$1;-><init>(Lcom/roblox/client/jni/b;)V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    .line 67
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 41
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const/4 v0, 0x1

    .line 47
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/b;->ca()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-static {p1, p2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_1
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "2.347.225742"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
