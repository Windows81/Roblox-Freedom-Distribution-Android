.class public Lcom/roblox/client/provider/a/f;
.super Lcom/roblox/client/provider/a/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/roblox/client/provider/a/a;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/roblox/client/provider/a/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "user_agent_param"

    .line 32
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/roblox/client/provider/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/roblox/client/u;->b(Landroid/content/Context;)V

    if-nez p1, :cond_0

    const-string p1, "google"

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/provider/a/f;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/roblox/client/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance v0, Lcom/roblox/client/provider/a/f$1;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/provider/a/f$1;-><init>(Lcom/roblox/client/provider/a/f;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/roblox/client/provider/a/e$a;)Lcom/roblox/client/f/a;
    .locals 1

    .line 23
    sget-object v0, Lcom/roblox/client/provider/a/e$a;->a:Lcom/roblox/client/provider/a/e$a;

    if-ne p1, v0, :cond_0

    .line 24
    sget-object p1, Lcom/roblox/client/f/a;->d:Lcom/roblox/client/f/a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
