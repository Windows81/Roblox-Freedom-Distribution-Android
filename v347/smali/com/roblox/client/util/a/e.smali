.class public Lcom/roblox/client/util/a/e;
.super Lcom/roblox/client/util/a/a;
.source "SourceFile"


# instance fields
.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8

    .prologue
    .line 20
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/util/a/e;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IIZLjava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/roblox/client/util/a/a;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    .line 26
    iput-boolean p6, p0, Lcom/roblox/client/util/a/e;->c:Z

    .line 27
    iput-object p7, p0, Lcom/roblox/client/util/a/e;->d:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/RobloxWebActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    const-string v1, "URL_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "TITLE_EXTRA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/roblox/client/util/a/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/util/a/e;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/util/a/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/roblox/client/util/a/e;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/util/a/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 33
    iget-boolean v0, p0, Lcom/roblox/client/util/a/e;->c:Z

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/roblox/client/util/a/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/roblox/client/util/a/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/util/a/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/roblox/client/util/a/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/roblox/client/util/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/util/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
