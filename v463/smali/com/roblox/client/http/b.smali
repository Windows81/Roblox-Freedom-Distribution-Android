.class public Lcom/roblox/client/http/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/http/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/roblox/platform/http/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Lc/x;Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;
    .locals 10

    const-string v0, ", exception = "

    const-string v1, "rbx.httpagent"

    .line 127
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    .line 129
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 130
    aget-object v3, p3, v2

    .line 131
    iget-object v4, v3, Lcom/roblox/client/http/b$a;->a:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/roblox/client/http/b$a;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, v3, Lcom/roblox/client/http/b$a;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/roblox/client/http/b$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    new-instance p3, Lcom/roblox/client/http/j;

    invoke-direct {p3}, Lcom/roblox/client/http/j;-><init>()V

    if-nez p2, :cond_2

    .line 138
    sget-object v2, Lcom/roblox/client/http/j$a;->a:Lcom/roblox/client/http/j$a;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/roblox/client/http/j$a;->b:Lcom/roblox/client/http/j$a;

    :goto_1
    iput-object v2, p3, Lcom/roblox/client/http/j;->a:Lcom/roblox/client/http/j$a;

    .line 139
    iput-object p1, p3, Lcom/roblox/client/http/j;->b:Ljava/lang/String;

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 143
    :try_start_0
    new-instance v2, Lcom/roblox/platform/http/f;

    invoke-direct {v2}, Lcom/roblox/platform/http/f;-><init>()V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/roblox/platform/http/f;->a(Lc/x;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lc/ac;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Lc/ac;->b()I

    move-result p2

    iput p2, p3, Lcom/roblox/client/http/j;->c:I

    .line 146
    invoke-virtual {p0}, Lc/ac;->g()Lc/ad;

    move-result-object p0

    invoke-virtual {p0}, Lc/ad;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/roblox/client/http/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "null url in newCall()"

    .line 153
    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "IOException initial newCall(): url = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception p0

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SSLHandshakeException initial newCall(): url = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 149
    iput-boolean p0, p3, Lcom/roblox/client/http/j;->e:Z

    .line 155
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v8

    iput-wide p0, p3, Lcom/roblox/client/http/j;->d:J

    return-object p3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/http/j;
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, p1, p2, v0}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;
    .locals 0

    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/roblox/client/http/b;->c(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;II)Lcom/roblox/client/http/j;
    .locals 0

    .line 73
    invoke-static/range {p0 .. p5}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;II)Lcom/roblox/client/http/j;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 55
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/roblox/client/http/b;->a:Lcom/roblox/platform/http/h;

    if-nez v0, :cond_0

    .line 41
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 42
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 45
    invoke-static {}, Lcom/roblox/platform/http/h;->b()Lcom/roblox/platform/http/h;

    move-result-object p0

    sput-object p0, Lcom/roblox/client/http/b;->a:Lcom/roblox/platform/http/h;

    .line 46
    invoke-static {p0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;
    .locals 0

    .line 85
    invoke-static {p0, p1, p2, p3}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;II)Lcom/roblox/client/http/j;
    .locals 3

    .line 107
    invoke-static {}, Lcom/roblox/platform/i;->e()Lc/x;

    move-result-object v0

    if-gez p4, :cond_0

    if-ltz p5, :cond_3

    .line 109
    :cond_0
    invoke-virtual {v0}, Lc/x;->x()Lc/x$a;

    move-result-object v0

    if-ltz p4, :cond_1

    int-to-long v1, p4

    .line 111
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p4}, Lc/x$a;->a(JLjava/util/concurrent/TimeUnit;)Lc/x$a;

    :cond_1
    if-ltz p5, :cond_2

    int-to-long p4, p5

    .line 114
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p4, p5, v1}, Lc/x$a;->b(JLjava/util/concurrent/TimeUnit;)Lc/x$a;

    .line 116
    :cond_2
    invoke-virtual {v0}, Lc/x$a;->a()Lc/x;

    move-result-object v0

    .line 118
    :cond_3
    invoke-static {v0, p0, p1, p2, p3}, Lcom/roblox/client/http/b;->a(Lc/x;Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 1

    .line 59
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;
    .locals 1

    .line 92
    invoke-static {}, Lcom/roblox/platform/i;->e()Lc/x;

    move-result-object v0

    .line 93
    invoke-static {v0, p0, p1, p2, p3}, Lcom/roblox/client/http/b;->a(Lc/x;Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object p0

    return-object p0
.end method
