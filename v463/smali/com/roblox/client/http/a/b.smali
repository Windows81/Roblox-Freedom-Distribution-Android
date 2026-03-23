.class public Lcom/roblox/client/http/a/b;
.super Lcom/roblox/client/http/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/http/a/a<",
        "Lcom/roblox/client/http/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x3e8

    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    .line 22
    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/http/a/a;-><init>(IIF)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)Z
    .locals 2

    .line 31
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result p1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    check-cast p1, Lcom/roblox/client/http/j;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/a/b;->a(Lcom/roblox/client/http/j;)Z

    move-result p1

    return p1
.end method
