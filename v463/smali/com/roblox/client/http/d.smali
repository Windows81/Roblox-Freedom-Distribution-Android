.class public Lcom/roblox/client/http/d;
.super Lcom/roblox/client/http/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/l;[Lcom/roblox/client/http/b$a;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p4, p5}, Lcom/roblox/client/http/a;-><init>(Ljava/lang/String;Lcom/roblox/client/http/l;[Lcom/roblox/client/http/b$a;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 30
    :goto_0
    iput-object p2, p0, Lcom/roblox/client/http/d;->e:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/roblox/client/http/d;->f:Ljava/lang/String;

    return-void
.end method
