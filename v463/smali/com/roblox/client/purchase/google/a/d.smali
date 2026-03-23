.class public Lcom/roblox/client/purchase/google/a/d;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field a:Lcom/roblox/client/purchase/google/a/f;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    invoke-direct {v0, p1, p2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/d;-><init>(Lcom/roblox/client/purchase/google/a/f;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    invoke-direct {v0, p1, p2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/roblox/client/purchase/google/a/d;-><init>(Lcom/roblox/client/purchase/google/a/f;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/roblox/client/purchase/google/a/f;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/purchase/google/a/d;-><init>(Lcom/roblox/client/purchase/google/a/f;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/roblox/client/purchase/google/a/f;Ljava/lang/Exception;)V
    .locals 1

    .line 38
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    iput-object p1, p0, Lcom/roblox/client/purchase/google/a/d;->a:Lcom/roblox/client/purchase/google/a/f;

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/client/purchase/google/a/f;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/d;->a:Lcom/roblox/client/purchase/google/a/f;

    return-object v0
.end method
