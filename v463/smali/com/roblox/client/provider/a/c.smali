.class public Lcom/roblox/client/provider/a/c;
.super Lcom/roblox/client/provider/a/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/roblox/client/provider/a/a;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/roblox/client/provider/a/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 1

    .line 32
    iget-object p1, p0, Lcom/roblox/client/provider/a/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/roblox/client/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance v0, Lcom/roblox/client/provider/a/c$1;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/provider/a/c$1;-><init>(Lcom/roblox/client/provider/a/c;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/roblox/client/provider/a/e$a;)Lcom/roblox/client/f/a;
    .locals 1

    .line 22
    sget-object v0, Lcom/roblox/client/provider/a/e$a;->a:Lcom/roblox/client/provider/a/e$a;

    if-ne p1, v0, :cond_0

    .line 23
    sget-object p1, Lcom/roblox/client/f/a;->e:Lcom/roblox/client/f/a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
