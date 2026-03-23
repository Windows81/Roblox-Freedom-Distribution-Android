.class public Lcom/roblox/client/pushnotification/v2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/roblox/client/pushnotification/q;
    .locals 1

    .line 21
    new-instance v0, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/q;-><init>()V

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-static {p1}, Lcom/roblox/client/ae/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-virtual {p3, p1, p2}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/s/c$b;->b:Lcom/roblox/client/s/c$b;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/s/c;->a(Landroid/content/Context;Lcom/roblox/client/s/c$b;)V

    .line 38
    invoke-static {p1}, Lcom/roblox/client/http/b;->a(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/v2/b;->a()Lcom/roblox/client/pushnotification/q;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/roblox/client/pushnotification/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/roblox/client/pushnotification/v2/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/v2/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/roblox/client/pushnotification/v2/d;

    invoke-direct {v2}, Lcom/roblox/client/pushnotification/v2/d;-><init>()V

    .line 47
    invoke-virtual {v2, p2}, Lcom/roblox/client/pushnotification/v2/d;->a(Ljava/util/Map;)Lcom/roblox/client/pushnotification/v2/a/b;

    move-result-object p2

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/roblox/client/pushnotification/v2/a/b;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-interface {p2}, Lcom/roblox/client/pushnotification/v2/a/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/roblox/client/pushnotification/v2/a/b;->h()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {v2, v0, v3, v4, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/roblox/client/pushnotification/v2/e;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/v2/e;-><init>()V

    .line 55
    invoke-virtual {v0, p2}, Lcom/roblox/client/pushnotification/v2/e;->a(Lcom/roblox/client/pushnotification/v2/a/b;)Lcom/roblox/client/pushnotification/v2/c;

    move-result-object v0

    .line 56
    invoke-interface {v0, p1, p2}, Lcom/roblox/client/pushnotification/v2/c;->a(Landroid/content/Context;Lcom/roblox/client/pushnotification/v2/a/b;)V

    :cond_1
    :goto_0
    return-void
.end method
