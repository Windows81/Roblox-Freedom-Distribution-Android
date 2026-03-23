.class public Lcom/roblox/platform/http/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/platform/http/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Le/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Le/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Le/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/roblox/platform/http/a/b;->a:Ljava/util/concurrent/Executor;

    .line 28
    iput-object p2, p0, Lcom/roblox/platform/http/a/b;->b:Le/b;

    return-void
.end method


# virtual methods
.method public a()Le/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/l<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/roblox/platform/http/a/b;->b:Le/b;

    invoke-interface {v0}, Le/b;->a()Le/l;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Le/l;->a()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Le/l;->c()Lc/s;

    move-result-object v1

    const-string v2, "X-CSRF-TOKEN"

    invoke-virtual {v1, v2}, Lc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/roblox/platform/http/a/b;->b:Le/b;

    invoke-interface {v0}, Le/b;->c()Le/b;

    move-result-object v0

    invoke-interface {v0}, Le/b;->a()Le/l;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Le/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/d<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/roblox/platform/http/a/b;->b:Le/b;

    new-instance v1, Lcom/roblox/platform/http/a/b$a;

    invoke-direct {v1, p0, p1}, Lcom/roblox/platform/http/a/b$a;-><init>(Lcom/roblox/platform/http/a/b;Le/d;)V

    invoke-interface {v0, v1}, Le/b;->a(Le/d;)V

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/roblox/platform/http/a/b;->b:Le/b;

    invoke-interface {v0}, Le/b;->b()Z

    move-result v0

    return v0
.end method

.method public c()Le/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b<",
            "TT;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/roblox/platform/http/a/b;

    iget-object v1, p0, Lcom/roblox/platform/http/a/b;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/roblox/platform/http/a/b;->b:Le/b;

    invoke-interface {v2}, Le/b;->c()Le/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/roblox/platform/http/a/b;-><init>(Ljava/util/concurrent/Executor;Le/b;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/roblox/platform/http/a/b;->c()Le/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lc/aa;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/roblox/platform/http/a/b;->b:Le/b;

    invoke-interface {v0}, Le/b;->d()Lc/aa;

    move-result-object v0

    return-object v0
.end method
