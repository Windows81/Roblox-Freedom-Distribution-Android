.class public Lcom/roblox/client/login/mvp/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/login/mvp/b$a;


# instance fields
.field private a:Lcom/roblox/client/login/mvp/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/d;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/roblox/client/login/mvp/e;->a:Lcom/roblox/client/login/mvp/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/roblox/client/login/mvp/e;->a:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/roblox/client/login/mvp/e;->a:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/login/mvp/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/login/mvp/f;)V
    .locals 7

    .line 23
    iget-object v0, p0, Lcom/roblox/client/login/mvp/e;->a:Lcom/roblox/client/login/mvp/d;

    new-instance v6, Lcom/roblox/client/login/mvp/e$1;

    invoke-direct {v6, p0, p6}, Lcom/roblox/client/login/mvp/e$1;-><init>(Lcom/roblox/client/login/mvp/e;Lcom/roblox/client/login/mvp/f;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/roblox/client/login/mvp/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/login/mvp/d$a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/roblox/client/login/mvp/e;->a:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/roblox/client/login/mvp/e;->a:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/roblox/client/login/mvp/e;->a:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/d;->d()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/roblox/client/login/mvp/e;->a:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/d;->e()V

    return-void
.end method
