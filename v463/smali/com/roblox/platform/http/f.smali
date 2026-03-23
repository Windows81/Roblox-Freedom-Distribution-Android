.class public Lcom/roblox/platform/http/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/x;Lc/aa$a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lc/ac;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/x;",
            "Lc/aa$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lc/ac;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p2, p3}, Lc/aa$a;->a(Ljava/lang/String;)Lc/aa$a;

    if-eqz p5, :cond_1

    .line 36
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {p2, v2, v5}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    goto :goto_0

    :cond_1
    const-string v1, "X-CSRF-TOKEN"

    if-eqz p4, :cond_4

    if-nez p6, :cond_2

    const-string v2, "application/x-www-form-urlencoded;charset=UTF-8"

    goto :goto_1

    :cond_2
    move-object v2, p6

    .line 48
    :goto_1
    invoke-static {v2}, Lc/v;->a(Ljava/lang/String;)Lc/v;

    move-result-object v5

    .line 49
    invoke-static {v5, p4}, Lc/ab;->a(Lc/v;Ljava/lang/String;)Lc/ab;

    move-result-object v5

    .line 50
    invoke-virtual {p2, v5}, Lc/aa$a;->a(Lc/ab;)Lc/aa$a;

    .line 53
    invoke-static {}, Lcom/roblox/platform/http/b/c;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 55
    invoke-virtual {p2, v1, v5}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    :cond_3
    move-object v5, v2

    goto :goto_2

    :cond_4
    move-object v5, p6

    .line 58
    :goto_2
    invoke-virtual {p2}, Lc/aa$a;->a()Lc/aa;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lc/x;->a(Lc/aa;)Lc/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e;->b()Lc/ac;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lc/ac;->b()I

    move-result v6

    const/16 v7, 0x193

    if-ne v6, v7, :cond_7

    .line 66
    invoke-virtual {v0, v1}, Lc/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "rbx.platform"

    if-nez p7, :cond_5

    if-eqz v1, :cond_5

    .line 68
    invoke-static {v6}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/platform/e$b;->a()Lcom/roblox/platform/e$b;

    move-result-object v0

    const-string v6, "XSRF: got token. retrying"

    invoke-virtual {v0, v6}, Lcom/roblox/platform/e$b;->b(Ljava/lang/String;)I

    .line 69
    invoke-static {v1}, Lcom/roblox/platform/http/b/c;->a(Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 70
    invoke-virtual/range {v0 .. v6}, Lcom/roblox/platform/http/f;->a(Lc/x;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lc/ac;

    move-result-object v0

    return-object v0

    :cond_5
    if-eqz p7, :cond_6

    .line 73
    invoke-static {v6}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/platform/e$b;->a()Lcom/roblox/platform/e$b;

    move-result-object v1

    const-string v2, "XSRF Error: retry already attempted. Will not retry"

    invoke-virtual {v1, v2}, Lcom/roblox/platform/e$b;->e(Ljava/lang/String;)I

    goto :goto_3

    .line 76
    :cond_6
    invoke-static {v6}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/platform/e$b;->a()Lcom/roblox/platform/e$b;

    move-result-object v1

    const-string v2, "XSRF Error: token not present in response. Will not retry"

    invoke-virtual {v1, v2}, Lcom/roblox/platform/e$b;->e(Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-object v0
.end method

.method public a(Lc/x;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lc/ac;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/x;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lc/ac;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/roblox/platform/http/f;->a(Lc/x;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lc/ac;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/x;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lc/ac;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/x;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lc/ac;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    new-instance v2, Lc/aa$a;

    invoke-direct {v2}, Lc/aa$a;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/platform/http/f;->a(Lc/x;Lc/aa$a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lc/ac;

    move-result-object p1

    return-object p1
.end method
