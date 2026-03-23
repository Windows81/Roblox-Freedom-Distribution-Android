.class public Lcom/roblox/client/ae/a/d;
.super Lcom/roblox/client/ae/a/a;
.source "SourceFile"


# instance fields
.field protected c:J

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 26
    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/ae/a/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IIZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/roblox/client/ae/a/a;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    const-wide/16 p1, 0x0

    .line 21
    iput-wide p1, p0, Lcom/roblox/client/ae/a/d;->c:J

    .line 32
    iput-boolean p6, p0, Lcom/roblox/client/ae/a/d;->d:Z

    .line 33
    iput-object p7, p0, Lcom/roblox/client/ae/a/d;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/RobloxWebActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL_EXTRA"

    .line 69
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "TITLE_EXTRA"

    .line 70
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/roblox/client/ae/a/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/ae/a/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "span"

    .line 54
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 56
    iget-wide v2, p0, Lcom/roblox/client/ae/a/d;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 59
    :cond_0
    iput-wide v0, p0, Lcom/roblox/client/ae/a/d;->c:J

    const/4 p1, 0x1

    return p1
.end method

.method protected d()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/roblox/client/ae/a/d;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/ae/a/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "clickableSpan"

    .line 38
    invoke-virtual {p0, p1}, Lcom/roblox/client/ae/a/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/roblox/client/ae/a/d;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    iget-boolean p1, p0, Lcom/roblox/client/ae/a/d;->d:Z

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/roblox/client/ae/a/d;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/roblox/client/ae/a/d;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/roblox/client/x;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/ae/a/d;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/roblox/client/ae/a/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/roblox/client/ae/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/roblox/client/ae/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
