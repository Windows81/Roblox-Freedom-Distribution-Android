.class public Lcom/roblox/client/q/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/engine/jni/reporter/a;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/roblox/client/q/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/roblox/client/q/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 59
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "rbx.jni"

    const-string v0, "sendSessionReport() could not parse placeId"

    .line 61
    invoke-static {p2, v0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    .line 63
    :goto_0
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/roblox/platform/f;->a()Lcom/roblox/platform/http/c/c;

    move-result-object p2

    new-instance v2, Lcom/roblox/platform/http/postbody/SessionReportPostBody;

    invoke-direct {v2, p1, v0, v1}, Lcom/roblox/platform/http/postbody/SessionReportPostBody;-><init>(Ljava/lang/String;J)V

    invoke-interface {p2, v2}, Lcom/roblox/platform/http/c/c;->a(Lcom/roblox/platform/http/postbody/SessionReportPostBody;)Le/b;

    move-result-object p1

    new-instance p2, Lcom/roblox/client/q/b$1;

    invoke-direct {p2, p0}, Lcom/roblox/client/q/b$1;-><init>(Lcom/roblox/client/q/b;)V

    invoke-interface {p1, p2}, Le/b;->a(Le/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 41
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/roblox/client/b;->bh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-static {p1, p2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_0
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "2.463.417004"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 93
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
