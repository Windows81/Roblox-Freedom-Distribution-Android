.class public Lcom/roblox/platform/http/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/w;Lb/z$a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lb/ab;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/w;",
            "Lb/z$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lb/ab;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p2, p3}, Lb/z$a;->a(Ljava/lang/String;)Lb/z$a;

    .line 35
    if-eqz p5, :cond_1

    .line 36
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p2, v0, v1}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    goto :goto_0

    .line 44
    :cond_1
    if-eqz p4, :cond_3

    .line 45
    if-nez p6, :cond_2

    .line 46
    const-string p6, "application/x-www-form-urlencoded;charset=UTF-8"

    .line 48
    :cond_2
    invoke-static {p6}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object v0

    .line 49
    invoke-static {v0, p4}, Lb/aa;->a(Lb/u;Ljava/lang/String;)Lb/aa;

    move-result-object v0

    .line 50
    invoke-virtual {p2, v0}, Lb/z$a;->a(Lb/aa;)Lb/z$a;

    .line 53
    invoke-static {}, Lcom/roblox/platform/http/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    const-string v1, "X-CSRF-TOKEN"

    invoke-virtual {p2, v1, v0}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    :cond_3
    move-object v5, p6

    .line 58
    invoke-virtual {p2}, Lb/z$a;->a()Lb/z;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lb/w;->a(Lb/z;)Lb/e;

    move-result-object v0

    invoke-interface {v0}, Lb/e;->a()Lb/ab;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lb/ab;->b()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_4

    .line 66
    const-string v1, "X-CSRF-TOKEN"

    invoke-virtual {v0, v1}, Lb/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    if-nez p7, :cond_5

    if-eqz v1, :cond_5

    .line 68
    const-string v0, "rbx.platform"

    invoke-static {v0}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/platform/d$b;->a()Lcom/roblox/platform/d$b;

    move-result-object v0

    const-string v2, "XSRF: got token. retrying"

    invoke-virtual {v0, v2}, Lcom/roblox/platform/d$b;->b(Ljava/lang/String;)I

    .line 69
    invoke-static {v1}, Lcom/roblox/platform/http/b/c;->a(Ljava/lang/String;)V

    .line 70
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/roblox/platform/http/a;->a(Lb/w;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lb/ab;

    move-result-object v0

    .line 79
    :cond_4
    :goto_1
    return-object v0

    .line 72
    :cond_5
    if-eqz p7, :cond_6

    .line 73
    const-string v1, "rbx.platform"

    invoke-static {v1}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/platform/d$b;->a()Lcom/roblox/platform/d$b;

    move-result-object v1

    const-string v2, "XSRF Error: retry already attempted. Will not retry"

    invoke-virtual {v1, v2}, Lcom/roblox/platform/d$b;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 76
    :cond_6
    const-string v1, "rbx.platform"

    invoke-static {v1}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/platform/d$b;->a()Lcom/roblox/platform/d$b;

    move-result-object v1

    const-string v2, "XSRF Error: token not present in response. Will not retry"

    invoke-virtual {v1, v2}, Lcom/roblox/platform/d$b;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Lb/w;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lb/ab;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/w;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lb/ab;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/roblox/platform/http/a;->a(Lb/w;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lb/ab;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/w;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lb/ab;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/w;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lb/ab;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v2, Lb/z$a;

    invoke-direct {v2}, Lb/z$a;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/platform/http/a;->a(Lb/w;Lb/z$a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lb/ab;

    move-result-object v0

    return-object v0
.end method
