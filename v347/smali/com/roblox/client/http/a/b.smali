.class public Lcom/roblox/client/http/a/b;
.super Lcom/roblox/client/http/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/http/a/a",
        "<",
        "Lcom/roblox/client/http/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    const/16 v0, 0x3e8

    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/http/a/a;-><init>(IIF)V

    .line 23
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/http/a/a;-><init>(IIF)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)Z
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/roblox/client/http/j;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/a/b;->a(Lcom/roblox/client/http/j;)Z

    move-result v0

    return v0
.end method
