.class public Lcom/roblox/client/provider/a/d;
.super Lcom/roblox/client/provider/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/roblox/client/provider/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 0

    .line 24
    new-instance p1, Lcom/roblox/client/provider/a;

    invoke-direct {p1}, Lcom/roblox/client/provider/a;-><init>()V

    return-object p1
.end method

.method public a(Lcom/roblox/client/provider/a/e$a;)Lcom/roblox/client/f/a;
    .locals 1

    .line 15
    sget-object v0, Lcom/roblox/client/provider/a/e$a;->a:Lcom/roblox/client/provider/a/e$a;

    if-ne p1, v0, :cond_0

    .line 16
    sget-object p1, Lcom/roblox/client/f/a;->a:Lcom/roblox/client/f/a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
