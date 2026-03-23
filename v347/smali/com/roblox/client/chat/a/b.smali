.class public Lcom/roblox/client/chat/a/b;
.super Lcom/roblox/client/chat/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/chat/a/g",
        "<",
        "Lcom/roblox/client/chat/a/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/roblox/client/chat/a/g;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/roblox/client/chat/a/g;-><init>(Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 6
    check-cast p1, Lcom/roblox/client/chat/a/m;

    check-cast p2, Lcom/roblox/client/chat/a/m;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/chat/a/b;->b(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;)V

    return-void
.end method

.method public a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 21
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;)V
    .locals 0

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1, p2}, Lcom/roblox/client/chat/a/m;->a(Lcom/roblox/client/chat/a/m;)V

    .line 29
    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/roblox/client/chat/a/m;

    check-cast p2, Lcom/roblox/client/chat/a/m;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/chat/a/b;->a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;)Z

    move-result v0

    return v0
.end method
